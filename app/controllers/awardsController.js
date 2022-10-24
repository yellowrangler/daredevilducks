controllers.halloffameController = function ($scope, $http, $location, loginService, membersFactory) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        // new code
        $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
         
        // alert ("You must login in order to continue!")
        $location.path("#home");
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here Oye
        //
        setviewpadding();

        $scope.halloffames = "";
        membersFactory.getAllHallofFame()
            .success( function(data) {
                $scope.halloffames = data;
            })
            .error( function(edata) {
                alert(edata);
            });
        
    };
}