controllers.halloffameController = function ($scope, $http, $location, loginService, membersFactory) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        alert ("You must login!")
        $location.path("#home");
    }

    init();
    function init() {
        $scope.hofimage = "";
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

controllers.managehalloffameController = function ($scope, $http, $location, loginService, membersFactory) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        // new code
        $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
         
        // alert ("You must login in order to continue!")
        $location.path("#home");
    }

    function savemanagehalloffameInfo() {

        switch ($scope.halloffameaction)
        {
            case "add":
                var data = $("#addhalloffameForm").serialize();
                membersFactory.addHallofFame(data)
                .success( function(data) {
                    alert (data);

                    reloadhalloffame();
                })
                .error( function(edata) {
                    alert(edata);
                });

                break;

            case "update":
                var data = $("#managehalloffameForm").serialize();
                membersFactory.updateHallofFame(data)
                .success( function(data) {
                    alert (data);

                    reloadhalloffame();
                })
                .error( function(edata) {
                    alert(edata);
                });
                break;

            default:
                alert("Invalid jall of fame action = "+$scope.halloffameaction);
        }
    }

    function addhalloffame() {
        $scope.halloffameaction = "add";
    }

    function reloadhalloffame() {
        $scope.halloffameaction = "update";
        
        membersFactory.getAllHallofFame()
        .success( function(data) {
            $scope.halloffames = data;
        })
        .error( function(edata) {
            alert(edata);
        }); 
    }

    init();
    function init() {
        $scope.current = {};

        $scope.halloffameaction = "update";

        $scope.hofimage = "";
        $scope.halloffames = "";

        reloadhalloffame();
    };

    $scope.savemanagehalloffameInfo = function () {
        savemanagehalloffameInfo();
    }

    $scope.addhalloffame = function () {
        addhalloffame();
    }

    $scope.reloadhalloffame = function () {
        reloadhalloffame();
    }
}