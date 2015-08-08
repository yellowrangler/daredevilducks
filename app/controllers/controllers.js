// define controllers for app
var controllers = {};
controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, nflteamsFactory, nflTeamsService) {
    $("#adminselect").hide();

    function checkRole() {
        var role = loginService.getMemberRole();
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

        nflteamsFactory.getNFLTeamstats()
            .success( function(data) {
                nflTeamsService.setNFLTeamstats(data); 
            })
            .error( function(edata) {
                alert(edata);
            });

        nflteamsFactory.getNFLTeamseasons()
            .success( function(data) {
                nflTeamsService.setNFLTeamseasons(data); 
            })
            .error( function(edata) {
                alert(edata);
            });    

        nflteamsFactory.getNFLTeamseasonweeks()
            .success( function(data) {
                nflTeamsService.setNFLTeamseasonweeks(data); 
            })
            .error( function(edata) {
                alert(edata);
            }); 

        nflteamsFactory.getNFLGametypes()
            .success( function(data) {
                nflTeamsService.setNFLGametypes(data); 
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
        var data = "screenname="+$scope.login.screenname+"&passwd="+$scope.login.passwd;

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
                $('#iformationDialogModalTitle').text("System Error");
                $('#iformationDialogModalLabelBody').text("Syetem Error", edata);
                $('#iformationDialogModal').modal();
            });
    }

    $scope.closeModalCleanUp = function () {
        var role = loginService.getMemberRole();
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

controllers.pickgamesController = function ($scope, $http, $location, membersFactory, nflTeamsService) {
    
    init();
    function init() {
        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        $scope.weeks = nflTeamsService.getNFLTeamseasonweeks();
        $scope.seasons = nflTeamsService.getNFLTeamseasons();     
    };
}

controllers.viewgpicksController = function ($scope, $http, $location, nflTeamsService) {
    
    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.teamstandingsController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        $scope.teamstats = nflTeamsService.getNFLTeamstats(); 
        $scope.teamseasons = nflTeamsService.getNFLTeamseasons(); 
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

controllers.addmemberController = function ($scope, $http, $location, membersFactory) {


    init();
    function init() {
      
    };

    $scope.addnewmember = function() {
        var val1 = $("#passwd").val();
        var val2 = $("#vpasswd").val();
        if (val1 !== val2)
        {
            alert ("Passwords do not match!")

        }
        else
        {
            var formstring = $("#addmemberForm").serialize();

            membersFactory.addMember(formstring)
            .success( function(data) {
                if (data !== "ok")
                {
                    alert("Error adding member - "+data);
                }
                else
                {
                    alert("Member added succesfully!");
                    // $("#addmemberForm")[0].reset();
                }

            })
            .error( function(edata) {
                alert(edata);
            });
        }
    }
}

controllers.addavatarController = function ($scope, $http, $location, membersFactory) {

    init();
    function init() {
        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

         $scope.dropzoneConfig = {
            'options': { // passed into the Dropzone constructor
              'url': 'app/ajax/uploadavatar.php'
            },
            'eventHandlers': {
                  'sending': function (file, xhr, formData) {
                    // alert("sending");
                  },
                  'success': function (file, response) {
                    if (response == "ok")
                    {
                        $scope.current.avatar = file.name;
                        
                        var data = 'avatar='+file.name+'&memberid='+$scope.current.id;
                        membersFactory.saveMemberAvatar(data)
                            .success( function(data) {
                            alert("Avatar sucessfully added.")
                        })
                        .error( function(edata) {
                            alert(edata);
                        });
                    }
                    else if (response == "toolarge")
                    {
                        alert("Avatar "+file.name+" is too large. Try again.");
                    }
                    else if (response == "notimg")
                    {
                        alert("Avatar "+file.name+" must be JPG, JPEG, PNG & GIF. Try again.");
                    }
                    else 
                    {
                        alert("Avatar System error: "+response);
                    }
                  }
            }
          };   
    };

    $scope.getMember = function(data) {
    
        var membername = "membername="+data;
        membersFactory.getMember(membername)
        .success( function(data) {
            $scope.current = data;

            if ($scope.current.avatar == "")
            {
                $scope.current.avatar = "default.png";
            }

            $scope.current.vpasswd = $scope.current.passwd;
        })
        .error( function(edata) {
            alert(edata);
        });
    
    }
}

controllers.updatememberController = function ($scope, $http, $location, membersFactory) {
    $scope.current = {};

    init();
    function init() {
        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            });   
    };

    $scope.getMember = function(data) {
    
        var membername = "membername="+data;
        membersFactory.getMember(membername)
        .success( function(data) {
            $scope.current = data;

            if ($scope.current.avatar == "")
            {
                $scope.current.avatar = "default.png";
            }

            $scope.current.vpasswd = $scope.current.passwd;
        })
        .error( function(edata) {
            alert(edata);
        });
    
    }

    $scope.updatenewmember = function() {
        var val1 = $("#passwd").val();
        var val2 = $("#vpasswd").val();
        if (val1 !== val2)
        {
            alert ("Passwords do not match!")

        }
        else
        {
            var formstring = $("#updatememberForm").serialize();

            membersFactory.updateMember(formstring)
            .success( function(data) {
                if (data !== "ok")
                {
                    alert("Error updating member - "+data);
                }
                else
                {
                    alert("Member updated succesfully!");
                    // $("#addmemberForm")[0].reset();
                }

            })
            .error( function(edata) {
                alert(edata);
            });
        }
    }

    $scope.deletememberbutton = function() {
        var formstring = $("#updatememberForm").serialize();

        membersFactory.deleteMember(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error deleting member - "+data);
            }
            else
            {
                alert("Member deleted succesfully!");
                $("#updatememberForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }
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
            enableColumnResizing: true,
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
                        $scope.current.teamid = row.entity["id"];
                        $scope.current.league = row.entity["league"];
                        $scope.current.location = row.entity["location"]; 
                        $scope.current.city = row.entity["city"];
                        $scope.current.state = row.entity["state"];                                                                                               
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
                        $scope.current.teamid = ""; 
                        $scope.current.league = "";                         
                        $scope.current.location = ""; 
                        $scope.current.city = "";
                        $scope.current.state = "";                         
                        $scope.current.teamiconname = ""; 
                        $scope.current.teamorder = "";  
                        $scope.current.teamurl = "";    
                        $scope.current.status = "";  
                    }        
                })
            },
            columnDefs: [
                // default
                { field: "teamiconname",    
                    cellTemplate: '<img height="25" ng-src="img/nflicons/{{ COL_FIELD }}" >',
                    displayName: " ", 
                    width: '10%',
                    headerCellClass: $scope.highlightFilteredHeader },
                { field: "location", 
                    displayName: "Location", width: '25%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "name", 
                    displayName: "Team", width: '25%', headerCellClass: $scope.highlightFilteredHeader },
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
        var formstring = $("#teamForm").serialize();

        nflteamsFactory.updateTeamInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating team - "+data);
            }
            else
            {
                alert("Team updated succesfully!");
                $("#teamForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }

}

controllers.gameinfoController = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, nflteamsFactory) {
    $scope.current = {};
    $scope.teams = {};

    init();
    function init() {
        // get nfl team data
        nflteamsFactory.getNFLTeams()
            .success( function(data) {
                $scope.teams = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        nflteamsFactory.getNFLGametypes()
            .success( function(data) {
                $scope.gametypes = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 

        nflteamsFactory.getNFLnetworks()
            .success( function(data) {
                $scope.networks = data; 
            })
            .error( function(edata) {
                alert(edata);
            });        

        $scope.gridOptionsGames = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableColumnResizing: true,
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
                        $scope.current.season = row.entity["season"]; 
                        $scope.current.week = row.entity["week"];                
                        $scope.current.gamenbr = row.entity["gamenbr"];
                        $scope.current.gamedate = row.entity["gamedate"];  
                        $scope.current.hometeamname = row.entity["hometeamname"];   
                        $scope.current.awayteamname = row.entity["awayteamname"]; 
                        $scope.current.gametype = row.entity["gametype"]; 

                        // fill in data from hidden fields
                        $scope.current.teamid = row.entity["id"];   
                        $scope.current.league = row.entity["league"];
                        $scope.current.division = row.entity["division"];
                        $scope.current.conference = row.entity["conference"];
                        $scope.current.networkid = row.entity["networkid"];
                        $scope.current.gametime = row.entity["gametime"];
                        $scope.current.hometeamid = row.entity["hometeamid"];
                        $scope.current.awayteamid = row.entity["awayteamid"];
                        $scope.current.hometeamscore = row.entity["hometeamscore"];  
                        $scope.current.awayteamscore = row.entity["awayteamscore"];   
                        $scope.current.gameday = row.entity["gameday"];  
                        $scope.current.teamiconname = row.entity["teamiconname"]; 
                        $scope.current.gametypeid = row.entity["gametypeid"]; 
                    }
                    else
                    {
                        // if row is unseleted remove from current team
                        $scope.current.season = ""; 
                        $scope.current.week = "";                
                        $scope.current.gamenbr = "";
                        $scope.current.gamedate = "";
                        $scope.current.hometeamname = "";
                        $scope.current.awayteamname = "";
                        $scope.current.gametype = "";

                        // clear data from hidden fields
                        $scope.current.teamid = "";
                        $scope.current.league = "";                        
                        $scope.current.division = "";
                        $scope.current.conference = "";   
                        $scope.current.networkid = ""; 
                        $scope.current.gametime = "";                        
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
                { field: "season", 
                    displayName: "Year", headerCellClass: $scope.highlightFilteredHeader },
                { field: "week", 
                    displayName: "Week", width:"9%", headerCellClass: $scope.highlightFilteredHeader },
                { field: "gamenbr", 
                    displayName: "Nbr", width:"9%", headerCellClass: $scope.highlightFilteredHeader },
                { field: "gamedate", 
                    displayName: "Date", headerCellClass: $scope.highlightFilteredHeader },
                { field: "hometeamname", 
                    displayName: "Home", headerCellClass: $scope.highlightFilteredHeader },
                { field: "awayteamname", 
                    displayName: "Away", headerCellClass: $scope.highlightFilteredHeader },
                { field: "gametype", 
                    displayName: "Type", headerCellClass: $scope.highlightFilteredHeader }
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

    $scope.updateGameInfoRequest = function () {
        var formstring = $("#gameForm").serialize();

        nflteamsFactory.updateGameInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating game - "+data);
            }
            else
            {
                alert("Game Info updated succesfully!");
                // $("#gameForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }
    
    $scope.newGameInfo = function () {
        var formstring = $("#gameForm").serialize();

        nflteamsFactory.addGameInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error adding game - "+data);
            }
            else
            {
                alert("Game Info added succesfully!");
                // $("#gameForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    $scope.Delete = function () {
        alert("You be submitting delete request");
    } 

}

dddApp.controller(controllers); 
