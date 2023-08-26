function paintPisRoutePage(g, state, train, stations, nextIndex) {
  g.setColor(new Color(230/255, 240/255, 1));
  g.fillRect(0, 0, 140, 80);

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
      g.setColor(Color.WHITE);
      g.fillRect((xPadding + xSpacing * nextIndex - 16), 60, (xSpacing * (stations.size() - nextIndex - 2) + 16), 20);
      g.setPaint(new GradientPaint((xPadding + xSpacing * (stations.size() - 2)), 0, Color.WHITE, 720, 0, Color.decode("#01b7ff")));
      g.fill(new Rectangle(xPadding + xSpacing * (stations.size() - 2), 60, (xPaddingR + xSpacing), 20));
    } else {
      g.setPaint(new GradientPaint((xPadding + xSpacing * nextIndex - 16), 0, Color.WHITE, 720, 0, Color.decode("#01b7ff")));
      g.fill(new Rectangle((xPadding + xSpacing * nextIndex - 16), 60, 720 - (xPadding + xSpacing * nextIndex), 20));
    }

    g.setStroke(new BasicStroke(2));
    for (i = 0; i < stations.size(); i++) {
      var composite = g.getComposite();
      var alphaProgress = Timing.elapsed() % 2 / 2;
      var alpha = alphaProgress > 1/2 ? 0.5 : 1;
      if (i == nextIndex) {
        g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha));
        g.drawImage(pisAtlas, xPadding + xSpacing * i - 15, 62, xPadding + xSpacing * i - 8, 62+16, 0, 137, 20, 137+40, null);
      } else if (i < nextIndex) {
        g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.5));
      }
      g.setColor(i >= nextIndex ? Color.WHITE : Color.decode("#A9DFF9"));
      g.fillRoundRect(xPadding + xSpacing * i - 6, 62, 12, 16, 6, 6);
      g.setColor(Color.decode("#13A2F0"));
      g.drawRoundRect(xPadding + xSpacing * i - 6, 62, 12, 16, 6, 6);
      g.setComposite(composite);

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

  g.drawImage(pisAtlas, 6, 63, 6+18, 63+14, 0, 242, 18, 242+14, null);
  g.drawImage(pisAtlas, 720-6-18, 63, 720-6, 63+14, 0, 242, 18, 242+14, null);

  g.transform(AffineTransform.getTranslateInstance(-140, 0));
}
