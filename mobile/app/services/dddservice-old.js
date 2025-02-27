dddApp.service('dddAppService', function () {

});

dddApp.service('msgService', function () {

    this.getEmptyMsg = function() {
        var msg = emptyMsg;

        return msg;
    }

    this.createMsgforModal = function(title, body) {
        var msgStr = '[ { "title":"' + title + '" , "body":"'+body+'" } ]';
        var msg = JSON.parse(msgStr);

        return msg;
    }

    var emptyMsg = [
        {  }
    ];

});

dddApp.service('nflTeamsService', function () {

    //-------------------------------------- 
    // teams services
    //-------------------------------------- 

    // 
    // set teams
    //
    this.setNFLTeams = function(json) {
        nflTeams = json;

        return;
    }

    // 
    // get teams
    //
    this.getNFLTeams = function() {
        return nflTeams;
    }

    // 
    // teams object
    //
    var nflTeams = [
        {  }
    ];

    //-------------------------------------- 
    // team stats services
    //-------------------------------------- 

    // 
    // set team stats
    //
    this.setNFLTeamstats = function(json) {
        nflTeamstats = json;

        return;
    }

    // 
    // get team stats
    //
    this.getNFLTeamstats = function() {
        return nflTeamstats;
    }

    // 
    // team stats object
    //
    var nflTeamstats = [
        {  }
    ];

    //-------------------------------------- 
    // team season services
    //-------------------------------------- 

    // 
    // set team season
    //
    this.setNFLTeamseasons = function(json) {
        nflTeamseasons = json;

        return;
    }

    // 
    // get team season
    //
    this.getNFLTeamseasons = function() {
        return nflTeamseasons;
    }

    // 
    // team season object
    //
    var nflTeamseasons = [
        {  }
    ];

    //-------------------------------------- 
    // team week services
    //-------------------------------------- 

    // 
    // set team week
    //
    this.setNFLTeamseasonweeks = function(json) {
        nflTeamseasonweeks = json;

        return;
    }

    // 
    // get team week
    //
    this.getNFLTeamseasonweeks = function() {
        return nflTeamseasonweeks;
    }

    // 
    // team week object
    //
    var nflTeamseasonweeks = [
        {  }
    ];

    //-------------------------------------- 
    // game types services
    //-------------------------------------- 

    // 
    // set game types
    //
    this.setNFLGametypes = function(json) {
        nflGametypes = json;

        return;
    }

    // 
    // get game types
    //
    this.getNFLGametypes = function() {
        return nflGametypes;
    }

    // 
    // game type object
    //
    var nflGametypes = [
        {  }
    ];

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

});

dddApp.service('loginService', function () {
    this.setLoginLogoffLabel = function(labelid, action) {
        var login = this.getLogin();

        // get the text for login title
        var logintext = this.getLoginLogoffLabels();

        var location = "";

        if (login == null)
        {
            $("#"+labelid).text(logintext.login.text);
            // $("#"+avatarlabelid).text("");
            if (action)
                location = "/login";
        }
        else
        {
            
            if (action)
            {
                this.removeLogin();
                $("#"+labelid).text(logintext.login.text);
                location = "/home";
            }
            else
            {
                $("#"+labelid).html(login.screenname+"<br /> "+logintext.logoff.text);
            }
        } 

        return location;
    }

    this.setAvatarLabel = function(labelid, action) {
        var login = this.getLogin();

        if (login == null)
        {
            $("#"+labelid).text("");
        }
        else
        {
            if (action)
            {
                $("#"+labelid).text("");
            }
            else
            {
                $("#"+labelid).text(login.screenname);
            }
        } 
    }

    this.getLoginLogoffLabels = function() {
        var labels = loginLogoffService;

        return labels;
    }

    this.isLoggedIn = function() {
        var login = this.getLogin();
        if (login == null)
            return false
        else
            return true;
    }

    this.getMemberRole = function() {
        var role = "";
        var login = "";

        var login = this.getLogin();
        if (login != null)
        {
            var role = login.role;
        }
        

        return role;
    }

    this.getMemberAvatar= function() {
        var memberavatar = "";
        var login = "";

        var login = this.getLogin();
        if (login != null)
        {
            var memberavatar = login.avatar;
        }
        

        return memberavatar;
    }

    this.getEmptyLogin = function() {
        var login = emptyLogin;

        return login;
    }

    this.getLogin = function() {
        var loginStr = this.retreiveLogin();
        var login = JSON.parse(loginStr);

        return login;
    }

    this.addLogin = function(login) {
        // var login ="";

        var loginStr = JSON.stringify(login);
        this.saveLogin(loginStr);

        return login;
    }

    this.saveLogin = function (loginStr) {
        localStorage.removeItem("dddLogin");
        localStorage.setItem("dddLogin", loginStr);
    }

    this.retreiveLogin = function () {
        var loginStr = localStorage.getItem("dddLogin");

        return loginStr;
    }

    this.removeLogin = function () {
        localStorage.removeItem("dddLogin");
    }

    var emptyLogin = [
        {  }
    ];

    var loginLogoffService = 
        {
            "login" : 
                {
                    "text": "Login"
                }, 
            "logoff" : 
                {
                    "text": "Logoff"
                }   
        };
});

