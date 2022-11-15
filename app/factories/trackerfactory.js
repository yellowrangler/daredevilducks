dddApp.factory('trackerFactory', function($q, $http) {
    var factory = {};

    factory.getTrackerReview = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/gettrackerreview.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }
    

    return factory;
});