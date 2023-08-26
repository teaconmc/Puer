function getStationConfig(stations, nextIndex) {
  result = pisConfig["routes"][""][""];
  if (stations.size() < 2) return result;
  var routeQueryName1 = TextUtil.getNonCjkAndExtraParts(stations.get(0).route.name);
  var routeQueryName2 = TextUtil.getNonCjkParts(stations.get(0).route.name);
  var stationQueryName = nextIndex < stations.size() ? TextUtil.getNonCjkAndExtraParts(stations.get(nextIndex).station.name) : "";
  if (pisConfig["routes"][routeQueryName2] != void 0) {
    if (pisConfig["routes"][routeQueryName2][""] != void 0) {
      for (var attrname in pisConfig["routes"][routeQueryName2][""]) {
        result[attrname] = pisConfig["routes"][routeQueryName2][""][attrname];
      }
    }
    if (pisConfig["routes"][routeQueryName2][stationQueryName] != void 0) {
      for (var attrname in pisConfig["routes"][routeQueryName2][stationQueryName]) {
        result[attrname] = pisConfig["routes"][routeQueryName2][stationQueryName][attrname];
      }
    }
  }
  if (pisConfig["routes"][routeQueryName1] != void 0) {
    if (pisConfig["routes"][routeQueryName1][""] != void 0) {
      for (var attrname in pisConfig["routes"][routeQueryName1][""]) { 
        result[attrname] = pisConfig["routes"][routeQueryName1][""][attrname];
      }
    }
    if (pisConfig["routes"][routeQueryName1][stationQueryName] != void 0) {
      for (var attrname in pisConfig["routes"][routeQueryName1][stationQueryName]) { 
        result[attrname] = pisConfig["routes"][routeQueryName1][stationQueryName][attrname];
      }
    }
  }
  return result;  
}
