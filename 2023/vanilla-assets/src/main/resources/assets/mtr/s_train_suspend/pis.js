importPackage(java.awt);
importPackage(java.awt.geom);

pisAtlas = Resources.readBufferedImage(Resources.idRelative("pis_placeholder.png"));
sansFont = Resources.readFont(Resources.identifier("mtr:font/noto-sans-cjk-sc-medium.otf"));
serifFont = Resources.getBuiltinFont(true, true);

function createPisTexture(state) {
  var pisTexture = new GraphicsTexture(1024, 512);
  pisTexture.graphics.drawImage(pisAtlas, 0, 0, null);
  pisTexture.graphics.transform(AffineTransform.getTranslateInstance(12, 23));
  pisTexture.upload();

  state.pageCycle = new CycleTracker(["route", 5, "nextStation", 5]);
  return pisTexture;
}

function updatePisTexture(texture, state, train, trainExt) {
  var g = texture.graphics;
  var transform = g.getTransform();

  g.setClip(0, 0, 1000, 100);
  paintPisCommon(g, state, train, trainExt);

  g.transform(AffineTransform.getTranslateInstance(0, 256));
  g.setClip(0, 0, 1000, 100);
  paintPisCommon(g, state, train, trainExt);

  g.setTransform(transform);
  texture.upload();
}

function paintPisCommon(g, state, train, trainExt) {
  state.pageCycle.tick();
  g.setColor(Color.BLACK);
  g.fillRect(0, 0, 1000, 100);
  paintPisCommonElement(g, state, train, trainExt);
  // paintPisArrivePage(g, state, train, trainExt);

  var stations = trainExt.getCurrentRouteStations();
  if (stations.size() <= 1) return;
  var nextIndex = trainExt.getCurrentRouteNextStationIndex();
  if (nextIndex < stations.size() && stations.get(nextIndex).distance - train.getRailProgress() < 4) {
    paintPisArrivePage(g, state, train, trainExt);
  } else {
    if (state.pageCycle.stateNow() == "route") {
      paintPisRoutePage(g, state, train, trainExt);
    } else if (state.pageCycle.stateNow() == "nextStation") {
      paintPisNextStationPage(g, state, train, trainExt);
    }
  }
}

function paintPisCommonElement(g, state, train, trainExt) {
  g.setColor(new Color(36/255, 57/255, 94/255));
  g.fillRect(0, 80, 140, 20);
  g.setColor(Color.WHITE);
  g.setFont(sansFont.deriveFont(Font.BOLD, 14));
  g.drawString(java.time.LocalTime.now().toString().substring(0, 5), 10, 95);
  g.fillRect(60, 81, 2, 17);
  g.drawString(Math.round(train.speed * 20 * 3600.0 / 1000).toString(), 70, 95);
  g.setFont(sansFont.deriveFont(Font.BOLD, 10));
  g.drawString("km/h", 95, 95);

  g.setColor(new Color(145/255, 220/255, 240/255));
  g.fillRect(860, 0, 140, 100);
}

