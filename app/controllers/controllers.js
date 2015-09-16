// define controllers for app
var controllers = {};
controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, nflteamsFactory, nflTeamsService) {
    $("#adminselect").hide();
    
    $scope.memberavatar = "";

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

    function getAvatar()
    {
        $scope.memberavatar = loginService.getMemberAvatar();
    }

    init();
    function init() {
        getAvatar();
        loginService.setAvatarLabel("menubaravatar",0);
        var route = loginService.setLoginLogoffLabel("menubarlogin",0);

        // preload nfl team data
        nflteamsFactory.getNFLTeams()
            .success( function(data) {
                nflTeamsService.setNFLTeams(data); 
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
 
        nflteamsFactory.getNFLGametypes()
            .success( function(data) {
                nflTeamsService.setNFLGametypes(data); 
            })
            .error( function(edata) {
                alert(edata);
            });  

        nflteamsFactory.getNFLnetworks()
            .success( function(data) {
                nflTeamsService.setNFLnetworks(data);
            })
            .error( function(edata) {
                alert(edata);
            });                        

        checkRole();  
    };         

    $scope.loginlogoff = function () {
        var route = loginService.setLoginLogoffLabel("menubarlogin",1);
        getAvatar();
        loginService.setAvatarLabel("menubaravatar",1);

        checkRole();
        if (route != "")
        {
            $location.path(route);
        }
    }

    $scope.showMemberAvatar = function () {
        getAvatar();
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

                    // get avatar
                    $scope.$parent.showMemberAvatar();

                    // flip the label
                    var route = loginService.setLoginLogoffLabel("menubarlogin",0);
                    loginService.setAvatarLabel("menubaravatar",0);
                    
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

controllers.pickgamesController = function ($scope, $http, $location, membersFactory, nflteamsFactory, nflTeamsService, loginService) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
        $location.path("#home");

    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    //
    // this returnd false if admin true if other
    // for ng-disbled
    //
    function checkRole()
    {
        var role = loginService.getMemberRole();
        var status = "";

        if (role == "admin")
        {
            status = false;
        }
        else
        {
            status = true;
        }  

        return status;
    }

    function compareScores(venue, homescore, awayscore)
    {
        var result = false;

        var homescoreNbr = parseInt(homescore);
        var awayscoreNbr = parseInt(awayscore);

        if (venue == "home")
        {
            if (homescoreNbr > awayscoreNbr)
            {
                result = true;
            }
        }
        else if (venue == "away")
        {
            if (awayscoreNbr > homescoreNbr)
            {
                result = true;
            }

        }
        else
        {
            alert ("No venue");
        }

        return result;
    }

    //
    // if checked turn this red
    //
    function checkPick(gameid, location)
    {
        var i = 0;
    }

    //
    // this returnd false always if admin 
    // otherwise if expired true other false
    // for ng-disbled
    //
    function check4ExpiredGameSelections(gamestatus)
    {
        var role = loginService.getMemberRole();
        var status = "";

        if (role == "admin")
        {
            status = false;
        }
        else
        {
            if (gamestatus == "expired")
            {
                status = true;
            }
            else
            {
                status = false;
            }
        }  

        return status;

    }

    function selectChange()
    {
        var memberid = "memberid="+$scope.current.memberid;

        membersFactory.getMember(memberid)
            .success( function(data) {
                $scope.current.memberavatar = data.avatar;

                var data = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;

                nflteamsFactory.getNFLGamesWeekMemberTeams(data)
                    .success( function(data) {
                        $scope.games = data; 
                    })
                    .error( function(edata) {
                        alert(edata);
                    }); 
            })
            .error( function(edata) {
                alert(edata);
            });
    }

    function saveGames() {
        //
        // validate the selections
        //
        var count = 0;
        var picked = 0;
        var remaining = 0;
        var fieldname = "";

        //
        // loop through all radio fields and count 
        //
        $("[id^=pick_]").each(function() {
            if (fieldname != this.name)
            {
                count = count + 1;
                fieldname = this.name;
            }

            if (this.checked)
            {
                picked = picked + 1;
            }
        });

        if (picked == count)
        {
            $scope.msg = "All "+picked+" Picks for Week have been completed!";
        }
        else
        {
            remaining = count - picked;
            $scope.msg = "You have picked "+picked+" Teams. You have "+remaining+" remaining to complete this week.";
        }

        var data = $("#pickweekForm").serialize();

        membersFactory.addMemberGameTeamPick(data)
            .success( function(data) {
                if (data == "ok")
                {
                    $('#gamesSavedDialogModalTitle').text("Picks Saved");
                    $('#gamesSavedDialogModalLabelBody').text($scope.msg);
                    $('#gamesSavedDialogModal').modal();
                }
                else
                {
                    $('#gamesSavedDialogModalTitle').text("Picks Error");
                    $('#gamesSavedDialogModalLabelBody').text(data);
                    $('#gamesSavedDialogModal').modal();
                }
            })
            .error( function(edata) {
                alert(edata);
            }); 

        var y = 1;
    }

    init();
    function init() {
        $scope.current.memberlogin = loginService.getLogin();

        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 
            
                $scope.seasons = nflTeamsService.getNFLTeamseasons();

                nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
                .success( function(data) {
                    $scope.weeks = data; 

                    nflteamsFactory.getCurrentSeasonWeek()
                        .success( function(data) {
                            $scope.current.season = data.season; 
                            $scope.current.week = data.week;

                            nflTeamsService.addCurrentWeek($scope.current.week);
                            nflTeamsService.addCurrentSeason($scope.current.season);

                            $scope.current.memberid = $scope.current.memberlogin.memberid;
                            var memberid = "memberid="+$scope.current.memberid;
                            membersFactory.getMember(memberid)
                                .success( function(data) {
                                    $scope.current.memberavatar = data.avatar;  

                                    var q = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;
                                    nflteamsFactory.getNFLGamesWeekMemberTeams(q)
                                        .success( function(data) {
                                            $scope.games = data; 
                                        })
                                        .error( function(edata) {
                                            alert(edata);
                                        });      
                                })
                                .error( function(edata) {
                                    alert(edata);
                                });                   
                        })
                        .error( function(edata) {
                            alert(edata);
                        }); 
                })
                .error( function(edata) {
                    alert(edata);
                });
            })
        .error( function(edata) {
            alert(edata);
        }); 
     
    };

    $scope.check4ExpiredGameSelections = function(data) 
    {   
        var status = "";

        status = check4ExpiredGameSelections(data);

        return status;
    }

    $scope.checkRole = function() 
    {   
        var status = "";

        status = checkRole();

        return status;
    }

    $scope.getMemberWeekPicks = function() {
        selectChange();
    }

    $scope.saveGames = function() {
        saveGames();
    }

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }

    $scope.checkPick = function (gameid, location) {
        checkPick(gameid, location);
    }
}

