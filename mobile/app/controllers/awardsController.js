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

    function togglehalloffame() {

        switch ($scope.halloffameaction)
        {
            case "add":
                $scope.halloffameaction = "update";
                $scope.halloffameactionbutton = "Show Add";
                break;

            case "update":
               $scope.halloffameaction = "add";
               $scope.halloffameactionbutton = "Show Update";
               break;

            default:
                $scope.halloffameaction = "update";
                $scope.halloffameactionbutton = "Show Add";
        }
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

    function reloadhalloffame() {
        $scope.halloffameaction = "update";
        $scope.halloffameactionbutton = "Show Add";

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
        $scope.halloffameactionbutton = "Show Add";

        $scope.hofimage = "";
        $scope.halloffames = "";

        reloadhalloffame();
    };

    $scope.savemanagehalloffameInfo = function () {
        savemanagehalloffameInfo();
    }

    $scope.togglehalloffame = function () {
        togglehalloffame();
    }

    $scope.reloadhalloffame = function () {
        reloadhalloffame();
    }
}