function paintPisRoutePage(g, state, train, trainExt) {
  g.setColor(new Color(230/255, 240/255, 1));
  g.fillRect(0, 0, 140, 80);

  var stations = trainExt.getCurrentRouteStations();
  if (stations.size() <= 1) return;
  var nextIndex = trainExt.getCurrentRouteNextStationIndex();
  // stations = trainExt.getDebugStations(10);
  // nextIndex = 5;

  paintDestinationText(g, stations, nextIndex, false);

  g.transform(AffineTransform.getTranslateInstance(140, 0));
  g.setPaint(new GradientPaint(0, 0, Color.decode("#0094ed"), 720, 0, Color.decode("#009bfd")));
  g.fill(new Rectangle(0, 0, 720, 100));

  if (nextIndex < stations.size()) {
    var xPadding = 45;
    var xPaddingR = 90;
    var xSpacing = (720 - xPadding - xPaddingR) / (stations.size() - 1);

    g.setPaint(new GradientPaint(0, 0, Color.decode("#1d95d6"), (xPadding + xSpacing * nextIndex) / 2, 0, Color.decode("#85e2fb")));
    g.fill(new Rectangle(0, 60, (xPadding + xSpacing * nextIndex) / 2, 20));
    g.setColor(Color.decode("#85e2fb"));
    g.fillRect((xPadding + xSpacing * nextIndex) / 2, 60, (xPadding + xSpacing * nextIndex) / 2 + 1, 20);
    if (stations.size() > 2) {
      g.setColor(Color.decode("#e2f3fe"));
      g.fillRect((xPadding + xSpacing * nextIndex), 60, (xSpacing * (stations.size() - nextIndex - 2)), 20);
      g.setPaint(new GradientPaint((xPadding + xSpacing * (stations.size() - 2)), 0, Color.decode("#e2f3fe"), 720, 0, Color.decode("#01b7ff")));
      g.fill(new Rectangle(xPadding + xSpacing * (stations.size() - 2), 60, (xPaddingR + xSpacing), 20));
    } else {
      g.setPaint(new GradientPaint((xPadding + xSpacing * nextIndex), 0, Color.decode("#e2f3fe"), 720, 0, Color.decode("#01b7ff")));
      g.fill(new Rectangle((xPadding + xSpacing * nextIndex), 60, 720 - (xPadding + xSpacing * nextIndex), 20));
    }

    g.setStroke(new BasicStroke(2));
    for (i = 0; i < stations.size(); i++) {
      g.setColor(i >= nextIndex ? Color.WHITE : Color.decode("#A9DFF9"));
      g.fillRoundRect(xPadding + xSpacing * i - 6, 62, 12, 16, 6, 6);
      g.setColor(Color.decode("#13A2F0"));
      g.drawRoundRect(xPadding + xSpacing * i - 6, 62, 12, 16, 6, 6);

      var transform = g.getTransform();
      g.transform(AffineTransform.getTranslateInstance(xPadding + xSpacing * i, 56));
      g.transform(AffineTransform.getRotateInstance(-Math.PI / 6));
      
      g.setFont(sansFont.deriveFont(Font.BOLD, 6));
      g.setColor(i >= nextIndex ? Color.decode("#0537c2") : Color.decode("#008aed"));
      g.drawString(TextUtil.getNonCjkParts(stations.get(i).station.name), 0, 0);
      g.transform(AffineTransform.getTranslateInstance(-1, -1));
      g.setColor(i >= nextIndex ? Color.WHITE : Color.decode("#2DD3F9"));
      g.drawString(TextUtil.getNonCjkParts(stations.get(i).station.name), 0, 0);

      g.setFont(sansFont.deriveFont(Font.BOLD, 10));
      g.setColor(i >= nextIndex ? Color.decode("#0537c2") : Color.decode("#008aed"));
      g.drawString(TextUtil.getCjkParts(stations.get(i).station.name), 0, -8);
      g.transform(AffineTransform.getTranslateInstance(-1, -1));
      g.setColor(i >= nextIndex ? Color.WHITE : Color.decode("#2DD3F9"));
      g.drawString(TextUtil.getCjkParts(stations.get(i).station.name), 0, -8);
    
      g.setTransform(transform);
      
      if (i >= nextIndex) {
        g.setFont(sansFont.deriveFont(Font.BOLD, 12));
        var timeStr = Math.round((stations.get(i).distance - train.getRailProgress()) / (40 * 1000 / 3600) / 60).toString();
        var fontMetrics = g.getFontMetrics();
        g.drawString(timeStr, xPadding + xSpacing * i - fontMetrics.stringWidth(timeStr) / 2, 94);
      }
    }

    g.setFont(sansFont.deriveFont(Font.BOLD, 8));
    g.drawString("Min.", 680, 94);
  }

  g.transform(AffineTransform.getTranslateInstance(-140, 0));
}

