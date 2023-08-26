importPackage(java.awt);
importPackage(java.awt.geom);

pisAtlas = Resources.readBufferedImage(Resources.idRelative("../pis_placeholder.png"));
sansFont = Resources.readFont(Resources.identifier("mtr:font/noto-sans-cjk-sc-medium.otf"));
serifFont = Resources.getBuiltinFont(true, true);

include("pis_config_parser.js");
include("pis_common.js");
include("pis_page_route.js");
include("pis_page_next_station.js");
include("pis_page_arrive.js");

function createPisTexture(state) {
  var pisTexture = new GraphicsTexture(2048, 1024);
  pisTexture.graphics.transform(AffineTransform.getScaleInstance(2, 2));
  pisTexture.graphics.drawImage(pisAtlas, 0, 0, null);
  pisTexture.graphics.transform(AffineTransform.getTranslateInstance(12, 23));
  pisTexture.upload();

  state.pageCycle = new CycleTracker(["route", 5, "nextStation", 5]);
  state.atPlatform = false;
  return pisTexture;
}

function updatePisTexture(texture, state, train, trainExt) {
  var g = texture.graphics;
  var transform = g.getTransform();

  g.setClip(0, 0, 1000, 100);
  paintPisSideScreen(g, state, train, trainExt, -1);

  g.transform(AffineTransform.getTranslateInstance(0, 256));
  g.setClip(0, 0, 1000, 100);
  paintPisSideScreen(g, state, train, trainExt, 1);

  g.setTransform(transform);
  texture.upload();
}

function paintPisSideScreen(g, state, train, trainExt, side) {
  state.pageCycle.tick();
  g.setColor(Color.BLACK);
  g.fillRect(0, 0, 1000, 100);
  paintPisCommonElement(g, state, train, trainExt);
  // paintPisArrivePage(g, state, train, trainExt);

  var stations = trainExt.getThisRoutePlatforms();
  if (stations.size() <= 1) return;
  var nextIndex = trainExt.getThisRoutePlatformsNextIndex();
  // var stations = trainExt.getDebugPlatforms(10);
  // var nextIndex = 5;

  var stationConfig = getStationConfig(stations, nextIndex);
  var doorDirection;
  if (stationConfig.doorDirection == "both") {
    doorDirection = 2;
  } else if (stationConfig.doorDirection == "left") {
    doorDirection = train.isReversed() ? 1 : -1;
  } else if (stationConfig.doorDirection == "right") {
    doorDirection = train.isReversed() ? -1 : 1;
  } else {
    doorDirection = 0;
  }
  state.stationConfig = stationConfig;
  state.doorWillOpen = doorDirection == side;

  if (nextIndex < stations.size() && (stations.get(nextIndex).distance - train.getRailProgress()) < stationConfig.arriveDistance) {
    state.atPlatform |= train.getDoorValue() > 0;
    if (state.atPlatform) {
      paintPisNextStationPage(g, state, train, stations, nextIndex);
    } else {
      paintPisArrivePage(g, state, train, stations, nextIndex);
    }
  } else {
    state.atPlatform = false;
    if (state.pageCycle.stateNow() == "route") {
      paintPisRoutePage(g, state, train, stations, nextIndex);
    } else if (state.pageCycle.stateNow() == "nextStation") {
      paintPisNextStationPage(g, state, train, stations, nextIndex);
    }
  }

  /*
  g.setColor(Color.RED);
  g.setFont(sansFont.deriveFont(Font.BOLD, 10));
  g.drawString(JSON.stringify(stationConfig), 0, 10);
  */
}
