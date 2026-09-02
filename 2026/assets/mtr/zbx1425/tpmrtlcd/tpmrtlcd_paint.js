function tpmrtDrawDoorSide(g, x, state, side) {
  var doorOnThisSide = state.tpmrt.doorOpen[side == 1 ? 0 : 1];
  var isCn = state.tpmrtLangCycle.stateNow() == "cn";
  var yOff = (doorOnThisSide ? 0 : 128) + (isCn ? 0 : 64);
  g.drawImage(tpmrtImg.doorSide,
    x, 0, x + 192, 64,
    4, yOff, 196, yOff + 64,
    null);
}

function tpmrtDrawStaName(g, x, staCode, style) {
  if (staCode == null) return;
  var yOff = tpmrtStaNameYOffs[staCode];
  if (yOff === undefined) return;
  var img;
  if (style == "reg") img = tpmrtImg.staNameReg;
  else if (style == "small") img = tpmrtImg.staNameSmall;
  else if (style == "inv") img = tpmrtImg.staNameInv;
  else return;
  g.drawImage(img,
    x, 0, x + 256, 64,
    4, yOff, 260, yOff + 64,
    null);
}

function tpmrtDrawArrow(g, x, goesRight, visible) {
  if (!visible) return;
  var img = goesRight ? tpmrtImg.arrowR : tpmrtImg.arrowL;
  g.drawImage(img,
    x, 0, x + 64, 64,
    4, 0, 68, 64,
    null);
}

function tpmrtDrawClock(g, x) {
  var timeStr = "" + java.time.LocalTime.now().toString().substring(0, 5);
  var geom = TPMRTLCD_CLOCK.geometry;
  var codes = TPMRTLCD_CLOCK.imageCodes;
  var charW = geom.width;

  var totalWidth = 0;
  for (var i = 0; i < timeStr.length; i++) {
    var ch = timeStr.substring(i, i + 1);
    var uOffset = geom.offsets[ch] ? geom.offsets[ch] : 0;
    totalWidth += charW - uOffset;
  }

  var drawX = x + Math.floor((192 - totalWidth) / 2);
  for (var i = 0; i < timeStr.length; i++) {
    var ch = timeStr.substring(i, i + 1);
    var charIndex = codes.indexOf(ch);
    if (charIndex < 0) continue;
    var uOffset = geom.offsets[ch] ? geom.offsets[ch] : 0;
    var srcLeft = charIndex * charW + uOffset;
    var srcWidth = charW - uOffset;
    g.drawImage(tpmrtImg.clockDigits,
      drawX, 0, drawX + srcWidth, 64,
      srcLeft, 0, srcLeft + srcWidth, 64,
      null);
    drawX += srcWidth;
  }
}

function tpmrtDrawDestination(g, x, state) {
  var code = state.tpmrt.destnCode;
  var isCn = state.tpmrtLangCycle.stateNow() == "cn";
  var img = isCn ? tpmrtImg.destnCn : tpmrtImg.destnEn;
  var yOff = tpmrtDestnYOffs[code];
  if (yOff === undefined) yOff = tpmrtDestnYOffs[""];
  if (yOff === undefined) return;
  g.drawImage(img,
    x, 0, x + 192, 64,
    4, yOff, 196, yOff + 64,
    null);
}

function tpmrtDrawBrand(g, x) {
  g.drawImage(tpmrtImg.brand, x, 0, null);
}

function tpmrtDrawTrainHold(g, x) {
  g.drawImage(tpmrtImg.trainHold, x, 0, null);
}

function tpmrtHasStation(staCode) {
  return staCode != null && tpmrtStaNameYOffs[staCode] !== undefined;
}

function paintTpmrtLayout(g, state, train, side, goesRight, slots) {
  var widths = [192, 256, 64, 256, 64, 256, 192];
  var order = goesRight ? [0, 1, 2, 3, 4, 5, 6] : [6, 5, 4, 3, 2, 1, 0];
  var x = 0;
  for (var i = 0; i < 7; i++) {
    var slotIdx = order[i];
    var drawFn = slots[slotIdx];
    if (drawFn) drawFn(g, x);
    x += widths[slotIdx];
  }
}