function paintPisNextStationPage(g, state, train, trainExt) {
  g.setColor(new Color(0, 140/255, 204/255));
  g.fillRect(0, 0, 140, 80);

  var stations = trainExt.getCurrentRouteStations();
  if (stations.size() <= 1) return;
  var nextIndex = trainExt.getCurrentRouteNextStationIndex();
  // stations = trainExt.getDebugStations(10);
  // nextIndex = 5;

  paintDestinationText(g, stations, nextIndex, true);

  g.transform(AffineTransform.getTranslateInstance(140, 0));
  g.setColor(new Color(220/255, 235/255, 1));
  g.fillRect(0, 0, 720, 100);

  g.setColor(new Color(0, 100/255, 180/255));
  g.fillPolygon([0, 210, 230, 0], [0, 0, 20, 20], 4);
  g.fillPolygon([0, 210, 230, 0], [100, 100, 80, 80], 4);
  g.setColor(new Color(0, 180/255, 250/255));
  g.fillPolygon([210, 450, 470, 230], [0, 0, 20, 20], 4);
  g.fillPolygon([210, 450, 470, 230], [100, 100, 80, 80], 4);
  g.setColor(new Color(0, 150/255, 240/255));
  g.fillPolygon([450, 720, 720, 470], [0, 0, 20, 20], 4);
  g.fillPolygon([450, 720, 720, 470], [100, 100, 80, 80], 4);

  g.setColor(new Color(200/255, 230/255, 245/255));
  g.fillPolygon([0, 230, 260, 230, 0, 0], [20, 20, 50, 80, 80, 50], 6);
  g.fillPolygon([470, 720, 720, 720, 470, 500], [20, 20, 50, 80, 80, 50], 6);

  var topCjkFont = sansFont.deriveFont(Font.BOLD, 11);
  var topEngFont = sansFont.deriveFont(Font.BOLD, 6);
  var ctrCjkFont = sansFont.deriveFont(Font.BOLD, 22);
  var ctrEngFont = sansFont.deriveFont(Font.BOLD, 10);
  g.setStroke(new BasicStroke(2));

  if (nextIndex > 0) {
    var transform = g.getTransform();
    var topCjkWidth = g.getFontMetrics(topCjkFont).stringWidth("上一站")
    var topEngWidth = g.getFontMetrics(topEngFont).stringWidth("LAST");
    g.transform(AffineTransform.getTranslateInstance(100 - (topCjkWidth + topEngWidth + 4) / 2, 0));  
    g.setColor(Color.WHITE);
    g.setFont(topCjkFont);
    g.drawString("上一站", 0, 16);
    g.setFont(topEngFont);
    g.drawString("LAST", topCjkWidth + 4, 16);
    g.setTransform(transform);
    var ctrCjkWidth = g.getFontMetrics(ctrCjkFont).stringWidth(TextUtil.getCjkParts(stations.get(nextIndex - 1).station.name));
    var ctrEngWidth = g.getFontMetrics(ctrEngFont).stringWidth(TextUtil.getNonCjkParts(stations.get(nextIndex - 1).station.name));
    g.transform(AffineTransform.getTranslateInstance(100 - (Math.max(ctrCjkWidth, ctrEngWidth) + 24) / 2, 0));
    g.setColor(Color.decode("#a2ccec"));
    g.setFont(ctrCjkFont);
    g.drawString(TextUtil.getCjkParts(stations.get(nextIndex - 1).station.name), 24, 54);
    g.setFont(ctrEngFont);
    g.drawString(TextUtil.getNonCjkParts(stations.get(nextIndex - 1).station.name), 26, 67);
    g.drawRoundRect(0, 40, 18, 22, 8, 8);
    g.setTransform(transform);
  }

  if (nextIndex < stations.size()) {
    var transform = g.getTransform();
    var topCjkWidth = g.getFontMetrics(topCjkFont).stringWidth("即将到站")
    var topEngWidth = g.getFontMetrics(topEngFont).stringWidth("ARRIVING");
    g.transform(AffineTransform.getTranslateInstance(360 - (topCjkWidth + topEngWidth + 4) / 2, 0));  
    g.setColor(Color.WHITE);
    g.setFont(topCjkFont);
    g.drawString("即将到站", 0, 16);
    g.setFont(topEngFont);
    g.drawString("ARRIVING", topCjkWidth + 4, 16);
    g.setTransform(transform);
    var ctrCjkWidth = g.getFontMetrics(ctrCjkFont).stringWidth(TextUtil.getCjkParts(stations.get(nextIndex).station.name));
    var ctrEngWidth = g.getFontMetrics(ctrEngFont).stringWidth(TextUtil.getNonCjkParts(stations.get(nextIndex).station.name));
    g.transform(AffineTransform.getTranslateInstance(360 - (Math.max(ctrCjkWidth, ctrEngWidth) + 24) / 2, 0));
    g.setColor(Color.decode("#065ed0"));
    g.setFont(ctrCjkFont);
    g.drawString(TextUtil.getCjkParts(stations.get(nextIndex).station.name), 24, 54);
    g.setFont(ctrEngFont);
    g.drawString(TextUtil.getNonCjkParts(stations.get(nextIndex).station.name), 26, 67);
    g.setColor(Color.decode("#01a3f4"));
    g.fillRoundRect(0, 40, 18, 22, 8, 8);
    g.setColor(Color.decode("#065ed0"));
    g.drawRoundRect(0, 40, 18, 22, 8, 8);
    g.setTransform(transform);

    g.transform(AffineTransform.getTranslateInstance(212, 0));  
    var composite = g.getComposite();
    var alphaProgress = Timing.elapsed() % 2 / 2;
    var alpha1 = alphaProgress > 1/2 ? 0 : (1 - Math.abs(alphaProgress * 4 - 1));
    alphaProgress = (alphaProgress + 3/4) % 1;
    var alpha2 = alphaProgress > 1/2 ? 0 : (1 - Math.abs(alphaProgress * 4 - 1));
    g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha1));
    g.drawImage(pisAtlas, 0, 30, 20, 30+40, 0, 137, 20, 137+40, null);
    g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha2));
    g.drawImage(pisAtlas, 20, 30, 38, 30+40, 20, 137, 38, 137+40, null);
    g.setComposite(composite);
    g.drawImage(pisAtlas, 38, 30, 58, 30+40, 38, 137, 58, 137+40, null);
    g.setTransform(transform);
  }

  if (nextIndex < stations.size() - 1) {
    var transform = g.getTransform();
    var topCjkWidth = g.getFontMetrics(topCjkFont).stringWidth("稍后到站")
    var topEngWidth = g.getFontMetrics(topEngFont).stringWidth("NEXT");
    g.transform(AffineTransform.getTranslateInstance(615 - (topCjkWidth + topEngWidth + 4) / 2, 0));  
    g.setColor(Color.WHITE);
    g.setFont(topCjkFont);
    g.drawString("稍后到站", 0, 16);
    g.setFont(topEngFont);
    g.drawString("NEXT", topCjkWidth + 4, 16);
    g.setTransform(transform);
    var ctrCjkWidth = g.getFontMetrics(ctrCjkFont).stringWidth(TextUtil.getCjkParts(stations.get(nextIndex + 1).station.name));
    var ctrEngWidth = g.getFontMetrics(ctrEngFont).stringWidth(TextUtil.getNonCjkParts(stations.get(nextIndex + 1).station.name));
    g.transform(AffineTransform.getTranslateInstance(615 - (Math.max(ctrCjkWidth, ctrEngWidth) + 24) / 2, 0));
    g.setColor(Color.decode("#72bafb"));
    g.setFont(ctrCjkFont);
    g.drawString(TextUtil.getCjkParts(stations.get(nextIndex + 1).station.name), 24, 54);
    g.setFont(ctrEngFont);
    g.drawString(TextUtil.getNonCjkParts(stations.get(nextIndex + 1).station.name), 26, 67);
    g.drawRoundRect(0, 40, 18, 22, 8, 8);
    g.setTransform(transform);

    g.drawImage(pisAtlas, 454, 30, 454+58, 30+40, 0, 137, 58, 137+40, null);
  }

  g.transform(AffineTransform.getTranslateInstance(-140, 0));
}

