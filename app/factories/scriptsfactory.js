dddApp.factory('scriptsFactory', function($q, $http) {
    var factory = {};

    factory.initializeTeamWeekStats = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/initializeteamweekstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getmemberpicklist = function (data) {
        return $http({
            method: 'POST', 
            url: "app/ajax/getmemberpicklist.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.importplayerinjuryFile = function (data) {
        return $http({
            method: 'POST', 
            url: "app/ajax/importplayerinjuryfile.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getbadmemberpicks = function (data) {
        return $http({
            method: 'POST', 
            url: "app/ajax/getbadmemberpicks.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.initializeMemberWeekStats = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/initializememberweekstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.buildTeamStats = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/buildteamstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.buildTeamWeekStats = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/buildteamweekstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.buildMemberStats = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/buildmemberstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.buildMemberWeekStats = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/buildmemberweekstats.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.buildMySqlDump = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/buildmysqldump.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.importTeamWeeklyRankFile = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/importteamweeklyrankfile.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.importSurveyQuestionDataFile = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/importsurveyquestiondata.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.importSurveyQuestionDataFile = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/importsurveyquestiondata.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.importNewSeasonGames = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/importnewseasongames.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.importNewSeasonByes = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/importnewseasonbyes.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.importNewSeasonGameWeeks = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/importnewseasongameweeks.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});
