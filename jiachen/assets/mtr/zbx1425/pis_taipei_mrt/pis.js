importPackage(java.awt);
importPackage(java.awt.geom);

pisAtlas = Resources.readBufferedImage(Resources.idRelative("pis_placeholder.png"));
sansFont = Resources.getSystemFont("Noto Sans");

include("pis_config_parser.js");
include("pis_common.js");
include("pis_page_route.js");
include("pis_page_next_station.js");
include("pis_page_arrive.js");

function createPisTexture(state) {
  var pisTexture = new GraphicsTexture(2048, 1024);
  setupPisTexture(state, pisTexture);
  return pisTexture;
}

function setupPisTexture(state, pisTexture) {
  pisTexture.graphics.transform(AffineTransform.getScaleInstance(2, 2));
  pisTexture.graphics.drawImage(pisAtlas, 0, 0, null);
  pisTexture.graphics.transform(AffineTransform.getTranslateInstance(12, 23));
  pisTexture.upload();

  state.pageCycle = new CycleTracker(["route", 5, "nextStation", 5]);
  state.atPlatform = false;
}

function updatePisTexture(texture, state, train) {
  var g = texture.graphics;
  var transform = g.getTransform();

  g.setClip(0, 0, 1000, 100);
  paintPisSideScreen(g, state, train, -1);

  g.transform(AffineTransform.getTranslateInstance(0, 256));
  g.setClip(0, 0, 1000, 100);
  paintPisSideScreen(g, state, train, 1);

  g.setTransform(transform);
  texture.upload();
}

function paintPisSideScreen(g, state, train, side) {
  state.pageCycle.tick();
  g.setColor(Color.BLACK);
  g.fillRect(0, 0, 1000, 100);
  paintPisCommonElement(g, state, train);
  // paintPisArrivePage(g, state, train);

  var stations = train.getThisRoutePlatforms();
  if (stations.size() <= 1) return;
  var nextIndex = train.getThisRoutePlatformsNextIndex();
  // var stations = train.getDebugPlatforms(10);
  // var nextIndex = 5;

  var stationConfig = getStationConfig(stations, nextIndex);
  var doorDirection;
  if (stationConfig.door == "both") {
    doorDirection = 2;
  } else if (stationConfig.door == "left") {
    doorDirection = train.isReversed() ? 1 : -1;
  } else if (stationConfig.door == "right") {
    doorDirection = train.isReversed() ? -1 : 1;
  } else {
    doorDirection = 0;
  }
  state.stationConfig = stationConfig;
  state.doorWillOpen = doorDirection == 2 || doorDirection == side;

  if (nextIndex < stations.size() && (stations.get(nextIndex).distance - train.railProgress()) < stationConfig.arriveDistance) {
    state.atPlatform |= train.doorValue() > 0;
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
