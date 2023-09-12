function setupSounds(ctx, state) {
  state.playingAnn = new StateTracker();
  state.playingAnn.setState("");
}

function playAnn(ctx, state, train) {
  var stations = train.getThisRoutePlatforms();
  if (stations.size() <= 1) return;
  var nextIndex = train.getThisRoutePlatformsNextIndex();
  if (nextIndex <= 0 || nextIndex >= stations.size()) return;

  var stationConfig = getStationConfig(stations, nextIndex);
  if (stationConfig.annSound === undefined || stationConfig.annSound === "") {
    state.playingAnn.setState("");
  } else {
    var distLastStation = train.railProgress() - stations.get(nextIndex - 1).distance;
    var distNextStation = stations.get(nextIndex).distance - train.railProgress();
    var soundToPlay;
    if (distNextStation < stationConfig.arriveDistance) {
      soundToPlay = stationConfig.annSound + "_arr";
    } else if (distLastStation > 15) {
      soundToPlay = stationConfig.annSound + "_next";
    } else {
      soundToPlay = "";
    }

    state.playingAnn.setState(soundToPlay);
    if (state.playingAnn.stateNowFirst()) {
      ctx.playAnnSound(Resources.identifier(state.playingAnn.stateNow()), 1, 1);
    }
  }
}
