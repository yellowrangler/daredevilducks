dddApp.factory('teamsFactory', function($q, $http) {
    var factory = {};

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

    factory.getTeamPowerRankingAlltoDate = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getteampowerrankingalltodate.php",
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
            type: 'POST', 
            url: "app/ajax/getnflrss.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});