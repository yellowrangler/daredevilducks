controllers.pickgames2Controller = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, loginService) {

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

    function getTeamStats (hometeamid,awayteamid,gamenbr)
    {
        var q = "hometeamid="+hometeamid+"&awayteamid="+awayteamid+"&gamenbr="+gamenbr+"&season="+$scope.current.season;
        teamsFactory.getTeamStandingsDialog(q)
            .success( function(data) {
                $scope.teamstat = data; 

                $('#teamStatsDialogModalTitle').text("Team Stats");
                $('#teamStatsDialogModalBody').html(data);
                $('#teamStatsDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            });  
    }

    //
    // if checked turn this red
    //
    function setSelectTeam(teamtype, gamenbr, awayteamid, hometeamid, gamestatus)
    {
        var hometeamname = "pickh_"+gamenbr+"_teamname"; 
        var hometeamicon = "pickh_"+gamenbr+"_icon"; 

        var awayteamname = "picka_"+gamenbr+"_teamname"; 
        var awayteamicon = "picka_"+gamenbr+"_icon"; 

        var hometeamfieldid = "pickh_"+gamenbr; 
        var awayteamfieldid = "picka_"+gamenbr;    

        if (checkRole())
        {
            if (gamestatus == "expired")
            {
                alert ("Game is alerady underway!");

                return;
            }
        }
            
        if (teamtype =='home')
        {
            $("#"+hometeamname).addClass("teamSelected").removeClass("teamNotSelected");
            // $("#"+hometeamicon).addClass("teamSelected").removeClass("teamNotSelected");

            $("#"+awayteamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+awayteamicon).addClass("teamNotSelected").removeClass("teamSelected");            

            $("#"+hometeamfieldid).val(hometeamid);
            $("#"+hometeamfieldid).prop("disabled", false);

            $("#"+awayteamfieldid).val(0);
            $("#"+awayteamfieldid).prop("disabled", true);
        }
        else if (teamtype =='away')
        {
            $("#"+hometeamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+hometeamicon).addClass("teamNotSelected").removeClass("teamSelected");

            $("#"+awayteamname).addClass("teamSelected").removeClass("teamNotSelected");
            // $("#"+awayteamicon).addClass("teamSelected").removeClass("teamNotSelected");


            $("#"+hometeamfieldid).val(0);
            $("#"+hometeamfieldid).prop("disabled", true);

            $("#"+awayteamfieldid).val(awayteamid);
            $("#"+awayteamfieldid).prop("disabled", false);

        }
        else
        {
            $("#"+hometeamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+hometeamicon).addClass("teamNotSelected").removeClass("teamSelected");

            $("#"+awayteamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+awayteamicon).addClass("teamNotSelected").removeClass("teamSelected");
        }
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

    function selectChange(itemChanged)
    {
        var memberid = "memberid="+$scope.current.memberid;

        if (itemChanged == 'season')
        {
            teamsFactory.getNFLTeamseasonweeks($scope.current.season)
                .success( function(data) {
                    $scope.weeks = data; 

                    $scope.current.week = 1;

                    nflTeamsService.addCurrentWeek($scope.current.week);
                    nflTeamsService.addCurrentSeason($scope.current.season);

                    //
                    // get bye teams
                    //
                    var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                    teamsFactory.getNFLByeWeekMemberTeams(q)
                        .success( function(data) {
                            $scope.byegames = data; 
                        })
                        .error( function(edata) {
                            alert(edata);
                        });       

                    var memberid = "memberid="+$scope.current.memberid;
                    membersFactory.getMember(memberid)
                        .success( function(data) {
                            $scope.current.memberavatar = data.avatar;  

                            var q = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;
                            teamsFactory.getNFLGamesWeekMemberTeams(q)
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
        }
        else
        {
            membersFactory.getMember(memberid)
                .success( function(data) {
                    $scope.current.memberavatar = data.avatar;

                    var data = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;

                    teamsFactory.getNFLGamesWeekMemberTeams(data)
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

            //
            // get bye teams
            //
            var q = "week="+$scope.current.week+"&season="+$scope.current.season;
            teamsFactory.getNFLByeWeekMemberTeams(q)
                .success( function(data) {
                    $scope.byegames = data; 
                })
                .error( function(edata) {
                    alert(edata);
                }); 

        }      
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
        // disable all buttons
        //
        $("#saveGames").hide();
        $("#saveGamesBottom").hide();


        //
        // loop through all radio fields and count 
        //
        $("[name^=pick_]").each(function() {
            if (fieldname != this.name)
            {
                count = count + 1;
                fieldname = this.name;
            }

            if (this.disabled != true)
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

        //
        // admins can choose any player. I disable memberid when not admin. Must therefore
        // check for memberid in seriaze string and if not there add it
        //
        var data = $("#pickweekForm").serialize();
        var n = data.indexOf("memberid");
        if (n == -1)
        {
            data = data + "&memberid="+$scope.current.memberid;
        }

        if (picked > 0)
        {
            membersFactory.addMemberGameTeamPick(data)
                .success( function(data) {
                    if (data == "ok")
                    {
                        var ua = getUserAgent();

                        if (ua.deviceType == "Mobile")
                        {
                            alert("Picks Saved\n"+$scope.msg);
                        }
                        else
                        {
                            $('#gamesSavedDialogModalTitle').text("Picks Saved");
                            $('#gamesSavedDialogModalLabelBody').text($scope.msg);
                            $('#gamesSavedDialogModal').modal();

                        }
                    }
                    else
                    {
                        var ua = getUserAgent();

                        if (ua.deviceType == "Mobile")
                        {
                            alert("Picks Error\n"+data);
                        }
                        else
                        {
                            $('#gamesSavedDialogModalTitle').text("Picks Error");
                            $('#gamesSavedDialogModalLabelBody').text(data);
                            $('#gamesSavedDialogModal').modal();
                        }
                    }

                    setTimeout(function () {
                        $("#saveGames").show();
                        $("#saveGamesBottom").show();
                        }, 10000);
                })
                .error( function(edata) {
                    alert(edata);
                });
        } 

    }

    init();
    function init() {
        $scope.current = {};
        $scope.teamstat = {};
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            alert ("You must login!")
            $location.path("#home");
        }

        $scope.current.memberlogin = loginService.getLogin();

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                nflTeamsService.addCurrentWeek($scope.current.week);
                nflTeamsService.addCurrentSeason($scope.current.season);

                var orderby = "orderby=screenname";
                membersFactory.getMembers(orderby)
                    .success( function(data) {
                        $scope.members = data; 
                        $scope.seasons = nflTeamsService.getNFLTeamseasons();

                        teamsFactory.getNFLTeamseasonweeks($scope.current.season)
                            .success( function(data) {
                                $scope.weeks = data; 

                                //
                                // get bye teams
                                //
                                var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                                teamsFactory.getNFLByeWeekMemberTeams(q)
                                    .success( function(data) {
                                        $scope.byegames = data; 
                                    })
                                    .error( function(edata) {
                                        alert(edata);
                                    });       

                                $scope.current.memberid = $scope.current.memberlogin.memberid;
                                var memberid = "memberid="+$scope.current.memberid;
                                membersFactory.getMember(memberid)
                                    .success( function(data) {
                                        $scope.current.memberavatar = data.avatar;  

                                        var q = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;
                                        teamsFactory.getNFLGamesWeekMemberTeams(q)
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

    $scope.getMemberWeekPicks = function(itemChanged) {
        selectChange(itemChanged);
    }

    $scope.saveGames = function() {
        saveGames();
    }

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }

    $scope.setSelectTeam = function (teamtype, gamenbr, awayteamid, hometeamid, teamselected) {
        setSelectTeam(teamtype, gamenbr, awayteamid, hometeamid, teamselected);
    }

    $scope.getTeamStats = function (hometeamid,awayteamid,gamenbr) {
        getTeamStats(hometeamid,awayteamid,gamenbr);
    }
    
}

controllers.viewselectpickgamesController = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, loginService) {

    function getMemberProfile(memberid)
    {
        // alert("memberid = "+memberid)

        var q = "memberid="+memberid;
        membersFactory.getMemberProfileDialog(q)
            .success( function(data) {
                $scope.memberprofile = data; 

                $('#memberProfileDialogModalTitle').text("Member Profile Information");
                $('#memberProfileDialogModalBody').html(data);
                $('#memberProfileDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    function selectChange()
    {
        var memberid = "memberid="+$scope.current.memberid;
        
        membersFactory.getMember(memberid)
            .success( function(data) {
                $scope.current.memberavatar = data.avatar;

                var data = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;

                teamsFactory.getNFLGamesWeekMemberTeams(data)
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

        //
        // get bye teams
        //
        var q = "week="+$scope.current.week+"&season="+$scope.current.season;
        teamsFactory.getNFLByeWeekMemberTeams(q)
            .success( function(data) {
                $scope.byegames = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    init();
    function init() {
        $scope.current = {};

        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            alert ("You must login!")
            $location.path("#home");
        }
        
        $scope.current.memberlogin = loginService.getLogin();

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;  

                nflTeamsService.addCurrentWeek($scope.current.week);
                nflTeamsService.addCurrentSeason($scope.current.season);  

                var orderby = "orderby=screenname";
                membersFactory.getMembers(orderby)
                    .success( function(data) {
                        $scope.members = data; 

                        $scope.seasons = nflTeamsService.getNFLTeamseasons(); 

                        teamsFactory.getNFLTeamseasonweeks($scope.current.season)
                        .success( function(data) {
                            $scope.weeks = data; 

                        //
                        // get bye teams
                        //
                        var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                        teamsFactory.getNFLByeWeekMemberTeams(q)
                            .success( function(data) {
                                $scope.byegames = data; 
                            })
                            .error( function(edata) {
                                alert(edata);
                            }); 

                        $scope.current.memberid = $scope.current.memberlogin.memberid;
                        var memberid = "memberid="+$scope.current.memberid;
                        membersFactory.getMember(memberid)
                            .success( function(data) {
                                $scope.current.memberavatar = data.avatar;

                                var q = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;
                                teamsFactory.getNFLGamesWeekMemberTeams(q)
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

    $scope.getMemberProfile = function(memberid) {
        getMemberProfile(memberid);
    }

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }
}

controllers.viewtotalpickgamesController = function ($scope, $http, $location, teamsFactory, nflTeamsService, loginService) {

    function selectChange()
    {
        var data = "week="+$scope.current.week+"&season="+$scope.current.season;

        teamsFactory.getNFLGamesWeekMemberTeamPicks(data)
            .success( function(data) {
                $scope.games = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    init();
    function init() {
        $scope.current = {};

        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            alert ("You must login!")
            $location.path("#home");
        }
    
        $scope.seasons = nflTeamsService.getNFLTeamseasons(); 

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;  

                nflTeamsService.addCurrentWeek($scope.current.week);
                nflTeamsService.addCurrentSeason($scope.current.season);  

                teamsFactory.getNFLTeamseasonweeks($scope.current.season)
                    .success( function(data) {
                        $scope.weeks = data; 

                        var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                        teamsFactory.getNFLGamesWeekMemberTeamPicks(q)
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