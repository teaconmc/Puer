
function paintPisArrivePage(g, state, train, stations, nextIndex) {
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

  var clip = g.getClip();
  g.setClip(0, 0, 140, 100);
  paintDoorAnimation(g, state.doorWillOpen);
  g.setClip(clip);

  if (state.stationConfig.exitStr != void 0) {
    var exitFontSize = state.stationConfig.exitStrFontSize;
    var exitStrLines = state.stationConfig.exitStr.split("\n");
    yOffset = 20 + 4;
    g.setColor(new Color(36/255, 57/255, 94/255));
    for (var i = 0; i < exitStrLines.length; i++) {
      var cjkLine = "" + TextUtil.getCjkParts(exitStrLines[i]);
      if (cjkLine.length > 0) {
        g.setFont(sansFont.deriveFont(exitFontSize));
        var rAlignWidth = g.getFontMetrics().stringWidth(cjkLine);
        
        g.drawString(cjkLine, 720 + 140 - rAlignWidth - 14, yOffset + exitFontSize);
        yOffset += (exitFontSize) * 1.25;
      }
      var nonCjkLine = "" + TextUtil.getNonCjkParts(exitStrLines[i]);
      if (nonCjkLine.length > 0) {
        var engFontSize = cjkLine.length > 0 ? exitFontSize / 2 : exitFontSize;
        g.setFont(sansFont.deriveFont(engFontSize));
        var rAlignWidth = g.getFontMetrics().stringWidth(nonCjkLine);
        g.drawString(nonCjkLine, 720 + 140 - rAlignWidth - 14, yOffset + engFontSize);
        yOffset += (engFontSize) * 1.25;
      }
    }
  }
}

function paintDoorAnimation(g, doorWillOpen) {
  var transform = g.getTransform();
  if (doorWillOpen) {
    g.transform(AffineTransform.getTranslateInstance(70, 23));
    g.setFont(sansFont.deriveFont(Font.BOLD, 12));
    var composite = g.getComposite();
    var alphaProgress = Timing.elapsed() % 2 / 2;
    var alpha = (Math.min(Math.max(Math.sin(alphaProgress * Math.PI * 2) * 4, -1), 1) + 1) / 2;
    g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha));
    g.drawString("本 侧 开 启", -g.getFontMetrics().stringWidth("本 侧 开 启") / 2, -6);
    g.setComposite(composite);
    g.drawImage(pisAtlas, -5, 0, 5, 50, 244, 137, 244+14, 137+75, null);
    var animProgress = Timing.elapsed() % 2.5 / 2.5;
    var offset = easeOutCubic(animProgress) * 20;
    g.drawImage(pisAtlas, -offset-33, 0, -offset, 50, 64, 137, 64+50, 137+75, null);
    g.drawImage(pisAtlas, offset, 0, offset+33, 50, 114, 137, 114+50, 137+75, null);
  } else {
    g.transform(AffineTransform.getTranslateInstance(70, 23));
    g.setFont(sansFont.deriveFont(Font.BOLD, 12));
    g.drawString("本 侧 关 闭", -g.getFontMetrics().stringWidth("本 侧 关 闭") / 2, -6);
    g.drawImage(pisAtlas, -26, 0, 26, 50, 164, 137, 164+80, 137+75, null);
  }
  g.setTransform(transform);
}

function easeOutCubic(x) {
  return 1 - Math.pow(1 - x, 3);
}
