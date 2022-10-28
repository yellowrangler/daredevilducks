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
        alert ("You must login!")
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
                alert("Invalid hall of fame action = "+$scope.halloffameaction);
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

controllers.hallofmemoryController = function ($scope, $http, $location, loginService, membersFactory) {

    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        alert ("You must login!")
        $location.path("#home");
    }

    init();
    function init() {
        $homimage = "";
        $homtitle = "";
        $homdetail = "";
        $scope.hallofmemorys = "";

        membersFactory.getAllHallofMemory()
            .success( function(data) {
                $scope.hallofmemorys = data;
            })
            .error( function(edata) {
                alert(edata);
            }); 
    };

}

controllers.managehallofmemoryController = function ($scope, $http, $location, loginService, membersFactory) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        alert ("You must login!")
        $location.path("#home");
    }

    function savemanagehallofmemoryInfo() {

        switch ($scope.hallofmemoryaction)
        {
            case "add":
                var data = $("#addhallofmemoryForm").serialize();
                membersFactory.addHallofMemory(data)
                .success( function(data) {
                    alert (data);

                    reloadhallofmemory();
                })
                .error( function(edata) {
                    alert(edata);
                });

                break;

            case "update":
                var data = $("#managehallofmemoryForm").serialize();
                membersFactory.updateHallofMemory(data)
                .success( function(data) {
                    alert (data);

                    reloadhallofmemory();
                })
                .error( function(edata) {
                    alert(edata);
                });
                break;

            default:
                alert("Invalid hall of memory action = "+$scope.hallofmemoryaction);
        }
    }

    function togglehallofmemory() {
        switch ($scope.hallofmemoryaction)
        {
            case "add":
                $scope.hallofmemoryaction = "update";
                $scope.hallofmemoryactionbutton = "Show Add";
                break;

            case "update":
               $scope.hallofmemoryaction = "add";
               $scope.hallofmemoryactionbutton = "Show Update";
               break;

            default:
                $scope.hallofmemoryaction = "update";
                $scope.hallofmemoryactionbutton = "Show Add";
        }
    }

    function reloadhallofmemory() {
        $scope.hallofmemoryaction = "update";
        $scope.hallofmemoryactionbutton = "Show Add";
        
        membersFactory.getAllHallofMemory()
        .success( function(data) {
            $scope.hallofmemorys = data;
        })
        .error( function(edata) {
            alert(edata);
        }); 
    }

    init();
    function init() {
        $scope.current = {};

        $scope.hallofmemoryaction = "update";
        $scope.hallofmemoryactionbutton = "Show Add";

        $homimage = "";
        $homtitle = "";
        $homdetail = "";
    
        $scope.hallofmemorys = "";

        reloadhallofmemory();
    };

    $scope.savemanagehallofmemoryInfo = function () {
        savemanagehallofmemoryInfo();
    }

    $scope.togglehallofmemory = function () {
        togglehallofmemory();
    }

    $scope.reloadhallofmemory = function () {
        reloadhallofmemory();
    }
}