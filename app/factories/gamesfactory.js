dddApp.factory('gamesFactory', function($q, $http) {
    var factory = {};

    factory.getNFLWeekGamesInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getnflweekgamesinfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.saveNFLWeekGamesInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/savenflweekgamesInfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    

    return factory;
});