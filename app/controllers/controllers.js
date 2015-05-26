// define controllers for app
var controllers = {};
controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, nflteamsFactory, nflTeamsService) {
    $("#adminselect").hide();

    function checkRole() {
        var role = loginService.getUserRole();
        if (role == "admin")
        {
            $("#adminselect").show();
        }
        else
        {
            $("#adminselect").hide();
        }  
    }

    init();
    function init() {
        var route = loginService.setLoginLogoffLabel("menubarlogin",0);

        // preload nfl team data
        nflteamsFactory.getNFLTeams()
            .success( function(data) {
                nflTeamsService.setNFLTeams(data); 
            })
            .error( function(edata) {
                alert(edata);
            });

        checkRole();  
    };         

    $scope.loginlogoff = function () {
        var route = loginService.setLoginLogoffLabel("menubarlogin",1);
        checkRole();
        if (route != "")
        {
            $location.path(route);
        }
    }
}

controllers.loginController = function ($scope, $http, $location, loginService, msgService, loginFactory) {
    $scope.login = loginService.getEmptyLogin();
    $scope.msg = msgService.getEmptyMsg();
     
    init();
    function init() {
        
    };

    $scope.sendLoginForm = function() {
        var data = "username="+$scope.login.username+"&passwd="+$scope.login.passwd;

        loginFactory.loginPassword(data)
            .success( function(login) {
                if (login.rc == "1")
                {
                    loginService.addLogin(login);

                    // flip the label
                    var route = loginService.setLoginLogoffLabel("menubarlogin",0);
                    
                    $('#iformationDialogModalTitle').text("Success");
                    $('#iformationDialogModalLabelBody').text(login.text);
                    $('#iformationDialogModal').modal();
                }
                else
                {
                    $('#iformationDialogModalTitle').text("Error");
                    $('#iformationDialogModalLabelBody').text(login.text);
                    $('#iformationDialogModal').modal();
                }   
            })
            .error( function(edata) {
                $('#iformationDialogModalTitle').text("Success");
                $('#iformationDialogModalLabelBody').text("Syetem Error", edata);
                $('#iformationDialogModal').modal();
            });
    }

    $scope.closeModalCleanUp = function () {
        var role = loginService.getUserRole();
        if (role == "admin")
        {
            $("#adminselect").show();
        }
        else
        {
            $("#adminselect").hide();
        }
        
        $location.path("/home");
    }
        
}

controllers.homeController = function ($scope, $http, $location, $route, loginService) {

    init();
    function init() {
        var loggedIn = loginService.isLoggedIn();
        if (loggedIn)
            $("#loginHomeButton").hide();
        else
            $("#loginHomeButton").show();
      
    };

    $scope.homepagelogin = function () {
        $scope.$parent.loginlogoff();

        // $route.reload();
    }
}

controllers.chooseController = function ($scope, $http, $location, nflTeamsService) {
    
    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.teamstandingsController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.leaderboardController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.halloffameController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.teaminfoController = function ($scope, $http, $log, $location, uiGridConstants, nflteamsFactory) {
    $scope.current = {};

    init();
    function init() {
       $scope.gridOptionsTeams = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableRowSelection: true,
            enableRowHeaderSelection: false,
            multiSelect: false,
            modifierKeysToMultiSelect: false,
            noUnselect: false,
            // minRowsToShow: 3,
            onRegisterApi: function( gridApi ) {
                $scope.gridApi = gridApi;

                gridApi.selection.on.rowSelectionChanged($scope, function(row) {
                    // var msg = "row seleted" + row.isSelected;
                    // $log.log(msg);

                    if (row.isSelected)
                    {
                        // if row is seleted ad information to current team
                        $scope.current.name = row.entity["name"]; 
                        $scope.current.conference = row.entity["conference"];                
                        $scope.current.division = row.entity["division"];

                        // fill in data from hidden fields
                        $scope.current.id = row.entity["id"];
                        $scope.current.league = row.entity["league"];
                        $scope.current.teamiconname = row.entity["teamiconname"];
                        $scope.current.teamorder = row.entity["teamorder"];  
                        $scope.current.teamurl = row.entity["teamurl"];   
                        $scope.current.status = row.entity["status"];  
                    }
                    else
                    {
                        // if row is unseleted remove from current team
                        $scope.current.name = ""; 
                        $scope.current.conference = ""; 
                        $scope.current.division = ""; 

                        // clear data from hidden fields
                        $scope.current.id = ""; 
                        $scope.current.league = ""; 
                        $scope.current.teamiconname = ""; 
                        $scope.current.teamorder = "";  
                        $scope.current.teamurl = "";    
                        $scope.current.status = "";  
                    }

                    //
                    // check to see if both inbox and request have been selected
                    // If yes then show link button
                    //
                    // showLinkButtonCheck();
            
                })
            },
            columnDefs: [
                // default
                { field: "teamiconname",    
                    cellTemplate: '<img height="25" ng-src="img/nflicons/{{ COL_FIELD }}" >',
                    displayName: "I", 
                    width: '10%',
                    headerCellClass: $scope.highlightFilteredHeader },
                { field: "name", 
                    displayName: "Team", width: '50%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "conference", 
                    displayName: "Conf", width: '20%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "division", 
                    displayName: "Div", width: '20%', headerCellClass: $scope.highlightFilteredHeader }
            ]
        }

        nflteamsFactory.getNFLTeams()
            .success( function(data) {
                $scope.nflteam = data; 
                $scope.gridOptionsTeams.data = data;
            })
            .error( function(edata) {
                alert(edata);
            });

    };

    $scope.updateTeamInfoRequest = function () {
        alert("You be submitting update request");
    }

    $scope.newTeamInfo = function () {
        alert("You be submitting new request");
    }

    $scope.Delete = function () {
        alert("You be submitting delete request");
    } 

}

