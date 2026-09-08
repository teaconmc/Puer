const MTRUtil = {
    getClosePlatform(pos, radius, lower, upper) {
        if(radius == null) radius = 5;
        if(lower == null) lower = 0;
        if(upper == null) upper = 4;
        let platforms = MTRClientData.PLATFORMS;
        let dataCache = MTRClientData.DATA_CACHE;

        let platform = 0;
        for (let i = 1; i <= radius; i++) {
            let searchRadius = i;
            platform = platforms.stream().filter(platform => platform.isCloseToSavedRail(pos, searchRadius, lower, upper)).min(java.util.Comparator.comparingInt(platform => new Vector3f(platform.getMidPos()).distance(new Vector3f(pos)))).orElse(null);
            if (platform != null) {
                break;
            }
        }
        return platform;
    },
    getETAForPlatform(platformId) {
        let list = MTRClientData.SCHEDULES_FOR_PLATFORM.get(new java.lang.Long(platformId))
        let arr = [];
        if(list != null) {
            list.forEach(scheduleEntry => {
                arr.push(scheduleEntry);
            });
        }
        
        arr.sort((a, b) => a.arrivalMillis - b.arrivalMillis);
        return arr;
    }
}