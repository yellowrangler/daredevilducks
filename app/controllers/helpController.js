controllers.helpController = function ($scope, $http, $location, $window) {
   
    init();
    function init() {
        $window.scrollTo(0, 0);

        $scope.current.path = $location.path();

        var str = $scope.current.path;
        var trackactionArray = str.split("/");
        var trackaction = trackactionArray[1];

        $scope.$parent.tracker('help for '+trackaction,
              'helpRequest',
              'helpController',
              'NA',
              'NA');
    };

    $scope.goBack = function (locationhash) {
        $location.path(locationhash);
    }
}
