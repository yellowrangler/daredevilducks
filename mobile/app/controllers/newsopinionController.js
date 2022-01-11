controllers.newsopinionController = function ($scope, $http, $location, loginService) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        alert ("You must login!")
        $location.path("#home");
    }

    init();
    function init() {
        $scope.imagePath = $scope.$parent.imagePath;
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        
    };

    
}