controllers.gameinfoController = function ($scope, $http, $log, $location, uiGridConstants, nflteamsFactory) {
    $scope.current = {};

    init();
    function init() {
       $scope.gridOptionsGames = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableRowSelection: true,
            enableRowHeaderSelection: false,
            multiSelect: false,
            modifierKeysToMultiSelect: false,
            noUnselect: false,
            // minRowsToShow: 3,
            onRegisterApi: function( gridApi ) {
                $scope.gridApi = gridApi;

                gridApi.selection.on.rowSelectionChanged($scope, function(row) {
                    // var msg = "row seleted" + row.isSelected;
                    // $log.log(msg);

                    if (row.isSelected)
                    {
                        // if row is seleted ad information to current team
                        $scope.current.seasonyear = row.entity["seasonyear"]; 
                        $scope.current.weeknbr = row.entity["weeknbr"];                
                        $scope.current.gamenbr = row.entity["gamenbr"];
                        $scope.current.gamedate = row.entity["gamedate"];  
                        $scope.current.hometeamname = row.entity["hometeamname"];   
                        $scope.current.awayteamname = row.entity["awayteamname"]; 
                        $scope.current.type = row.entity["type"]; 

                        // fill in data from hidden fields
                        $scope.current.id = row.entity["id"];   
                        $scope.current.league = row.entity["league"];
                        $scope.current.division = row.entity["division"];
                        $scope.current.conference = row.entity["conference"];
                        $scope.current.hometeamid = row.entity["hometeamid"];
                        $scope.current.awayteamid = row.entity["awayteamid"];
                        $scope.current.hometeamscore = row.entity["hometeamscore"];  
                        $scope.current.awayteamscore = row.entity["awayteamscore"];   
                        $scope.current.gameday = row.entity["gameday"];  
                        $scope.current.teamiconname = row.entity["teamiconname"]; 
                    }
                    else
                    {
                        // if row is unseleted remove from current team
                        $scope.current.seasonyear = ""; 
                        $scope.current.weeknbr = "";                
                        $scope.current.gamenbr = "";
                        $scope.current.gamedate = "";
                        $scope.current.hometeamname = "";
                        $scope.current.awayteamname = "";
                        $scope.current.type = "";

                        // clear data from hidden fields
                        $scope.current.id = "";
                        $scope.current.league = "";                        
                        $scope.current.division = "";
                        $scope.current.conference = "";   
                        $scope.current.hometeamid = "";
                        $scope.current.awayteamid = "";                                             
                        $scope.current.hometeamscore = "";
                        $scope.current.awayteamscore = "";
                        $scope.current.gameday = "";
                        $scope.current.teamiconname = "";
                    }

                    //
                    // check to see if both inbox and request have been selected
                    // If yes then show link button
                    //
                    // showLinkButtonCheck();
            
                })
            },
            columnDefs: [
                // default
                { field: "teamiconname",    
                    cellTemplate: '<img height="25" ng-src="img/nflicons/{{ COL_FIELD }}" >',
                    displayName: "I", 
                    width: '5%',
                    headerCellClass: $scope.highlightFilteredHeader },
                { field: "seasonyear", 
                    displayName: "Season", width: '15%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "weeknbr", 
                    displayName: "Week", width: '5%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "gamenbr", 
                    displayName: "Nbr", width: '5%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "gamedate", 
                    displayName: "Date", width: '15%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "hometeamname", 
                    displayName: "Home", width: '25%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "awayteamname", 
                    displayName: "Away", width: '25%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "type", 
                    displayName: "Type", width: '5%', headerCellClass: $scope.highlightFilteredHeader }
            ]
        }

        nflteamsFactory.getNFLGamesTeams()
            .success( function(data) {
                $scope.nflgames = data; 
                $scope.gridOptionsGames.data = data;
            })
            .error( function(edata) {
                alert(edata);
            });

    };

    $scope.updateTeamInfoRequest = function () {
        alert("You be submitting update request");
    }

    $scope.newTeamInfo = function () {
        alert("You be submitting new request");
    }

    $scope.Delete = function () {
        alert("You be submitting delete request");
    } 

}

dddApp.controller(controllers); 
