function paintPisNextStationPage(g, state, train, stations, nextIndex) {
  g.setColor(new Color(0, 140/255, 204/255));
  g.fillRect(0, 0, 140, 80);

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
  var ctrCjkFont = sansFont.deriveFont(Font.BOLD, 24);
  var ctrEngFont = sansFont.deriveFont(Font.BOLD, 12);
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
    g.drawString(TextUtil.getCjkParts(stations.get(nextIndex - 1).station.name), 24, 53);
    g.setFont(ctrEngFont);
    g.drawString(TextUtil.getNonCjkParts(stations.get(nextIndex - 1).station.name), 26, 68);
    g.drawRoundRect(0, 40, 18, 22, 8, 8);
    g.setTransform(transform);
  }

  if (nextIndex < stations.size()) {
    var transform = g.getTransform();
    var topCjkWidth = g.getFontMetrics(topCjkFont).stringWidth(state.atPlatform ? "停靠站" : "即将到站")
    var topEngWidth = g.getFontMetrics(topEngFont).stringWidth(state.atPlatform ? "STOPPING" : "ARRIVING");
    g.transform(AffineTransform.getTranslateInstance(360 - (topCjkWidth + topEngWidth + 4) / 2, 0));  
    g.setColor(Color.WHITE);
    g.setFont(topCjkFont);
    g.drawString(state.atPlatform ? "停靠站" : "即将到站", 0, 16);
    g.setFont(topEngFont);
    g.drawString(state.atPlatform ? "STOPPING" : "ARRIVING", topCjkWidth + 4, 16);
    g.setTransform(transform);
    var ctrCjkWidth = g.getFontMetrics(ctrCjkFont).stringWidth(TextUtil.getCjkParts(stations.get(nextIndex).station.name));
    var ctrEngWidth = g.getFontMetrics(ctrEngFont).stringWidth(TextUtil.getNonCjkParts(stations.get(nextIndex).station.name));
    g.transform(AffineTransform.getTranslateInstance(360 - (Math.max(ctrCjkWidth, ctrEngWidth) + 24) / 2, 0));
    g.setColor(Color.decode("#065ed0"));
    g.setFont(ctrCjkFont);
    g.drawString(TextUtil.getCjkParts(stations.get(nextIndex).station.name), 24, 53);
    g.setFont(ctrEngFont);
    g.drawString(TextUtil.getNonCjkParts(stations.get(nextIndex).station.name), 26, 68);
    g.setColor(Color.decode("#01a3f4"));
    g.fillRoundRect(0, 40, 18, 22, 8, 8);
    g.setColor(Color.decode("#065ed0"));
    g.drawRoundRect(0, 40, 18, 22, 8, 8);
    g.setTransform(transform);
    
    g.transform(AffineTransform.getTranslateInstance(212, 0));  
    if (state.atPlatform) {
      g.drawImage(pisAtlas, 0, 30, 58, 30+40, 0, 137, 58, 137+40, null);
    } else {
      paintNextStationArrowAnim(g);
    }
    g.setTransform(transform);
  }

  if (nextIndex < stations.size() - 1) {
    var transform = g.getTransform();
    var topCjkWidth = g.getFontMetrics(topCjkFont).stringWidth("下一站")
    var topEngWidth = g.getFontMetrics(topEngFont).stringWidth("NEXT");
    g.transform(AffineTransform.getTranslateInstance(615 - (topCjkWidth + topEngWidth + 4) / 2, 0));  
    g.setColor(Color.WHITE);
    g.setFont(topCjkFont);
    g.drawString("下一站", 0, 16);
    g.setFont(topEngFont);
    g.drawString("NEXT", topCjkWidth + 4, 16);
    g.setTransform(transform);
    var ctrCjkWidth = g.getFontMetrics(ctrCjkFont).stringWidth(TextUtil.getCjkParts(stations.get(nextIndex + 1).station.name));
    var ctrEngWidth = g.getFontMetrics(ctrEngFont).stringWidth(TextUtil.getNonCjkParts(stations.get(nextIndex + 1).station.name));
    g.transform(AffineTransform.getTranslateInstance(615 - (Math.max(ctrCjkWidth, ctrEngWidth) + 24) / 2, 0));
    g.setColor(Color.decode("#72bafb"));
    g.setFont(ctrCjkFont);
    g.drawString(TextUtil.getCjkParts(stations.get(nextIndex + 1).station.name), 24, 53);
    g.setFont(ctrEngFont);
    g.drawString(TextUtil.getNonCjkParts(stations.get(nextIndex + 1).station.name), 26, 68);
    g.drawRoundRect(0, 40, 18, 22, 8, 8);
    g.setTransform(transform);

    g.transform(AffineTransform.getTranslateInstance(454, 0));  
    if (state.atPlatform) {
      paintNextStationArrowAnim(g);
    } else {
      g.drawImage(pisAtlas, 0, 30, 58, 30+40, 0, 137, 58, 137+40, null);
    }
    g.setTransform(transform);
  }

  g.transform(AffineTransform.getTranslateInstance(-140, 0));
}
