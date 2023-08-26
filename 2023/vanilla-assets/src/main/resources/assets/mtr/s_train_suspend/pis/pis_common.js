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

function paintNextStationArrowAnim(g) {
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
}
