function setupSounds(state) {
  state.playingAnn = new StateTracker();
  state.playingAnn.setState("");
}

function playAnn(ctx, state, train, routeName, departDistance, arriveDistance) {
  let stations = train.getThisRoutePlatforms();
  if (stations.size() <= 1) return;
  let nextIndex = train.getThisRoutePlatformsNextIndex();
  if (nextIndex <= 0 || nextIndex >= stations.size()) return;

  let staCfg = getstaCfg(stations, nextIndex);
  let prevstaCfg = nextIndex > 0 ? getstaCfg(stations, nextIndex - 1) : {};

  if (staCfg.code === undefined || staCfg.code === "") {
    state.playingAnn.setState("");
  } else {
    let distLastStation = train.railProgress() - stations.get(nextIndex - 1).distance;
    let distNextStation = stations.get(nextIndex).distance - train.railProgress();
    let isLoopLine = stations.get(0).station.id == stations.get(stations.size() - 1).station.id;
    let soundToPlay;
    if (distNextStation < arriveDistance) {
      if (nextIndex == stations.size() - 1 && !isLoopLine) {
        soundToPlay = staCfg.staCode + "_arr_term";
      } else {
        soundToPlay = staCfg.staCode + "_arr";
      }
    } else if (distLastStation > departDistance) {
      soundToPlay = staCfg.staCode + "_next";
    } else if (distLastStation > 15) {
      if (!!prevstaCfg["specDep"]) {
        soundToPlay = "dest_" + staCfg.routeCode + "_dest_" + prevstaCfg.staCode;
      } else {
        soundToPlay = "dest_" + staCfg.routeCode + "_dest"
      }
    } else {
      soundToPlay = "";
    }

    state.playingAnn.setState("mtr:ann_" + routeName + "_" + soundToPlay);
    if (state.playingAnn.stateNowFirst() && soundToPlay != "") {
      ctx.playAnnSound(Resources.identifier(state.playingAnn.stateNow()), 1, 1);
    }
  }
}