controllers.viewselectpickgamesController = function ($scope, $http, $location, membersFactory, nflteamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    function selectChange()
    {
        var memberid = "memberid="+$scope.current.memberid;
        
        membersFactory.getMember(memberid)
            .success( function(data) {
                $scope.current.memberavatar = data.avatar;

                var data = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;

                nflteamsFactory.getNFLGamesWeekMemberTeams(data)
                    .success( function(data) {
                        $scope.games = data; 
                    })
                    .error( function(edata) {
                        alert(edata);
                    }); 
            })
            .error( function(edata) {
                alert(edata);
            });
    }

    function compareScores(venue, homescore, awayscore)
    {
        var result = false;

        var homescoreNbr = parseInt(homescore);
        var awayscoreNbr = parseInt(awayscore);

        if (venue == "home")
        {
            if (homescoreNbr > awayscoreNbr)
            {
                result = true;
            }
        }
        else if (venue == "away")
        {
            if (awayscoreNbr > homescoreNbr)
            {
                result = true;
            }

        }
        else
        {
            alert ("No venue");
        }

        return result;
    }

    init();
    function init() {
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
            $location.path("#home");
        
        $scope.current.memberlogin = loginService.getLogin();

        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 

                $scope.seasons = nflTeamsService.getNFLTeamseasons(); 

                nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
                .success( function(data) {
                    $scope.weeks = data; 

                nflteamsFactory.getCurrentSeasonWeek()
                    .success( function(data) {
                        $scope.current.season = data.season; 
                        $scope.current.week = data.week;  

                        nflTeamsService.addCurrentWeek($scope.current.week);
                        nflTeamsService.addCurrentSeason($scope.current.season);  

                        $scope.current.memberid = $scope.current.memberlogin.memberid;
                        var memberid = "memberid="+$scope.current.memberid;
                        membersFactory.getMember(memberid)
                            .success( function(data) {
                                $scope.current.memberavatar = data.avatar;

                                var q = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;
                                nflteamsFactory.getNFLGamesWeekMemberTeams(q)
                                    .success( function(data) {
                                        $scope.games = data; 
                                    })
                                    .error( function(edata) {
                                        alert(edata);
                                    });
                            })
                            .error( function(edata) {
                                alert(edata);
                            });                
                    })
                    .error( function(edata) {
                        alert(edata);
                    }); 
            })
            .error( function(edata) {
                alert(edata);
            });  

        })
        .error( function(edata) {
            alert(edata);
        });      
    };

    $scope.getMemberWeekPicks = function() {
        selectChange();
    }

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }
}