function paintPisArrivePage(g, state, train, trainExt) {
  g.setColor(new Color(0, 140/255, 204/255));
  g.fillRect(0, 0, 140, 80);

  g.transform(AffineTransform.getTranslateInstance(140, 0));
  g.setColor(new Color(220/255, 235/255, 1));
  g.fillRect(0, 0, 720, 100);

  g.setColor(new Color(0, 100/255, 180/255));
  g.fillPolygon([0, 50, 70, 0], [0, 0, 20, 20], 4);
  g.fillPolygon([0, 50, 70, 0], [100, 100, 80, 80], 4);
  g.setColor(new Color(0, 180/255, 250/255));
  g.fillPolygon([50, 320, 340, 70], [0, 0, 20, 20], 4);
  g.fillPolygon([50, 320, 340, 70], [100, 100, 80, 80], 4);
  g.setColor(new Color(0x40/255, 0xc7/255, 0xb2/255));
  g.fillPolygon([400, 720, 720, 420], [0, 0, 20, 20], 4);

  var stations = trainExt.getCurrentRouteStations();
  if (stations.size() <= 1) return;
  var nextIndex = trainExt.getCurrentRouteNextStationIndex();

  var topCjkFont = sansFont.deriveFont(Font.BOLD, 11);
  var topEngFont = sansFont.deriveFont(Font.BOLD, 6);
  var ctrCjkFont = sansFont.deriveFont(Font.BOLD, 22);
  var ctrEngFont = sansFont.deriveFont(Font.BOLD, 10);
  g.setStroke(new BasicStroke(2));

  if (nextIndex < stations.size()) {
    var transform = g.getTransform();
    var topCjkWidth = g.getFontMetrics(topCjkFont).stringWidth("即将到站")
    var topEngWidth = g.getFontMetrics(topEngFont).stringWidth("ARRIVING");
    g.transform(AffineTransform.getTranslateInstance(200 - (topCjkWidth + topEngWidth + 4) / 2, 0));  
    g.setColor(Color.WHITE);
    g.setFont(topCjkFont);
    g.drawString("即将到站", 0, 16);
    g.setFont(topEngFont);
    g.drawString("ARRIVING", topCjkWidth + 4, 16);
    g.setTransform(transform);
    var ctrCjkWidth = g.getFontMetrics(ctrCjkFont).stringWidth(TextUtil.getCjkParts(stations.get(nextIndex).station.name));
    var ctrEngWidth = g.getFontMetrics(ctrEngFont).stringWidth(TextUtil.getNonCjkParts(stations.get(nextIndex).station.name));
    g.transform(AffineTransform.getTranslateInstance(200 - (Math.max(ctrCjkWidth, ctrEngWidth) + 24) / 2, 0));
    g.setColor(Color.decode("#065ed0"));
    g.setFont(ctrCjkFont);
    g.drawString(TextUtil.getCjkParts(stations.get(nextIndex).station.name), 24, 54);
    g.setFont(ctrEngFont);
    g.drawString(TextUtil.getNonCjkParts(stations.get(nextIndex).station.name), 26, 67);
    g.setColor(Color.decode("#01a3f4"));
    g.fillRoundRect(0, 40, 18, 22, 8, 8);
    g.setColor(Color.decode("#065ed0"));
    g.drawRoundRect(0, 40, 18, 22, 8, 8);
    g.setTransform(transform);

    g.transform(AffineTransform.getTranslateInstance(30, 0));  
    var composite = g.getComposite();
    var alphaProgress = Timing.elapsed() % 2 / 2;
    var alpha1 = alphaProgress > 1/2 ? 0 : (1 - Math.abs(alphaProgress * 4 - 1));
    alphaProgress = (alphaProgress + 3/4) % 1;
    var alpha2 = alphaProgress > 1/2 ? 0 : (1 - Math.abs(alphaProgress * 4 - 1));
    g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha1));
    g.drawImage(pisAtlas, 0, 30, 20, 30+40, 0, 137, 20, 137+40, null);
    g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha2));
    g.drawImage(pisAtlas, 20, 30, 38, 30+40, 20, 137, 38, 137+40, null);
    g.setComposite(composite);
    g.drawImage(pisAtlas, 38, 30, 58, 30+40, 38, 137, 58, 137+40, null);
    g.setTransform(transform);
  }

  var transform = g.getTransform();
    var topCjkWidth = g.getFontMetrics(topCjkFont).stringWidth("可前往")
    var topEngWidth = g.getFontMetrics(topEngFont).stringWidth("EXIT TO");
    g.transform(AffineTransform.getTranslateInstance(580 - (topCjkWidth + topEngWidth + 4) / 2, 0));  
    g.setColor(Color.WHITE);
    g.setFont(topCjkFont);
    g.drawString("可前往", 0, 16);
    g.setFont(topEngFont);
    g.drawString("EXIT TO", topCjkWidth + 4, 16);
    g.setTransform(transform);

  g.transform(AffineTransform.getTranslateInstance(-140, 0));
}

