importPackage(java.awt);
importPackage(java.awt.geom);

serifFont = Resources.getSystemFont("SimSun");

include("pis_config_parser.js");
include("lcd_paint.js");

include("sound.js");

function setupPisTexture(state, pisTexture) {
  state.orNextCycle = new CycleTracker([
    "nextcn", 3, "nexten", 3, "nearrte", 7, "nexten", 3,
    "message", 5]);
  state.orDestCycle = new CycleTracker(["destcn", 3, "desten", 3]);
  state.arriveStateTracker = new StateTracker();
  state.atPlatform = false;
  setupSounds(state);
  let g = pisTexture.graphics;
  g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);
}

function updatePisTexture(ctx, texture, state, train) {
  let g = texture.graphics;
  let transform = g.getTransform();

  g.setComposite(AlphaComposite.Clear);
  g.fillRect(0, 0, 400, 32);
  g.setComposite(AlphaComposite.SrcOver);

  
  var stations = train.getThisRoutePlatforms();
  if (stations.size() <= 1) return;
  var nextIndex = train.getThisRoutePlatformsNextIndex();
  // var stations = train.getDebugThisRoutePlatforms(10);
  // var nextIndex = 0;

  let staCfg = getStationConfig(stations, nextIndex);
  let doorDirection;
  if (staCfg.door == "both") {
    doorDirection = 2;
  } else if (staCfg.door == "left") {
    doorDirection = train.isReversed() ? 1 : -1;
  } else if (staCfg.door == "right") {
    doorDirection = train.isReversed() ? -1 : 1;
  } else {
    doorDirection = 0;
  }
  state.staCfg = staCfg;

  let extDispAllChange = false;
  let thisRouteCfg = staCfg;

  let isLoopLine = stations.get(0).station.id == stations.get(stations.size() - 1).station.id;
  let term = nextIndex == stations.size() - 1 && !isLoopLine;
  let arriveDistance = term ? staCfg["arriveDistanceTerm"] : staCfg["arriveDistance"];

  let prevStaCfg = nextIndex > 0 ? getStationConfig(stations, nextIndex - 1) : {};
  let departDistance = !!prevStaCfg["specDep"] ? prevStaCfg["departDistanceSpecDep"] : prevStaCfg["departDistance"];

  if (nextIndex < stations.size()) {
    let nextStation = stations.get(nextIndex);
    if ((nextStation.distance - train.railProgress()) < arriveDistance) {
      if (state.doorFullyOpened && train.doorValue() < 1 && train.doorValue() > 0) {
        state.arriveStateTracker.setState("dc");
      } else if (train.doorValue() > 0) {
        state.arriveStateTracker.setState("do");
        if (train.doorValue() == 1) state.doorFullyOpened = true;
      } else {
        state.doorFullyOpened = false;
        if (state.arriveStateTracker.stateNow() == "none") {
          state.arriveStateTracker.setState("appr");
        }
      }

      if (!!staCfg["nextRoute"]) thisRouteCfg = staCfg["nextRoute"];

      let leftDoorOpen = doorDirection == 2 || doorDirection == -1;
      let rightDoorOpen = doorDirection == 2 || doorDirection == 1;
      let doorOpenText, doorNotOpenText;
      doorOpenText = Timing.elapsed() % 1.4 < 1.2 ? TextUtil.getCjkParts(staCfg.staName) + "   " + TextUtil.getNonCjkParts(staCfg.staName).toUpperCase() : "";
      if (state.arriveStateTracker.stateNow() == "dc") {
        doorOpenText = Timing.elapsed() % 0.3 < 0.2 ? "请勿靠近车门  Stand Clear of the Doors" : "";
        doorNotOpenText = doorOpenText;
      } else if (state.arriveStateTracker.stateNow() == "do") {
        if (state.arriveStateTracker.stateNowDuration() < 4) {
          doorNotOpenText = Timing.elapsed() % 0.3 < 0.2 ? "欢迎乘坐蓝星捷运      Welcome Aboard" : "";
        } else {
          doorNotOpenText = thisRouteCfg.routeCode.toUpperCase() + " 交路  开往: " + TextUtil.getCjkParts(thisRouteCfg.destName)
            + "   Rte " + thisRouteCfg.routeCode.toUpperCase() + "  For: " + TextUtil.getNonCjkParts(thisRouteCfg.destName).toUpperCase();
        }
        if (staCfg.allChange) {
          doorOpenText = Timing.elapsed() % 0.3 < 0.2 ? "请全部乘客下车  ALL CHANGE PLEASE" : "";
          doorNotOpenText = Timing.elapsed() % 0.3 < 0.2 ? "本车不载客  DO NOT BOARD" : "";
        }
      } else {
        if (staCfg.allChange) {
          state.orDestCycle.tick();
          if (state.orDestCycle.stateNow() == "destcn") {
            doorOpenText = Timing.elapsed() % 0.3 < 0.2 ? "请全部乘客下车  ALL CHANGE PLEASE" : "";
          }
        }
        doorNotOpenText = "对侧开门   Exit on OTHER side";
      }
      if (staCfg.allChange) {
        extDispAllChange = true;
      }

      g.setClip(20, 0, 320, 16);
      paint_lcd(g, rightDoorOpen ? doorOpenText : doorNotOpenText, 20, 0, 320, Timing.elapsed());
      g.setClip(20, 16, 320, 16);
      paint_lcd(g, leftDoorOpen ? doorOpenText : doorNotOpenText, 20, 16, 320, Timing.elapsed());
    } else {
      // ON ROUTE
      state.arriveStateTracker.setState("none");
      let onRouteTextType, onRouteText, onRouteTypeNowDuration;
      if (nextIndex > 0 && (train.railProgress() - stations.get(nextIndex - 1).distance) < departDistance) {
        state.orDestCycle.tick();
        onRouteTextType = state.orDestCycle.stateNow();
        onRouteTypeNowDuration = state.orDestCycle.stateNowDuration();
      } else {
        state.orNextCycle.tick();
        onRouteTextType = state.orNextCycle.stateNow();
        if (state.orNextCycle.stateNowFirst()) {
          state.advertisement = advertisements[Math.floor(Math.random() * advertisements.length)];
        }
        onRouteTypeNowDuration = state.orNextCycle.stateNowDuration();
      }
      if (onRouteTextType == "nextcn") {
        onRouteText = "下站: " + TextUtil.getCjkParts(staCfg.staName);
      } else if (onRouteTextType == "nexten") {
        onRouteText = "Next Sta: " + TextUtil.getNonCjkParts(staCfg.staName).toUpperCase();
      } else if (onRouteTextType == "destcn") {
        onRouteText = staCfg.routeCode.toUpperCase() + " 交路  开往: " + TextUtil.getCjkParts(staCfg.destName);
      } else if (onRouteTextType == "desten") {
        onRouteText = "Rte " + staCfg.routeCode.toUpperCase() + "  For: " + TextUtil.getNonCjkParts(staCfg.destName).toUpperCase();
      } else if (onRouteTextType == "nearrte") {
        let stationNames = [];
        if (nextIndex > 0) {
          stationNames.push(TextUtil.getCjkParts(prevStaCfg.staName) + " -");
        }
        if (Timing.elapsed() % 0.3 < 0.2) {
          stationNames.push("【" + TextUtil.getCjkParts(staCfg.staName) + "】");
        } else {
          stationNames.push("（" + TextUtil.getCjkParts(staCfg.staName) + "）");
        }
        if (nextIndex < stations.size() - 1) {
          stationNames.push(" " + TextUtil.getCjkParts(getStationConfig(stations, nextIndex + 1).staName) + " ");
        }
        if (nextIndex < stations.size() - 2) {
          if (nextIndex < stations.size() - 3) stationNames.push("...");
          stationNames.push(" " + TextUtil.getCjkParts(getStationConfig(stations, stations.size() - 1).staName));
        }
        onRouteText = stationNames.join(">");
      } else {
        onRouteText = state.advertisement;
      }
    
      if (onRouteTypeNowDuration > 0.08) {
        g.setClip(20, 0, 320, 16);
        paint_lcd(g, onRouteText, 20, 0, 320, onRouteTypeNowDuration);
        g.setClip(20, 16, 320, 16);
        paint_lcd(g, onRouteText, 20, 16, 320, onRouteTypeNowDuration);
      }
    }
  } else {
    extDispAllChange = true;
  }

  g.setClip(0, 32, 160, 16);
  g.setColor(Color.BLACK);
  g.fillRect(0, 32, 160, 16);
  let extText = thisRouteCfg.routeCode.toUpperCase() + "  " + TextUtil.getCjkParts(thisRouteCfg.destName);

  if (extDispAllChange) {
    extText = "不载客 DO NOT BOARD";
  }
  paint_lcd(g, extText, 0, 32, 160, Timing.elapsed());

  g.setClip(null);

  g.setTransform(transform);
  texture.upload();

  playAnn(ctx, state, train, "ssl", departDistance, arriveDistance);
}

var advertisements = [
  "交通运输服务监督电话: 0800-092-000",
  "为了保持我们的环境卫生，车站入闸后及车厢内禁止饮食，谢谢合作。",
  "刚上车的乘客请往车厢中部走，不要在车门附近聚集。",
  "门灯闪烁时，请勿上下车。",
  "下车时，请当心列车与站台之间的空隙，注意脚下安全。",
  "需要转线的乘客，请注意换乘列车的首末班时间，以免耽误您的行程。",
  "行车过程中，请您坐稳扶好，不要倚靠车门或贯通道侧护板。",
  "请主动给需要帮助的乘客让座。",
  "车站一切区域及列车全列禁止吸烟。",
  "车站及车厢内禁止乞讨、摆摊、卖艺、销售、寻求捐赠等违规行为。",
  "安全出口位于列车两端，灭火器位于座位下或车厢连接处。",
  "为了营造良好的乘车环境，车厢内禁止饮食、喧哗或外放音视频媒体。",
];
