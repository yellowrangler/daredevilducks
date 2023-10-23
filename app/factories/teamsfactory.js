dddApp.factory('teamsFactory', function($q, $http) {
    var factory = {};

    factory.getTeamBracket = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteambracket.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }
    
    factory.saveTeamBracket = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/saveteambracket.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLTeams = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflteams.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateTeamInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updateteaminfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLGamesTeams = function (data) {
        var dataSeason = "season="+data;
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgamesteams.php",
            data: dataSeason,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNextGameNbr = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnextgamenbr.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLGameWeekTeams = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgameweekteams.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.saveGameWeekTeamsNetworkInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/savegameweekteamsnetworkinfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.saveGameWeekTeamsScoreInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/savegameweekteamsscoreinfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.saveGameDateTimeWeekTeamsInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/savegamedatetimeweekteamsinfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLnetworks = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnetworks.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateGameInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updategameinfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addGameInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addgameinfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLTeamstats = function (data) {
        

        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflteamstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLTeamseasons = function (data) {
        var dataSeason = "season="+data;

        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflseasons.php",
            data: dataSeason,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLTeamseasonweeks = function (data) {
        var dataSeason = "season="+data;

        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflseasonweeks.php",
            data: dataSeason,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLGamesWeekMemberTeams = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgameweekmemberteams.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLGamesWeekMemberTeamsExpired = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgameweekmemberteamsexpired.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLGamesWeekMemberTeamsExpiredAugmented = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgameweekmemberteamsexpiredaugmented.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLByeWeekMemberTeams = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflbyeweekmemberteams.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLGamesWeekMemberTeamPicks = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgameweekmemberteampicks.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getMemberTeamPickListDialog = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmemberteampicklistdialog.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLGametypes = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgametypes.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getCurrentSeasonWeek = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getcurrentseasonweek.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getLeaderMembers = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getleadermembers.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getMemberWeekStats = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmemberweekstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNow = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnow.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getTeamWeekyRanking = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteamweekyranking.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getTeamsPowerRankings = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteamspowerrankings.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getTeamPowerRankings = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteampowerrankings.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getTeamsStatsCurrentWeek = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteamsstatscurrentweek.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAdminTeamWeeklyRanking = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getadminteamweeklyranking.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.saveAdminTeamWeeklyRanking = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/saveadminteamweeklyranking.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getTeamStandingsDialog = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteamstatsdialog.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getPlayerInjuryDialog = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getplayerinjurydialog.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getPlayerInjuryHTMLDialog = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getplayerinjuryhtmldialog.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNflTeam = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflteam.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLpostseasonstatus = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getNFLpostseasonstatus.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getTeamSeasonInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteamseasoninfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateTeamSeasonInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updateteamseasoninfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLrss = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflrss.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getrss = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getrss.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});