function paintTpmrtLayout1(g, state, train, side, goesRight) {
  var blinkOn = state.tpmrtBlinkCycle.stateNow() == "on";
  var curCode = state.tpmrt.curStaCode;
  var nextCode = state.tpmrt.nextStaCode;
  var nextNextCode = state.tpmrt.nextNextStaCode;

  var hasNext = tpmrtHasStation(nextCode);
  var hasNextNext = tpmrtHasStation(nextNextCode);
  var nnDisplay = hasNextNext ? nextNextCode : (hasNext && tpmrtHasStation("TERM") ? "TERM" : null);

  var slots = [
    function(g, x) { tpmrtDrawDoorSide(g, x, state, side); },
    function(g, x) { tpmrtDrawStaName(g, x, curCode, blinkOn ? "inv" : "reg"); },
    hasNext ? function(g, x) { tpmrtDrawArrow(g, x, goesRight, true); } : null,
    hasNext ? function(g, x) { tpmrtDrawStaName(g, x, nextCode, "reg"); } : null,
    hasNext && hasNextNext ? function(g, x) { tpmrtDrawArrow(g, x, goesRight, true); } : null,
    nnDisplay ? function(g, x) { tpmrtDrawStaName(g, x, nnDisplay, "reg"); } : null,
    function(g, x) { tpmrtDrawDestination(g, x, state); }
  ];

  paintTpmrtLayout(g, state, train, side, goesRight, slots);
}

function paintTpmrtLayout2(g, state, train, side, goesRight) {
  var blinkOn = state.tpmrtBlinkCycle.stateNow() == "on";
  var prevCode = state.tpmrt.curStaCode;
  var nextCode = state.tpmrt.nextStaCode;
  var nextNextCode = state.tpmrt.nextNextStaCode;

  var hasNext = tpmrtHasStation(nextCode);
  var hasNextNext = tpmrtHasStation(nextNextCode);
  var nnDisplay = hasNextNext ? nextNextCode : (hasNext && tpmrtHasStation("TERM") ? "TERM" : null);

  var slots = [
    function(g, x) { tpmrtDrawClock(g, x); },
    function(g, x) { tpmrtDrawStaName(g, x, prevCode, "small"); },
    hasNext ? function(g, x) { tpmrtDrawArrow(g, x, goesRight, blinkOn); } : null,
    hasNext ? function(g, x) { tpmrtDrawStaName(g, x, nextCode, "reg"); } : null,
    hasNext && hasNextNext ? function(g, x) { tpmrtDrawArrow(g, x, goesRight, true); } : null,
    nnDisplay ? function(g, x) { tpmrtDrawStaName(g, x, nnDisplay, "reg"); } : null,
    function(g, x) { tpmrtDrawDestination(g, x, state); }
  ];

  paintTpmrtLayout(g, state, train, side, goesRight, slots);
}

function paintTpmrtLayout3(g, state, train, side, goesRight) {
  var blinkOn = state.tpmrtBlinkCycle.stateNow() == "on";
  var prevCode = state.tpmrt.curStaCode;
  var nextCode = state.tpmrt.nextStaCode;
  var nextNextCode = state.tpmrt.nextNextStaCode;

  var hasNext = tpmrtHasStation(nextCode);
  var hasNextNext = tpmrtHasStation(nextNextCode);
  var nnDisplay = hasNextNext ? nextNextCode : (hasNext && tpmrtHasStation("TERM") ? "TERM" : null);

  var slots = [
    function(g, x) { tpmrtDrawDoorSide(g, x, state, side); },
    function(g, x) { tpmrtDrawStaName(g, x, prevCode, "small"); },
    hasNext ? function(g, x) { tpmrtDrawArrow(g, x, goesRight, true); } : null,
    hasNext && blinkOn ? function(g, x) { tpmrtDrawStaName(g, x, nextCode, "reg"); } : null,
    hasNext && hasNextNext ? function(g, x) { tpmrtDrawArrow(g, x, goesRight, true); } : null,
    nnDisplay ? function(g, x) { tpmrtDrawStaName(g, x, nnDisplay, "reg"); } : null,
    function(g, x) { tpmrtDrawDestination(g, x, state); }
  ];

  paintTpmrtLayout(g, state, train, side, goesRight, slots);
}

