
function paint_lcd(g, text, x, y, w, scrollDuration) {
  let fontMetrics = g.getFontMetrics();
  let font = serifFont.deriveFont(Font.BOLD, 14);
  let yOff = 13.5;
  g.setFont(font);
  g.setColor(Color.RED);
  let textWidth = fontMetrics.stringWidth(text);
  if (textWidth > w) {
    // Scroll text
    let xSep = 16 * 4;
    let normalizedOffset = ((scrollDuration - 0.1) * (w / 3) - xSep) % (textWidth + xSep);
    g.drawString(text, x - normalizedOffset, y + yOff);
    g.drawString(text, x - normalizedOffset + xSep + textWidth, y + yOff);
  } else {
    // Center text
    g.drawString(text, x + (w - textWidth) / 2, y + yOff);
  }
}
