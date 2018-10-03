// define factories
dddAppMobile.factory('loginFactory', function($q, $http) {
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