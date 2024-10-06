
function uploadPartedModels(rawModels) {
  var result = {};
  for (var it = rawModels.entrySet().iterator(); it.hasNext(); ) {
    entry = it.next();
    entry.getValue().applyUVMirror(false, true);
    result[entry.getKey()] = ModelManager.uploadVertArrays(entry.getValue());
  }
  return result;
}

rawModelGizmo = ModelManager.loadRawModel(Resources.manager(), Resources.idRelative("gizmo.obj"), null);
modelGizmo = ModelManager.uploadVertArrays(rawModelGizmo);

// S-Train Mini

rawModels = ModelManager.loadPartedRawModel(Resources.manager(), 
  Resources.idRelative("s_train_mini.obj"), null);
models = uploadPartedModels(rawModels);

idTexConnector = Resources.idRelative("s_train_connector.png");

// Bogie

rawModelBogieBase = ModelManager.loadRawModel(Resources.manager(),
  Resources.idRelative("bogie_base.obj"), null);
rawModelBogieBase.applyUVMirror(false, true);
modelBogie = ModelManager.uploadVertArrays(rawModelBogieBase);

rawModelBogieAir = ModelManager.loadRawModel(Resources.manager(),
  Resources.idRelative("bogie_rocket.obj"), null);
rawModelBogieAir.applyUVMirror(false, true);
rawModelBogieAir.append(rawModelBogieBase);
modelBogieAir = ModelManager.uploadVertArrays(rawModelBogieAir);

rawModelBogieWheel = ModelManager.loadRawModel(Resources.manager(),
  Resources.idRelative("bogie_wheel.obj"), null);
rawModelBogieWheel.applyUVMirror(false, true);
rawModelBogieWheel.applyTranslation(0, -1.3723, 1);
modelBogieWheel = ModelManager.uploadVertArrays(rawModelBogieWheel);
