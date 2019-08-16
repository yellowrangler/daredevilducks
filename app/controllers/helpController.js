controllers.helpController = function ($scope, $http, $location, $window) {
   
    init();
    function init() {
        $window.scrollTo(0, 0);

        $scope.current.path = $location.path();

        var i = 0;


    };

    $scope.goBack = function (locationhash) {
        $location.path(locationhash);
    }
}
