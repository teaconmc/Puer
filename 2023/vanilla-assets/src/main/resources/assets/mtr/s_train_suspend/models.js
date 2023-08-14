
function uploadPartedModels(rawModels) {
  result = {};
  for (it = rawModels.entrySet().iterator(); it.hasNext(); ) {
    entry = it.next();
    entry.getValue().applyUVMirror(false, true);
    result[entry.getKey()] = ModelManager.uploadVertArrays(entry.getValue());
  }
  return result;
}

// S-Train Mini

rawModelsHead1 = ModelManager.loadPartedRawModel(Resources.manager(), 
  Resources.idRelative("s_train_mini_head1.obj"), null);
rawModelsCenter = ModelManager.loadPartedRawModel(Resources.manager(),
  Resources.idRelative("s_train_mini_head0.obj"), null);
rawModelsHead2 = ModelManager.loadPartedRawModel(Resources.manager(), 
  Resources.idRelative("s_train_mini_head2.obj"), null);
rawModelsHead12 = ModelManager.loadPartedRawModel(Resources.manager(), 
  Resources.idRelative("s_train_mini_head12.obj"), null);

modelHead1 = uploadPartedModels(rawModelsHead1);
modelCenter = uploadPartedModels(rawModelsCenter);
modelHead2 = uploadPartedModels(rawModelsHead2);
modelHead12 = uploadPartedModels(rawModelsHead12);

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
