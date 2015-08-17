// define factories
dddApp.factory('nflteamsFactory', function($q, $http) {
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

    factory.getNFLGamesTeams = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgamesteams.php",
            // data: data,
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

    factory.getNFLTeamstats = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflteamstats.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLTeamseasons = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflseasons.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getNFLTeamseasonweeks = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflseasonweeks.php",
            // data: data,
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

    factory.getNFLGametypes = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflgametypes.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getSeasonCurrentWeek = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getcurrentseasonweek.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});

dddApp.factory('membersFactory', function($q, $http) {
    var factory = {};

    factory.getMembers = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmembers.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addmember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updatemember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.deleteMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/deletemember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.saveMemberAvatar = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/savememberavatar.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addMemberGameTeamPick = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addmembergameteampick.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});

dddApp.factory('loginFactory', function($q, $http) {
    var factory = {};

    factory.getRequestItems = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/login.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});

dddApp.factory('keyrequestsFactory', function($q, $http) {
    var factory = {};

    factory.getkeyrequestItems = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getkeyrequestitems.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});

dddApp.factory('temploginFactory', function($q, $http) {
    var factory = {};

    factory.changeTempPassword = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/changetemppassword.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;

});

dddApp.factory('loginFactory', function($q, $http) {
    var factory = {};

    factory.loginPassword = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/login.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;

});