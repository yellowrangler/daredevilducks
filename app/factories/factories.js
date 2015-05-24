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

    return factory;
});

dddApp.factory('requestsFactory', function($q, $http) {
    var factory = {};

    factory.getRequestItems = function () {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getrequestitems.php",
            // data: data,
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