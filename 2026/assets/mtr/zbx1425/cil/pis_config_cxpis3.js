var CXPIS3_CONFIG_PATH = "mtr:zbx1425/cil";

var CXPIS3_LED_CONFIG = {
  destn: {
    image: Resources.idr("led_destn_all.png"),
    imageCodes: [
      ":10S", ":10X",
      "EXC", "SKA", "SBC", "SFG", "SHJ",
      ""
    ]
  },
  trainNum: {
    image: Resources.idr("led_numbers.png"),
    imageCodes: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "S", "X", "K"],
    geometry: { "width": 36, "offsets": { "1": 4 } }
  }
};

var LED_EXTRA_RAWMODEL = ModelManager.loadRawModel(Resources.manager(), Resources.idr("cxd106_extra.obj"), null);
LED_EXTRA_RAWMODEL.applyUVMirror(false, true);
LED_EXTRA_RAWMODEL.applyTranslation(0, 0, 5);
var LED_EXTRA_MODEL = ModelManager.uploadVertArrays(LED_EXTRA_RAWMODEL);
