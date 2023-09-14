function getStationConfig(stations, nextIndex) {
  var result = pisConfig["default"];
  if (nextIndex >= stations.size() || nextIndex < 0) return result;
  
  var exitStr = "";
  for (var it = stations.get(nextIndex).station.exits.entrySet().iterator(); it.hasNext(); ) {
    var entry = it.next();
    if (entry.getKey().startsWith("Z")) {
      for (var index in entry.getValue()) {
        var stationCfg = JSON.parse(entry.getValue().get(index));
        for (var attrname in stationCfg) {
          result[attrname] = stationCfg[attrname];
        }
      }
    } else {
      for (var index in entry.getValue()) {
        exitStr += entry.getValue().get(index) + "\n";
      }
    }
  }
  result["exitStr"] = exitStr.trim();
  return result;  
}
