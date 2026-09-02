importPackage(java.awt);
importPackage(java.awt.geom);

var TPMRT_BLINK_PERIOD = 0.75;
var TPMRT_SLIDE_DURATION = 0.5;

var tpmrtImg = {
  arrowL: Resources.readBufferedImage(TPMRTLED_ARROWS.l),
  arrowR: Resources.readBufferedImage(TPMRTLED_ARROWS.r),
  staNameReg: Resources.readBufferedImage(TPMRTLED_STA_NAMES_CN.regular),
  staNameSmall: Resources.readBufferedImage(TPMRTLED_STA_NAMES_CN.small),
  staNameInv: Resources.readBufferedImage(TPMRTLED_STA_NAMES_CN.inverse),
  destnCn: Resources.readBufferedImage(TPMRTLED_DESTNS.cn),
  destnEn: Resources.readBufferedImage(TPMRTLED_DESTNS.en),
  clockDigits: Resources.readBufferedImage(TPMRTLED_CLOCK.image),
  doorSide: Resources.readBufferedImage(TPMRTLED_DOOR_SIDE),
  brand: Resources.readBufferedImage(TPMRTLED_BRAND),
  trainHold: Resources.readBufferedImage(TPMRTLED_TRAIN_HOLD)
};

var tpmrtStaNameYOffs = {};
for (var i = 0; i < TPMRTLED_STA_NAMES_CN.codes.length; i++) {
  tpmrtStaNameYOffs[TPMRTLED_STA_NAMES_CN.codes[i]] = i * 64;
}

var tpmrtDestnYOffs = {};
for (var i = 0; i < TPMRTLED_DESTNS.codes.length; i++) {
  tpmrtDestnYOffs[TPMRTLED_DESTNS.codes[i]] = i * 64;
}

function tpmrtComputeDoorOpen(doorCfg, isReversed) {
  var doorDirection;
  if (doorCfg == "both") {
    doorDirection = 2;
  } else if (doorCfg == "left") {
    doorDirection = isReversed ? 1 : -1;
  } else if (doorCfg == "right") {
    doorDirection = isReversed ? -1 : 1;
  } else {
    doorDirection = 0;
  }
  return [
    doorDirection == 2 || doorDirection == -1,
    doorDirection == 2 || doorDirection == 1
  ];
}

function tpmrtGetStaCode(station) {
  if (!station || !station.station) return null;
  for (var it = station.station.exits.entrySet().iterator(); it.hasNext(); ) {
    var entry = it.next();
    if (entry.getKey() == "Z99") {
      for (var index in entry.getValue()) {
        return entry.getValue().get(index);
      }
    }
  }
  return null;
}

function tpmrtGetDestnCode(stations, nextIndex) {
  var routeCode = null;
  var nextStop = nextIndex < stations.size() ? stations.get(nextIndex) : null;
  if (nextStop != null && nextStop.route) {
    routeCode = TextUtil.getExtraParts(nextStop.route.name);
  }
  var routeKey = routeCode != null ? (":" + routeCode) : null;
  if (routeKey != null && tpmrtDestnYOffs[routeKey] !== undefined) {
    return routeKey;
  }
  if (stations.size() > 0) {
    var lastStop = stations.get(stations.size() - 1);
    var destnCode = tpmrtGetStaCode(lastStop);
    if (destnCode != null && tpmrtDestnYOffs[destnCode] !== undefined) {
      return destnCode;
    }
  }
  return "";
}

function tpmrtGetStaByIndex(stations, idx, isLoopLine) {
  if (idx >= 0 && idx < stations.size()) return stations.get(idx);
  if (!isLoopLine || stations.size() <= 1) return null;
  var len = stations.size() - 1;
  var wrapped = ((idx % len) + len) % len;
  return stations.get(wrapped);
}

function setupPisTexture(state, pisTexture) {
  state.pageCycle = new CycleTracker(["cjk", 4, "eng", 4]);
  state.posPhase = new StateTracker();
  state.interruptPhase = new StateTracker();
  setupDva(state);

  state.tpmrtBlinkCycle = new CycleTracker(["on", TPMRT_BLINK_PERIOD, "off", TPMRT_BLINK_PERIOD]);
  state.tpmrtLangCycle = new CycleTracker(["cn", TPMRT_BLINK_PERIOD * 6, "en", TPMRT_BLINK_PERIOD * 6]);
}

