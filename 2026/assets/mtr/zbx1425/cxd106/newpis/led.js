importPackage(java.awt);

if (CXPIS3_LED_CONFIG && CXPIS3_LED_CONFIG.destn && CXPIS3_LED_CONFIG.destn.image) {
  var LED_destnImage = Resources.readBufferedImage(CXPIS3_LED_CONFIG.destn.image);
  var LED_destnYOffs = {};
  for (let i = 0; i < CXPIS3_LED_CONFIG.destn.imageCodes.length; i++) {
    let strideY = LED_destnImage.getHeight() / CXPIS3_LED_CONFIG.destn.imageCodes.length;
    LED_destnYOffs[CXPIS3_LED_CONFIG.destn.imageCodes[i]] = i * strideY;
  }
}

if (CXPIS3_LED_CONFIG && CXPIS3_LED_CONFIG.trainNum && CXPIS3_LED_CONFIG.trainNum.image) {
  var LED_trainNumImage = Resources.readBufferedImage(CXPIS3_LED_CONFIG.trainNum.image);
}

function LED_getConfig() {
  let isCXD107 = true;
  print(JSON.stringify(CXPIS3_LED_CONFIG.destn));
  let config = {
    model: LED_EXTRA_MODEL,
    destn: CXPIS3_LED_CONFIG.destn,
    trainNum: CXPIS3_LED_CONFIG.trainNum
  };
  config.destn.enable = isCXD107;
  config.trainNum.enable = isCXD107;
  return config;
}

function LED_getVehicleStateDestn(train) {
  let stations = train.getThisRoutePlatforms();
  if (stations && stations.size() > 0) {
    let lastStop = stations.get(stations.size() - 1);
    if (!lastStop.station) return null;
    for (let it = lastStop.station.exits.entrySet().iterator(); it.hasNext(); ) {
      let entry = it.next();
      if (entry.getKey() == "Z99") {
        for (let index in entry.getValue()) {
          return entry.getValue().get(index);
        }
      }
    }
  }
  return null;
}

function LED_getVehicleStateRouteCode(train) {
  let stations = train.getThisRoutePlatforms();
  let nextIndex = train.getThisRoutePlatformsNextIndex();
  let nextStop = nextIndex < stations.size() ? stations.get(nextIndex) : null;
  if (nextStop == null || !nextStop.route) return null;
  return TextUtil.getExtraParts(nextStop.route.name);
}

function LED_create(ctx, state, train) {
  state.LED_config = LED_getConfig();
  let anyFeatureEnabled = false;
  if (state.LED_config.destn.enable) {
    anyFeatureEnabled = true;
    state.LED_destn_current = null;
  }
  if (state.LED_config.trainNum.enable) {
    anyFeatureEnabled = true;
    state.LED_trainNum_current = null;
  }
  state.LED_anyFeatureEnabled = anyFeatureEnabled;
  if (anyFeatureEnabled) {
    state.LED_gTex = new GraphicsTexture(512, 256);
    state.LED_model = state.LED_config.model.copyForMaterialChanges();
    state.LED_model.replaceTexture("pis_placeholder.png", state.LED_gTex.identifier);
  }
}

function LED_render(ctx, state, train) {
  let anyFeatureUpdated = false;
  let g = state.LED_anyFeatureEnabled ? state.LED_gTex.graphics : null;

  if (state.LED_config.destn.enable) {
    let routeCode = LED_getVehicleStateRouteCode(train);
    let routeKey = routeCode != null ? (":" + routeCode) : null;

    let destnKey;
    if (routeKey != null && LED_destnYOffs[routeKey] !== undefined) {
      destnKey = routeKey;
    } else {
      let realDestn = LED_getVehicleStateDestn(train);
      destnKey = (realDestn != null) ? realDestn : "";
    }

    if (destnKey != state.LED_destn_current) {
      state.LED_destn_current = destnKey;
      anyFeatureUpdated = true;
      let yOff = LED_destnYOffs[destnKey];
      if (yOff === undefined) yOff = LED_destnYOffs[""];
      g.setComposite(AlphaComposite.Src);
      g.drawImage(
        LED_destnImage,
        0, 0, 320, 96,
        0, yOff, 320, yOff + 96,
        null
      );
      g.setComposite(AlphaComposite.SrcOver);
    }
  }

  if (state.LED_config.trainNum.enable) {
    let leg = getVehicleStateLeg(train);
    let depIndex = train.getDepartureIndex() % 100;
    let trainNum;
    if (leg != null && ("" + leg[0]).length == 3) {
      trainNum = depIndex.toString().padStart(2, '0') + ("" + leg[0]).substring(2, 3);
    } else {
      trainNum = (depIndex % 100).toString().padStart(2, '0') + "K";
    }

    if (trainNum != state.LED_trainNum_current) {
      state.LED_trainNum_current = trainNum;
      anyFeatureUpdated = true;

      let totalWidth = 0;
      for (let i = 0; i < trainNum.length; i++) {
        let char = trainNum.charAt(i);
        let charUOffset = state.LED_config.trainNum.geometry.offsets[char]
          ? state.LED_config.trainNum.geometry.offsets[char] : 0;
        let charWidth = state.LED_config.trainNum.geometry.width - charUOffset;
        totalWidth += charWidth;
      }

      g.setComposite(AlphaComposite.Clear);
      g.fillRect(0, 96, 32 * 5, 96);
      let totalXOff = Math.floor(((state.LED_config.trainNum.geometry.width * 5 - totalWidth) / 2) / 4) * 4;
      let crntXOff = totalXOff;
      g.setComposite(AlphaComposite.Src);
      for (let i = 0; i < trainNum.length; i++) {
        let char = trainNum.charAt(i);
        let charIndex = state.LED_config.trainNum.imageCodes.indexOf(char);

        let charUOffset = state.LED_config.trainNum.geometry.offsets[char]
          ? state.LED_config.trainNum.geometry.offsets[char] : 0;
        let charLeft = charIndex * state.LED_config.trainNum.geometry.width + charUOffset;
        let charWidth = state.LED_config.trainNum.geometry.width - charUOffset;

        g.drawImage(
          LED_trainNumImage,
          crntXOff, 96 + 20, crntXOff + charWidth, 96 + 20 + LED_trainNumImage.getHeight(),
          charLeft, 0, charLeft + charWidth, LED_trainNumImage.getHeight(),
          null
        );
        crntXOff += charWidth;
      }
      g.setComposite(AlphaComposite.SrcOver);
    }
  }

  if (anyFeatureUpdated) {
    state.LED_gTex.upload();
  }

  if (state.LED_anyFeatureEnabled) {
    for (let i = 0; i < train.trainCars(); i++) {
      if (i == 0 && train.trainCars() == 1) {
        // Single-car: no LED display
      } else if (i == 0) {
        let matrices = new Matrices();
        matrices.rotateY(Math.PI);
        matrices.translate(0, 0, -5);
        ctx.drawCarModel(state.LED_model, i, matrices);
      } else if (i == train.trainCars() - 1) {
        let matrices = new Matrices();
        matrices.translate(0, 0, -5);
        ctx.drawCarModel(state.LED_model, i, matrices);
      }
    }
  }
}

function LED_dispose(ctx, state, train) {
  if (state.LED_anyFeatureEnabled) {
    state.LED_gTex.close();
  }
}