controllers.viewallpicksController = function ($scope, $http, $location, nflTeamsService) {
    
    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.teamstandingsController = function ($scope, $http, $location, nflTeamsService, nflteamsFactory) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    function selectChange()
    {
        nflteamsFactory.getNFLTeamstats($scope.current.season)
            .success( function(data) {
                $scope.teamstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });  

    }

    init();
    function init() {
        nflteamsFactory.getNFLTeamstats($scope.current.season)
            .success( function(data) {
                $scope.teamstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        $scope.seasons = nflTeamsService.getNFLTeamseasons();
    };

    $scope.getSeasons = function() {
        selectChange();
    }
}

controllers.leaderboardController = function ($scope, $http, $location, nflTeamsService, nflteamsFactory, loginService) {

    // function getGameTypeName() 
    // {
    //     $.each($scope.gametypes, function (index,value) {
    //         if ($scope.gametypes[index].id == $scope.current.gametypeid)
    //         {
    //             $scope.current.gametype = $scope.gametypes[index].gametype;
    //         }
    //     });
    // }

    function getYearlyLeaderBoard() 
    {
        //
        // get total season percent leaders
        //
        var qStr = "season="+$scope.current.season+"&leaderType=percent";
        nflteamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                data.position = {};
                $.each(data, function (index,value) {
                    data[index].position = index+1;
                });

                $scope.memberseasonpercentstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        //
        // get total season win leaders
        //
        var qStr = "season="+$scope.current.season+"&leaderType=wins";
        nflteamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                data.position = {};
                $.each(data, function (index,value) {
                    data[index].position = index+1;
                });

                $scope.memberseasonwinstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });      
    }

    init();
    function init() {
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
            $location.path("#home");

        $scope.current = {};
        $scope.current.season = nflTeamsService.getCurrentSeason();
        $scope.seasons = nflTeamsService.getNFLTeamseasons();
        $scope.gametypes = nflTeamsService.getNFLGametypes();

        //
        // get percent season leaders
        //
        var qStr = "season="+$scope.current.season+"&leaderType=percent"
        nflteamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                data.position = {};
                $.each(data, function (index,value) {
                    data[index].position = index+1;
                });

                $scope.memberseasonpercentstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        //
        // get wins season leaders
        //
        var qStr = "season="+$scope.current.season+"&leaderType=wins";
        nflteamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                data.position = {};
                $.each(data, function (index,value) {
                    data[index].position = index+1;
                });

                $scope.memberseasonwinstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });    
    };

    $scope.getYearlyLeaderBoard = function() {
        getYearlyLeaderBoard();
    }
}

