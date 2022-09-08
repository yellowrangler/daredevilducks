dddAppMobile.service('nflTeamsService', function () {

    //-------------------------------------- 
    // teams services
    //-------------------------------------- 
    var dataKeyTeams = "nflteams";
    var dataKeySeasons = "nflseasons";
    var dataKeyWeeks = "nflweeks";  
    var dataKeyGameTypes = "gametypes";  
    var dataKeyNetworks = "nflnetworks";    
    var dataKeypostseasonstatus = "nflpostseasonstatus";  
    var dataKeynflrss = "nflrss";       

    // 
    // set teams
    //
    this.setNFLTeams = function(json) {

        this.addLocalNFLdata(json, dataKeyTeams, "json");

        return;
    }

    // 
    // get teams
    //
    this.getNFLTeams = function() {

        var nflteams = this.getLocalNFLdata(dataKeyTeams, "json");

        return nflteams;
    }

    // 
    // remove teams
    //
    this.removeNFLTeams = function() {
        var nflteams = this.removeLocalNFLdata(dataKeyTeams);
    }

    //-------------------------------------- 
    // team season services
    //-------------------------------------- 

    // 
    // set team seasons
    //
    this.setNFLTeamseasons = function(json) {
        // console.log("set team seasons");
        // console.log(json);
        this.addLocalNFLdata(json, dataKeySeasons, "json");

        return;
    }

    // 
    // remove team seasons
    //
    this.getNFLTeamseasons = function() {
        
        var nflseasons = this.getLocalNFLdata(dataKeySeasons, "json");

        return nflseasons;
    }

    // 
    // remove team seasons
    //
    this.removeNFLTeamseasons = function() {
        var nflseasons = this.removeLocalNFLdata(dataKeySeasons);
    }

    //-------------------------------------- 
    // game types services
    //-------------------------------------- 

    // 
    // set game types
    //
    this.setNFLGametypes = function(json) {
        this.addLocalNFLdata(json, dataKeyGameTypes, "json");

        return;
    }

    // 
    // get game types
    //
    this.getNFLGametypes = function() {
        var nflGametypes = this.getLocalNFLdata(dataKeyGameTypes, "json");

        return nflGametypes;
    }

    // 
    // remove game types
    //
    this.removeNFLTeamseasons = function() {
        var nflGametypes = this.removeLocalNFLdata(dataKeyGameTypes);
    }

    //-------------------------------------- 
    // nfl networks services
    //-------------------------------------- 

    // 
    // set nfl networks
    //
    this.setNFLnetworks = function(json) {
        this.addLocalNFLdata(json, dataKeyNetworks, "json");

        return;
    }

    // 
    // get nfl networks
    //
    this.getNFLnetworks = function() {
        var nflnetworks = this.getLocalNFLdata(dataKeyNetworks, "json");

        return nflnetworks;
    }

    // 
    // remove nfl networks
    //
    this.removeNFLnetworks = function() {
        var nflnetworks = this.removeLocalNFLdata(dataKeyNetworks);
    }

    //-------------------------------------- 
    // nfl postseasonstatus services
    //-------------------------------------- 

    // 
    // set nfl postseasonstatus
    //
    this.setNFLpostseasonstatus = function(json) {
        this.addLocalNFLdata(json, dataKeypostseasonstatus, "json");

        return;
    }

    // 
    // get nfl postseasonstatus
    //
    this.getNFLpostseasonstatus = function() {
        var nflpostseasonstatus = this.getLocalNFLdata(dataKeypostseasonstatus, "json");

        return nflpostseasonstatus;
    }

    // 
    // remove nfl postseasonstatus
    //
    this.removeNFLpostseasonstatus = function() {
        var nflpostseasonstatus = this.removeLocalNFLdata(dataKeypostseasonstatus);
    }

    //-------------------------------------- 
    // nfl rss services
    //-------------------------------------- 

    // 
    // set nfl rss
    //
    this.setNFLrss = function(json) {
        this.addLocalNFLdata(json, dataKeynflrss, "json");

        return;
    }

    // 
    // get nfl rss
    //
    this.getNFLrss = function() {
        var nflrss = this.getLocalNFLdata(dataKeynflrss, "json");

        return nflrss;
    }

    // 
    // remove nfl rss
    //
    this.removeNFLrss = function() {
        var nflrss = this.removeLocalNFLdata(dataKeynflrss);
    }

    //---------------------------------------------------
    // selected choice values
    //---------------------------------------------------

    //
    // current season
    //
    this.getCurrentSeason = function() {
        var currentSeasonStr = this.retreiveCurrentSeason();

        return currentSeasonStr;
    }

    this.addCurrentSeason = function(currentSeason) {
        var currentSeasonStr = currentSeason;

        this.saveCurrentSeason(currentSeasonStr);

        return currentSeasonStr;
    }

    this.saveCurrentSeason = function (currentSeasonStr) {
        localStorage.removeItem("dddCurrentSeason");
        localStorage.setItem("dddCurrentSeason", currentSeasonStr);
    }

    this.retreiveCurrentSeason = function () {
        var currentSeasonStr = localStorage.getItem("dddCurrentSeason");

        if (currentSeasonStr == null)
        {
            var dt = new Date();
            var currentSeasonStr = dt.getFullYear();

            this.addCurrentSeason(currentSeasonStr);
        }

        return currentSeasonStr;
    }

    this.removeCurrentSeason = function () {
        localStorage.removeItem("dddCurrentSeason");
    }

    //
    // current week
    //
    this.getCurrentWeek = function() {
        var currentWeekStr = this.retreiveCurrentWeek();

        return currentWeekStr;
    }

    this.addCurrentWeek = function(currentWeek) {
        var currentWeekStr = currentWeek;

        this.saveCurrentWeek(currentWeekStr);

        return currentWeekStr;
    }

    this.saveCurrentWeek = function (currentWeekStr) {
        localStorage.removeItem("dddCurrentWeek");
        localStorage.setItem("dddCurrentWeek", currentWeekStr);
    }

    this.retreiveCurrentWeek = function () {
        var currentWeekStr = localStorage.getItem("dddCurrentWeek");

        if (currentWeekStr == null)
        {
            var currentWeekStr = "1";

            this.addCurrentWeek(currentWeekStr);
        }

        return currentWeekStr;
    }

    this.removeCurrentWeek = function () {
        localStorage.removeItem("dddCurrentWeek");
    }

    //---------------------------------------------------
    // nfl team service local data functions
    //---------------------------------------------------
    this.getLocalNFLdata = function(dataKey, dataType) {
        var dataStr = this.retreiveLocalNFLdata(dataKey);

        if (dataType == "json")
        {
            dataStr = JSON.parse(dataStr);
        }

        return dataStr;
    }

    this.addLocalNFLdata = function(dataAddStr, dataKey, dataType) {
        var dataStr = "";

        if (dataType == "json")
        {
            dataStr = JSON.stringify(dataAddStr);
        }
        else
        {
            dataStr = dataAddStr;
        }

        this.saveLocalNFLdata(dataStr, dataKey);
    }

    this.saveLocalNFLdata = function (dataAddStr, dataKey) {
        localStorage.removeItem(dataKey);
        localStorage.setItem(dataKey, dataAddStr);
    }

    this.retreiveLocalNFLdata = function (dataKey) {
        var dataAddStr = localStorage.getItem(dataKey);

        return dataAddStr;
    }

    this.removeLocalNFLdata = function (dataKey) {
        localStorage.removeItem(dataKey);
    }

});