
function uploadPartedModels(rawModels) {
  result = {};
  for (it = rawModels.entrySet().iterator(); it.hasNext(); ) {
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

rawModelBogie = ModelManager.loadRawModel(Resources.manager(),
  Resources.idRelative("bogie.obj"), null);
rawModelBogie.applyUVMirror(false, true);
modelBogie = ModelManager.uploadVertArrays(rawModelBogie);

rawModelBogieAir = ModelManager.loadRawModel(Resources.manager(),
  Resources.idRelative("bogie_air.obj"), null);
  rawModelBogieAir.applyUVMirror(false, true);
modelBogieAir = ModelManager.uploadVertArrays(rawModelBogieAir);