controllers.memberweeklyController = function ($scope, $http, $location, membersFactory, nflTeamsService, nflteamsFactory, loginService) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
        $location.path("#home");

    $scope.current = {};

    function selectChange()
    {
        var requestStr = "season="+$scope.current.season+"&week="+$scope.current.week;

        nflteamsFactory.getMemberWeekStats(requestStr)
            .success( function(data) {
                $scope.memberweekstats = data; 

            })
            .error( function(edata) {
                alert(edata);
            });
    }

    init();
    function init() {
        $scope.current.memberlogin = loginService.getLogin();
        nflteamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                nflTeamsService.addCurrentWeek($scope.current.week);
                nflTeamsService.addCurrentSeason($scope.current.season);  

                $scope.seasons = nflTeamsService.getNFLTeamseasons();
                nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
                    .success( function(data) {
                        $scope.weeks = data;

                        var requestStr = "season="+$scope.current.season+"&week="+$scope.current.week;
                        nflteamsFactory.getMemberWeekStats(requestStr)
                            .success( function(data) {
                                $scope.memberweekstats = data; 

                            })
                            .error( function(edata) {
                                alert(edata);
                            });  
                    })
                    .error( function(edata) {
                        alert(edata);
                    }); 
   
            })
            .error( function(edata) {
                alert(edata);
            });              
    }

    $scope.getMemberWeekStats = function() {
        selectChange();
    }
}

controllers.halloffameController = function ($scope, $http, $location, loginService) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
        $location.path("#home");

    init();
    function init() {
        
    };
}