function paintTpmrtBrandLayout(g, state, train, side, goesRight, midYOff) {
  if (goesRight) {
    tpmrtDrawDoorSide(g, 0, state, side);
    tpmrtDrawDestination(g, 1088, state);
  } else {
    tpmrtDrawDestination(g, 0, state);
    tpmrtDrawDoorSide(g, 1088, state, side);
  }
  if (midYOff > 0) {
    var sc = g.getClip();
    var st = g.getTransform();
    g.clipRect(192, 0, 896, 64);
    g.translate(0, midYOff);
    tpmrtDrawBrand(g, 192);
    g.setTransform(st);
    g.setClip(sc);
  } else {
    tpmrtDrawBrand(g, 192);
  }
}

function paintTpmrtHoldLayout(g, state, train, side, goesRight, midYOff) {
  var phase = state.posPhase.stateNow();
  var useClock = (phase == "rte" || phase == "dpt");

  if (goesRight) {
    if (useClock) tpmrtDrawClock(g, 0);
    else tpmrtDrawDoorSide(g, 0, state, side);
    tpmrtDrawDestination(g, 1088, state);
  } else {
    tpmrtDrawDestination(g, 0, state);
    if (useClock) tpmrtDrawClock(g, 1088);
    else tpmrtDrawDoorSide(g, 1088, state, side);
  }
  if (midYOff > 0) {
    var sc = g.getClip();
    var st = g.getTransform();
    g.clipRect(192, 0, 896, 64);
    g.translate(0, midYOff);
    tpmrtDrawTrainHold(g, 192);
    g.setTransform(st);
    g.setClip(sc);
  } else {
    tpmrtDrawTrainHold(g, 192);
  }
}

function paintTpmrtDptLayout(g, state, train, side, goesRight) {
  if (goesRight) {
    tpmrtDrawClock(g, 0);
    tpmrtDrawDestination(g, 1088, state);
  } else {
    tpmrtDrawDestination(g, 0, state);
    tpmrtDrawClock(g, 1088);
  }
}

function tpmrtSlideOffset(elapsed) {
  var progress = Math.min(elapsed / TPMRT_SLIDE_DURATION, 1);
  return Math.floor((1 - progress) * 64 / 4) * 4;
}

function paintTpmrtScreen(g, state, train, side) {
  var transform = g.getTransform();

  g.setComposite(java.awt.AlphaComposite.Clear);
  g.fillRect(0, 0, 1280, 64);
  g.setComposite(java.awt.AlphaComposite.SrcOver);

  if (!state.tpmrt) {
    g.setTransform(transform);
    return;
  }

  var goesRight = (side == 1) != train.isReversed();
  var phase = state.posPhase.stateNow();
  var isHold = state.interruptPhase.stateNow() == "hold";

  if (isHold) {
    var yOff = tpmrtSlideOffset(state.interruptPhase.stateNowDuration());
    paintTpmrtHoldLayout(g, state, train, side, goesRight, yOff);
  } else if (phase == "do" && state.posPhase.stateNowDuration() < 3) {
    var yOff = tpmrtSlideOffset(state.posPhase.stateNowDuration());
    paintTpmrtBrandLayout(g, state, train, side, goesRight, yOff);
  } else if (phase == "do") {
    paintTpmrtLayout1(g, state, train, side, goesRight);
  } else if (phase == "dpt") {
    paintTpmrtDptLayout(g, state, train, side, goesRight);
  } else if (phase == "rte") {
    paintTpmrtLayout2(g, state, train, side, goesRight);
  } else if (phase == "appr" || phase == "arr") {
    paintTpmrtLayout3(g, state, train, side, goesRight);
  }

  g.setTransform(transform);
}