function paintDestinationText(g, stations, nextIndex, dark) {
  var nextSta = stations.get(Math.max(nextIndex - 1, 0));
  g.setColor(dark ? Color.WHITE : Color.decode("#2D7FDD"));
  g.fillRect(10, 8, 20, 20);

  g.fillRect(10, 47, 20, 2);
  // g.drawRect(10, 32, 19, 19);
  
  g.setColor(dark ? Color.WHITE : new Color(36/255, 57/255, 94/255));
  g.setFont(sansFont.deriveFont(Font.BOLD, 10));
  g.drawString("往", 10, 44);
  g.setFont(sansFont.deriveFont(Font.BOLD, 6));
  g.drawString("To", 22, 41);

  g.setFont(sansFont.deriveFont(Font.BOLD, 7));
  g.drawString(TextUtil.getNonCjkParts(nextSta.destinationName), 40, 44);
  g.setFont(sansFont.deriveFont(Font.BOLD, 9));
  g.drawString(TextUtil.getCjkParts(nextSta.route.name), 40, 17);
  g.setFont(sansFont.deriveFont(Font.BOLD, 6));
  g.drawString(TextUtil.getNonCjkParts(nextSta.route.name), 40, 27);

  g.setFont(sansFont.deriveFont(Font.BOLD, 19));
  var cjkWidth = g.getFontMetrics().stringWidth(TextUtil.getCjkParts(nextSta.destinationName));
  g.drawString(TextUtil.getCjkParts(nextSta.destinationName), 70 - cjkWidth / 2, 72);

  if (TextUtil.getNonCjkParts(nextSta.route.name).length() > 0) {
    g.setColor(dark ? Color.decode("#2D7FDD") : Color.WHITE);
    var idStr = TextUtil.getNonCjkParts(nextSta.route.name).substring(0, 1).toUpperCase();
    g.setFont(sansFont.deriveFont(Font.BOLD, 16));
    g.drawString(idStr, 20 - g.getFontMetrics().stringWidth(idStr) / 2, 24);
  }
}
