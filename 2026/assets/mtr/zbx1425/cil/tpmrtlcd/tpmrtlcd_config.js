
// 72x64, 4px bleed l&r
var TPMRTLCD_ARROWS = {
    l: Resources.idr("arrow_l.png"),
    r: Resources.idr("arrow_r.png")
}

// 264x(64xn); w256 actual, 4px bleed l&r
var TPMRTLCD_STA_NAMES_CN = {
    regular: Resources.idr("sta_name_reg.png"),
    small: Resources.idr("sta_name_small.png"),
    inverse: Resources.idr("sta_name_inv.png"),
    codes: [
        "SKA", "SBC", "EXC", "SFG" ,"SHJ"
    ]
}

// 200x(64xn); w192 actual, 4px bleed l&r
var TPMRTLCD_DESTNS = {
    cn: Resources.idr("destn_cn.png"),
    en: Resources.idr("destn_en.png"),
    codes: [
        ":10S", ":10X",
        "EXC", "SKA", "SBC", "SFG", "SHJ",
        ""
    ]
}

// (36xn)x64, Similar to cxpis3 trainNum
var TPMRTLCD_CLOCK = {
    image: Resources.idr("clock.png"),
    imageCodes: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ":"],
    geometry: { "width": 36, "offsets": { "1": 4, ":": 20 } }
}

// 200x(64x4); w192 actual, 4px bleed l&r
// h: 4 images stacked: this side cn, this side en, other cn, other en
var TPMRTLCD_DOOR_SIDE = Resources.idr("door_side.png")

// 896x64
var TPMRTLCD_BRAND = Resources.idr("brand.png")

// 896x64 （图片还没做，稍后用户自己提供）
var TPMRTLCD_TRAIN_HOLD = Resources.idr("train_hold.png")
