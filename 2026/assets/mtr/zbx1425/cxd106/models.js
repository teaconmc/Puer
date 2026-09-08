include(Resources.id("mtrsteamloco:scripts/display_helper.js"));

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
var isMonorail = cxTrainType == "cxd106" || cxTrainType == "cxd109";
var monorailTypeLangen = cxTrainType == "cxd106";

if (monorailTypeLangen) {
  rawModelBogieBase = ModelManager.loadRawModel(Resources.manager(),
    Resources.idRelative("bogie_base.obj"), null);
  rawModelBogieBase.applyUVMirror(false, true);
  modelBogie = ModelManager.uploadVertArrays(rawModelBogieBase);
  
  rawModelBogieWheel = ModelManager.loadRawModel(Resources.manager(),
    Resources.idRelative("bogie_wheel.obj"), null);
  rawModelBogieWheel.applyUVMirror(false, true);
  rawModelBogieWheel.applyTranslation(0, -1.3723, 1);
  modelBogieWheel = ModelManager.uploadVertArrays(rawModelBogieWheel);
} else if (isMonorail) {
  rawModelBogieBase = ModelManager.loadRawModel(Resources.manager(),
    Resources.idRelative("bogie.obj"), null);
  rawModelBogieBase.applyUVMirror(false, true);
  rawModelBogieBase.applyTranslation(0, 0.4, 0);
  modelBogie = ModelManager.uploadVertArrays(rawModelBogieBase);
} else {
  rawModelBogieBase = ModelManager.loadRawModel(Resources.manager(),
    Resources.idr("bogie_mini.csv"), null);
  modelBogie = ModelManager.uploadVertArrays(rawModelBogieBase);
  rawModelEquipments = ModelManager.loadRawModel(Resources.manager(),
    Resources.idr("dipan1.csv"), null);
  modelEquipments = ModelManager.uploadVertArrays(rawModelEquipments);
  rawModelEquipmentsShort = rawModelEquipments.copy();
  rawModelEquipmentsShort.sourceLocation = null;
  rawModelEquipmentsShort.applyScale(1, 1, 0.6);
  modelEquipmentsShort = ModelManager.uploadVertArrays(rawModelEquipmentsShort);
}

let k = 0.97; 
function d3(val) {
  return Number(val.toFixed(3));
}
let slotCfg = {
  "version": 1,
  "texSize": [1280, 128],
  "renderType": "lighttranslucent",
  "slots": [
    {
      "name": "lcd_door_left",
      "texArea": [0, 0, 1280, 64],
      "pos": [
        [
          [d3(-0.803 + 0.046 * k), d3(2.011 + 0.054 * k), -1.806],
          [-0.803, 2.011, -1.806],
          [-0.803, 2.011, -3.197],
          [d3(-0.803 + 0.046 * k), d3(2.011 + 0.054 * k), -3.197]
        ]
      ],
      "offsets": [[0, 0, 5], [0, 0, 0]]
    },
    {
      "name": "lcd_door_right",
      "texArea": [0, 64, 1280, 64],
      "pos": [
        [
          [d3(0.803 - 0.046 * k), d3(2.011 + 0.054 * k), -3.197],
          [0.803, 2.011, -3.197],
          [0.803, 2.011, -1.806],
          [d3(0.803 - 0.046 * k), d3(2.011 + 0.054 * k), -1.806]
        ]
      ],
      "offsets": [[0, 0, 5], [0, 0, 0]]
    }
  ]
};
const dhBase = new DisplayHelper(slotCfg);

