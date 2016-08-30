dddApp.service('dddAppService', function () {

});

dddApp.service('selectListService', function () {

    this.getList = function(listName) {
        var thisList = emptyList;

        switch (listName) 
        {
            case 'emt':
                thisList = emtList;
                break;

        }

        return thisList;
    }

    var emptyList = [
        {   }
    ];

    var emtList = [ 
        {  
            title :  "Welcome",
            url : "welcome-email.html"
        },
        {  
            title :  "New Season",
            url : "welcome-new-season-email.html"
        },
        {  
            title :  "Game week",
            url : "gameweek-email.html"
        },
        {  
            title :  "Team Weekly Rankings",
            url : "teamweeklyrankings-email.html"
        },
        {  
            title :  "Late Picks",
            url : "latepicks-email.html"
        }, 
        {  
            title :  "Late Picks Day Of",
            url : "latepicksdayof-email.html"
        }, 
        {  
            title :  "Ooops Moment",
            url : "oops-email.html"
        }, 
        {  
            title :  "Site Problems",
            url : "siteproblems-email.html"
        },  
        {  
            title :  "Site Down",
            url : "sitedown-email.html"
        }
    ];

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
                $("#"+labelid).html(logintext.login.text);
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