function updatePisTexture(ctx, texture, state, train) {
  var stations = train.getThisRoutePlatforms();
  var nextIndex = train.getThisRoutePlatformsNextIndex();

  var staCfg = getStationConfig(stations, nextIndex);
  var doorDirection;
  if (staCfg.door == "both") {
    doorDirection = 2;
  } else if (staCfg.door == "left") {
    doorDirection = train.isReversed() ? 1 : -1;
  } else if (staCfg.door == "right") {
    doorDirection = train.isReversed() ? -1 : 1;
  } else {
    doorDirection = 0;
  }
  var leftDoorOpen = doorDirection == 2 || doorDirection == -1;
  var rightDoorOpen = doorDirection == 2 || doorDirection == 1;
  state.staCfg = staCfg;
  state.doorOpen = [ leftDoorOpen, rightDoorOpen ];

  var isLoopLine = (stations.size() > 0) && stations.get(0).station.id == stations.get(stations.size() - 1).station.id;
  var term = nextIndex == stations.size() - 1 && !isLoopLine;
  var arriveDistance = term ? staCfg["arriveDistanceTerm"] : staCfg["arriveDistance"];
  var approachDistance = staCfg["approachDistance"];

  var prevStaCfg = nextIndex > 0 ? getStationConfig(stations, nextIndex - 1) : {};
  var departDistance = !!prevStaCfg["specDep"] ? prevStaCfg["departDistanceSpecDep"] : prevStaCfg["departDistance"];

  if (nextIndex < stations.size()) {
    var interrupt = "";
    var nextStation = stations.get(nextIndex);
    var distToNext = nextStation.distance - train.railProgress();
    if (distToNext < arriveDistance) {
      if (train.doorValue() > 0) {
        state.posPhase.setState("do");
        if (train.doorValue() == 1) {
          state.doorFullyOpened = true;
        } else if (state.doorFullyOpened && train.doorValue() < 1) {
          interrupt = "dc";
        }
      } else {
        state.doorFullyOpened = false;
        if (state.posPhase.stateNow() == "do") {
          state.posPhase.setState("dpt");
        } else if (state.posPhase.stateNow() == "rte" || state.posPhase.stateNow() == "appr" || state.posPhase.stateNow() == null) {
          state.posPhase.setState("arr");
        } else {
          state.posPhase.setState(state.posPhase.stateNow());
          if (state.posPhase.stateNow() == "arr") {
            if (distToNext > 20) {
              if (!train.isCurrentlyManual() && train.speed() < 10 / 3.6 / 20) {
                interrupt = "hold";
              }
            }
          }
        }
      }
    } else if (distToNext < approachDistance) {
      if (state.posPhase.stateNow() == "do") {
        state.posPhase.setState("dpt");
      } else if (state.posPhase.stateNow() == "rte" || state.posPhase.stateNow() == null) {
        state.posPhase.setState("appr");
      } else {
        state.posPhase.setState(state.posPhase.stateNow());
      }
    } else {
      if (nextIndex > 0 && (train.railProgress() - stations.get(nextIndex - 1).distance) < departDistance) {
        state.posPhase.setState("dpt");
      } else {
        state.posPhase.setState("rte");
        if (!train.isCurrentlyManual() && train.speed() < 10 / 3.6 / 20) {
          interrupt = "hold";
        }
      }
    }
    state.interruptPhase.setState(interrupt);
  } else {
    state.posPhase.setState("over");
  }

  state.pageCycle.tick();
  state.tpmrtBlinkCycle.tick();
  state.tpmrtLangCycle.tick();

  var phase = state.posPhase.stateNow();
  var curStaIdx, nextStaIdx, nextNextStaIdx;
  if (phase == "do") {
    curStaIdx = nextIndex;
    nextStaIdx = nextIndex + 1;
    nextNextStaIdx = nextIndex + 2;
  } else {
    curStaIdx = nextIndex - 1;
    nextStaIdx = nextIndex;
    nextNextStaIdx = nextIndex + 1;
  }

  var curSta = tpmrtGetStaByIndex(stations, curStaIdx, isLoopLine);
  var nextSta = tpmrtGetStaByIndex(stations, nextStaIdx, isLoopLine);
  var nextNextSta = tpmrtGetStaByIndex(stations, nextNextStaIdx, isLoopLine);

  var curStaCode = tpmrtGetStaCode(curSta);
  var nextStaCode = tpmrtGetStaCode(nextSta);
  var nextNextStaCode = tpmrtGetStaCode(nextNextSta);
  var destnCode = tpmrtGetDestnCode(stations, nextIndex);

  var tpmrtDoorOpen;
  // Change: in "dpt", screen displays nothing
  // if (phase == "dpt" && nextIndex > 0) {
  //   var prevDoorCfg = getStationConfig(stations, nextIndex - 1);
  //   tpmrtDoorOpen = tpmrtComputeDoorOpen(prevDoorCfg.door, train.isReversed());
  // } else {
    tpmrtDoorOpen = state.doorOpen;
  // }

  state.tpmrt = {
    stations: stations,
    nextIndex: nextIndex,
    isLoopLine: isLoopLine,
    curSta: curSta,
    nextSta: nextSta,
    nextNextSta: nextNextSta,
    curStaCode: curStaCode,
    nextStaCode: nextStaCode,
    nextNextStaCode: nextNextStaCode,
    destnCode: destnCode,
    doorOpen: tpmrtDoorOpen
  };

  var g = state.dh.graphicsFor("lcd_door_left");
  paintTpmrtScreen(g, state, train, -1);
  g = state.dh.graphicsFor("lcd_door_right");
  paintTpmrtScreen(g, state, train, 1);
  state.dh.upload();

  playAnn(ctx, state, train);
}
