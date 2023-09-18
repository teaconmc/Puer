function getStationConfig(stations, nextIndex) {
  var result = Object.assign({}, pisConfig["default"]);
  if (nextIndex >= stations.size() || nextIndex < 0) return result;
  
  var exitStr = "";
  for (var it = stations.get(nextIndex).station.exits.entrySet().iterator(); it.hasNext(); ) {
    var entry = it.next();
    if (entry.getKey().startsWith("Z")) {
      for (var index in entry.getValue()) {
        var stationCfg = JSON.parse(entry.getValue().get(index));
        Object.assign(result, stationCfg);
      }
    } else {
      for (var index in entry.getValue()) {
        exitStr += entry.getValue().get(index) + "\n";
      }
    }
  }
  result["exitStr"] = exitStr.trim();
  
  var routeCode = ("" + TextUtil.getExtraParts(stations.get(nextIndex).route.name))
    .split("/")[0].toLowerCase();
  var stationCode = result["code"] === (void 0) ? "" : result["code"].toLowerCase();
  result["routeStationCode"] = routeCode + "_" + stationCode;

  if (pisConfig["routeStations"][result["routeStationCode"]] !== (void 0)) {
    Object.assign(result, pisConfig["routeStations"][result["routeStationCode"]]);
  }

  return result;  
}