controllers.teamstatsController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        
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
    $scope.current = {};

    init();
    function init() {
        $scope.current.avatar = "default.png";

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

controllers.teaminfoController = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, nflteamsFactory) {
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

        var nflteams = nflTeamsService.getNFLTeams();
        $scope.nflteam = nflteams; 
        $scope.gridOptionsTeams.data = nflteams;
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

controllers.teamdiscoveryController = function ($scope, $http, $log, $location) {

    init();
    function init() {

  }

}

controllers.gameinfoController = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, nflteamsFactory) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();
    $scope.teams = {};

    init();
    function init() {
        // get nfl team data
        $scope.teams = nflTeamsService.getNFLTeams();
        $scope.gametypes = nflTeamsService.getNFLGametypes();
        $scope.networks = nflTeamsService.getNFLnetworks();        

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

        nflteamsFactory.getNFLGamesTeams($scope.current.season)
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
                nflteamsFactory.getNFLGamesTeams($scope.current.season)
                .success( function(data) {
                    $scope.nflgames = data; 
                    $scope.gridOptionsGames.data = data;
                })
                .error( function(edata) {
                    alert(edata);
                });

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

controllers.weeklybuildsController = function ($scope, $http, $location, nflteamsFactory, nflTeamsService, scriptsFactory) {
    $scope.current = {};

    function initializeTeamWeekStats() 
    {
        var scriptData = "season="+$scope.current.season+"&weeksinseason="+$scope.current.weeksinseason;

        scriptsFactory.initializeTeamWeekStats(scriptData)
        .success( function(data) {
            $('#weeklyBuildsDialogModalBody').html(data);
            $('#weeklyBuildsDialogModal').modal();
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function initializeMemberWeekStats() 
    {
        var scriptData = "season="+$scope.current.season+"&weeksinseason="+$scope.current.weeksinseason;

        scriptsFactory.initializeMemberWeekStats(scriptData)
        .success( function(data) {
            $('#weeklyBuildsDialogModalBody').html(data);
            $('#weeklyBuildsDialogModal').modal();
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function buildTeamStats() 
    {
        var scriptData = "season="+$scope.current.season;

        scriptsFactory.buildTeamStats(scriptData)
        .success( function(data) {
            $('#weeklyBuildsDialogModalBody').html(data);
            $('#weeklyBuildsDialogModal').modal();
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function buildTeamWeekStats() 
    {
        var scriptData = "season="+$scope.current.season+"&weeksinseason="+$scope.current.weeksinseason;

        scriptsFactory.buildTeamWeekStats(scriptData)
        .success( function(data) {
            $('#weeklyBuildsDialogModalBody').html(data);
            $('#weeklyBuildsDialogModal').modal();
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function buildMemberStats() 
    {
        var scriptData = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid;

        scriptsFactory.buildMemberStats(scriptData)
        .success( function(data) {
            $('#weeklyBuildsDialogModalBody').html(data);
            $('#weeklyBuildsDialogModal').modal();
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function buildMemberWeekStats() 
    {
        var scriptData = "season="+$scope.current.season+"&weeksinseason="+$scope.current.weeksinseason+"&gametypeid="+$scope.current.gametypeid;

        scriptsFactory.buildMemberWeekStats(scriptData)
        .success( function(data) {
            $('#weeklyBuildsDialogModalBody').html(data);
            $('#weeklyBuildsDialogModal').modal();
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function buildMySqlDump() 
    {
        var scriptData = "dumpdatabaselabel="+$scope.current.dumpdatabaselabel;

        scriptsFactory.buildMySqlDump(scriptData)
        .success( function(data) {
            $('#weeklyBuildsDialogModalBody').html(data);
            $('#weeklyBuildsDialogModal').modal();
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    init();
    function init() {
        $scope.current.gametypeid = 2;
        $scope.current.weeksinseason = 17;
        $scope.current.season = nflTeamsService.getCurrentSeason();   
        $scope.current.dumpdatabaselabel = getCurrentDateTimeStr();     

        $scope.gametypes = nflTeamsService.getNFLGametypes();

    };

    $scope.initializeTeamWeekStats = function () {
        initializeTeamWeekStats();
    }

    $scope.initializeMemberWeekStats = function () {
        initializeMemberWeekStats();
    }

    $scope.buildTeamStats = function () {
        buildTeamStats();
    }

    $scope.buildTeamWeekStats = function () {
        buildTeamWeekStats();
    }

    $scope.buildMemberStats = function () {
        buildMemberStats();
    }

    $scope.buildMemberWeekStats = function () {
        buildMemberWeekStats();
    }

    $scope.buildMySqlDump = function () {
        buildMySqlDump();
    }
}

controllers.sendplayeremailController = function ($scope, $http, $location, membersFactory) {
    $scope.current = {};
    $scope.current.emailto = "";
    $scope.current.emailfrom = "daredevilducks.xyz@gmail.com";

    function setMembereMail (email)
    {
        if ($scope.current.emailto == "")
        {
            $scope.current.emailto = email;
        }
        else
        {
            if (email != "")
            {
                $scope.current.emailto = $scope.current.emailto + ", " + email;
            }
        }
    }

    function addAll2MailForm () {

        $.each($scope.members, function (key, value) {
            setMembereMail(value.email);
        });

    }

    function sendeMailForm() {
        var data = $("#dddeMailForm").serialize();
        
        membersFactory.sendeMail2Members(data)
            .success( function(rv) {
                var textStr = "<center>eMail sent with return code</center></br></br>"+rv;
                $('#eMailDialogModalTitle').text("eMail Sent");
                $('#eMailDialogModalLabelBody').html(textStr);
                $('#eMailDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    init();
    function init() {
        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    $scope.setMembereMail = function (email) {
        setMembereMail(email);
    }

    $scope.addAll2MailForm = function () {
        addAll2MailForm();
    }

    $scope.sendeMailForm = function () {
        sendeMailForm();
    }

}

dddApp.controller(controllers); 
