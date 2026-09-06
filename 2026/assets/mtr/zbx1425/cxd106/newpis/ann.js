
var dvaConfig;

function setupDva(state) {
  dvaConfig = loadDvaConfig(CXPIS3_CONFIG_PATH);
  state.dvaCurrentAudio = new StateTracker();
}

function loadDvaConfig(basePath) {
  let config = JSON.parse(Resources.readString(Resources.identifier(basePath + "/dva_config.json")));
  config["audioBase"] = basePath.split(":")[1].replace(/\//g, ".");
  return config;
}

function getVehicleStateLeg(train) {
  let stations = train.getThisRoutePlatforms();
  let nextIndex = train.getThisRoutePlatformsNextIndex();
  let nextStop = nextIndex < stations.size() ? stations.get(nextIndex) : null;
  if (nextStop == null) return null;

  if (!nextStop.route || !nextStop.station) return null;
  let routeCode = TextUtil.getExtraParts(nextStop.route.name);

  let stationCode = null;
  for (let it = nextStop.station.exits.entrySet().iterator(); it.hasNext(); ) {
    let entry = it.next();
    if (entry.getKey() == "Z99") {
      for (let index in entry.getValue()) {
        stationCode = entry.getValue().get(index);
        break;
      }
      break;
    }
  }
  if (!stationCode) return null;
  return [ routeCode, stationCode ];
}

function playAnn(ctx, state, train) {
  if (!dvaConfig) return;

  let leg = getVehicleStateLeg(train);

  if (state.interruptPhase.stateNow() != "") {
    state.dvaCurrentAudio.setState(null);
  } else if (leg) {
    if (!dvaConfig[leg[0]] || !dvaConfig[leg[0]][leg[1]]) {
      state.dvaCurrentAudio.setState(null);
    } else {
      let legConfig = dvaConfig[leg[0]][leg[1]];
      let audioType = { "rte": "s", "appr": "a", "arr": "r" }[state.posPhase.stateNow()];
      if (!audioType || !legConfig[audioType]) {
        state.dvaCurrentAudio.setState(null);
      } else {
        state.dvaCurrentAudio.setState(legConfig[audioType]);
      }
    }
  } else {
    state.dvaCurrentAudio.setState(null);
  }

  if (state.dvaCurrentAudio.stateNowFirst()) {
    if (state.dvaCurrentAudio.stateNow() != null) {
      ctx.playAnnSound(Resources.identifier("mtr:cxpis3." + dvaConfig.audioBase + "." + state.dvaCurrentAudio.stateNow()), 1, 1);
    }
  }
}
