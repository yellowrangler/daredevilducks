controllers.pickgamesController = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, chartService, loginService) {

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

    function drawChartDiff1() 
    {
        // set serries
        $scope.charts[0].series[0] = $scope.current.hometeamname;
        $scope.charts[0].series[1] = $scope.current.awayteamname;

        // set 8 labels
        $scope.charts[0].labels[0] = "O/D All";
        $scope.charts[0].labels[1] = "O/D Score";
        $scope.charts[0].labels[2] = "O/D Pass";
        $scope.charts[0].labels[3] = "O/D Rush";
        $scope.charts[0].labels[4] = "D/O All";
        $scope.charts[0].labels[5] = "D/O Score";
        $scope.charts[0].labels[6] = "D/O Pass";
        $scope.charts[0].labels[7] = "D/O Rush";

        // set colors
        $scope.charts[0].colors = [
               
        ];

        // set dataoveride
        $scope.charts[0].datasetOverride = [
           {
               backgroundColor: $scope.rgbacolors.brightblue,
               pointBackgroundColor: $scope.rgbacolors.brightblue,
               pointHoverBackgroundColor: $scope.rgbacolors.brightblue,
               borderColor: $scope.rgbacolors.brightblue,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightblue,
               fill: true
            },
            {
               backgroundColor: $scope.rgbacolors.brightgreen,
               pointBackgroundColor: $scope.rgbacolors.brightgreen,
               pointHoverBackgroundColor: $scope.rgbacolors.brightgreen,
               borderColor: $scope.rgbacolors.brightgreen,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightgreen,
               fill: true
            }
        ];

        // set options
        $scope.charts[0].options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: true,
                  position: 'left',
                  ticks: {
                    max:32,
                    min:0
                  }
                }
              ]
            }
        };
    }

    function drawChartDiff2() 
    {
        // set serries
        $scope.charts[1].series[0] = $scope.current.hometeamname;
        $scope.charts[1].series[1] = $scope.current.awayteamname;

        // set colors
        $scope.charts[1].colors = [
               
        ];

        // set dataoveride
        $scope.charts[1].datasetOverride = [
            {
               backgroundColor: $scope.rgbacolors.brightblue,
               pointBackgroundColor: $scope.rgbacolors.brightblue,
               pointHoverBackgroundColor: $scope.rgbacolors.brightblue,
               borderColor: $scope.rgbacolors.brightblue,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightblue,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.brightgreen,
               pointBackgroundColor: $scope.rgbacolors.brightgreen,
               pointHoverBackgroundColor: $scope.rgbacolors.brightgreen,
               borderColor: $scope.rgbacolors.brightgreen,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightgreen,
               fill: false
            }
        ];


        // set options
        $scope.charts[1].options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: true,
                  position: 'left',
                  ticks: {
                    max:32,
                    min:0,
                    // reverse: true,
                  }
                }
              ]
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 }
            }
        };
    }

    function getTeamStats (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr)
    {
        $scope.current.hometeamname = hometeamname;
        $scope.current.awayteamname = awayteamname;

        $scope.$parent.tracker('get team stats dialog. hometeam:'+$scope.current.hometeamname+' awayteam:'+$scope.current.awayteamname+' gamenbr:'+gamenbr,
              'teamStatsDialog',
              'pickgamesController',
              $scope.current.season,
              $scope.current.week);

        var q = "teamid="+hometeamid+"&season="+$scope.current.season;
        teamsFactory.getTeamsStatsCurrentWeek(q)
        .success( function(data) {
            $scope.charts[0].data[0] = data;
           
            var q = "teamid="+awayteamid+"&season="+$scope.current.season;
            teamsFactory.getTeamsStatsCurrentWeek(q)
            .success( function(data) {
                $scope.charts[0].data[1] = data;

                drawChartDiff1();

                var q = "teamid="+hometeamid+"&season="+$scope.current.season;
                teamsFactory.getTeamsPowerRankings(q)
                .success( function(data) {
                    $scope.charts[1].data[0] = data[0];

                    var q = "teamid="+awayteamid+"&season="+$scope.current.season;
                    teamsFactory.getTeamsPowerRankings(q)
                    .success( function(data) {
                        $scope.charts[1].data[1] = data[0];

                        //  set labels
                        $scope.charts[1].labels = data[1];

                        drawChartDiff2();

                        var q = "hometeamid="+hometeamid+"&awayteamid="+awayteamid+"&gamenbr="+gamenbr+"&season="+$scope.current.season;
                        teamsFactory.getTeamStandingsDialog(q)
                        .success( function(data) {
                            $scope.teamstats = data[0]; 

                            // $scope.teamstat = "";

                            $('#teamStatsDialogModalTitle').text("Team Stats");
                            // $('#teamStatsDialogModalBody').html(data);
                            $('#teamStatsDialogModal').modal();

                            $('#teamStatsDialogModal').on('shown.bs.modal', function() {
                                
                            })
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
                          
    }

    function setSelectTeamHTML(teamtype, gamenbr, awayteamid, hometeamid, gamestatus)
    {
        var hometeamfieldid = "pickh_"+gamenbr; 
        var awayteamfieldid = "picka_"+gamenbr;    

        var hometeamname = hometeamfieldid+"_teamname"; 
        var hometeamicon = hometeamfieldid+"_icon"; 

        var awayteamname = awayteamfieldid+"_teamname"; 
        var awayteamicon = awayteamfieldid+"_icon";   

        if (teamtype =='home')
        {
            $("#"+hometeamname).addClass("teamSelected").removeClass("teamNotSelected");
            $("#"+hometeamicon).addClass("teamSelected").removeClass("teamNotSelected");

            $("#"+awayteamname).addClass("teamNotSelected").removeClass("teamSelected");
            $("#"+awayteamicon).addClass("teamNotSelected").removeClass("teamSelected");            

            $("#"+hometeamfieldid).val(hometeamid);
            $("#"+hometeamfieldid).prop("disabled", false);

            $("#"+awayteamfieldid).val(0);
            $("#"+awayteamfieldid).prop("disabled", true);
        }
        else if (teamtype =='away')
        {
            $("#"+hometeamname).addClass("teamNotSelected").removeClass("teamSelected");
            $("#"+hometeamicon).addClass("teamNotSelected").removeClass("teamSelected");

            $("#"+awayteamname).addClass("teamSelected").removeClass("teamNotSelected");
            $("#"+awayteamicon).addClass("teamSelected").removeClass("teamNotSelected");


            $("#"+hometeamfieldid).val(0);
            $("#"+hometeamfieldid).prop("disabled", true);

            $("#"+awayteamfieldid).val(awayteamid);
            $("#"+awayteamfieldid).prop("disabled", false);

        }
        else
        {
            $("#"+hometeamname).addClass("teamNotSelected").removeClass("teamSelected");
            $("#"+hometeamicon).addClass("teamNotSelected").removeClass("teamSelected");

            $("#"+awayteamname).addClass("teamNotSelected").removeClass("teamSelected");
            $("#"+awayteamicon).addClass("teamNotSelected").removeClass("teamSelected");
        }
    } 

    //
    // if checked turn this red
    //
    function setSelectTeam(teamtype, gamenbr, awayteamid, hometeamid, gamestatus)
    {
        if (checkRole())
        {
            //
            // check if selected is expired
            //
            var q = "gamenbr="+gamenbr+"&week="+$scope.current.week+"&season="+$scope.current.season;
            teamsFactory.getNFLGamesWeekMemberTeamsExpired(q)
                .success( function(data) {
                    var check = data; 

                    if (check[0].gamestatus == "expired")
                    {
                        // $scope.$parent.showAlert("Too Late!", "Game is alerady underway!");
                        alert("Too Late! \n\nGame is alerady underway!");
                        
                    }
                    else
                    {
                        
                        setSelectTeamHTML(teamtype, gamenbr, awayteamid, hometeamid, gamestatus);
                    }

                })
                .error( function(edata) {
                    alert(edata);

                    return;
                });   
        }
        else
        {
            setSelectTeamHTML(teamtype, gamenbr, awayteamid, hometeamid, gamestatus);
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
        else if (picked > count)
        {
            alert("System Error! You have picked more teams then there are teams to be picked! Games:"+count+" Picked:"+picked+". \nPlease report this to Airdreamer!");
            picked = 0;
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
        $scope.$parent.tracker('save weekly picks',
              'savePickGames',
              'gamesController',
              $scope.current.season,
              $scope.current.week);

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
        $scope.teamstats = {};

        // 
        // chartjs objects
        // 
        $scope.charts = [
            {
                data: [],
                series: [],
                labels: [],
                colors: [],
                options: {},
                datasetOverride: []
            },
            {
                data: [],
                series: [],
                labels: [],
                colors: [],
                options: {},
                datasetOverride: []
            }
        ];  // use this to hold multiple charts

        $scope.rgbacolors = chartService.getChartColorsList();
       
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            alert("Whoops! You must login in order to continue!");
                
            // alert ("You must login in order to continue!")
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

    $scope.getTeamStats = function (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr) {
        getTeamStats(hometeamname,hometeamid,awayteamname,awayteamid,gamenbr);
    }
    
}

controllers.viewtotalpickgamesController = function ($scope, $http, $location, teamsFactory, nflTeamsService, chartService, loginService) {

    function drawChartDiff1() 
    {
        // set serries
        $scope.charts[0].series[0] = $scope.current.hometeamname;
        $scope.charts[0].series[1] = $scope.current.awayteamname;

        // set 8 labels
        $scope.charts[0].labels[0] = "O/D All";
        $scope.charts[0].labels[1] = "O/D Score";
        $scope.charts[0].labels[2] = "O/D Pass";
        $scope.charts[0].labels[3] = "O/D Rush";
        $scope.charts[0].labels[4] = "D/O All";
        $scope.charts[0].labels[5] = "D/O Score";
        $scope.charts[0].labels[6] = "D/O Pass";
        $scope.charts[0].labels[7] = "D/O Rush";

        // set colors
        $scope.charts[0].colors = [
               
        ];

        // set dataoveride
        $scope.charts[0].datasetOverride = [
           {
               backgroundColor: $scope.rgbacolors.brightblue,
               pointBackgroundColor: $scope.rgbacolors.brightblue,
               pointHoverBackgroundColor: $scope.rgbacolors.brightblue,
               borderColor: $scope.rgbacolors.brightblue,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightblue,
               fill: true
            },
            {
               backgroundColor: $scope.rgbacolors.brightgreen,
               pointBackgroundColor: $scope.rgbacolors.brightgreen,
               pointHoverBackgroundColor: $scope.rgbacolors.brightgreen,
               borderColor: $scope.rgbacolors.brightgreen,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightgreen,
               fill: true
            }
        ];

        // set options
        $scope.charts[0].options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: true,
                  position: 'left',
                  ticks: {
                    max:32,
                    min:0
                  }
                }
              ]
            }
        };
    }

    function drawChartDiff2() 
    {
        // set serries
        $scope.charts[1].series[0] = $scope.current.hometeamname;
        $scope.charts[1].series[1] = $scope.current.awayteamname;

        // set colors
        $scope.charts[1].colors = [
               
        ];

        // set dataoveride
        $scope.charts[1].datasetOverride = [
            {
               backgroundColor: $scope.rgbacolors.brightblue,
               pointBackgroundColor: $scope.rgbacolors.brightblue,
               pointHoverBackgroundColor: $scope.rgbacolors.brightblue,
               borderColor: $scope.rgbacolors.brightblue,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightblue,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.brightgreen,
               pointBackgroundColor: $scope.rgbacolors.brightgreen,
               pointHoverBackgroundColor: $scope.rgbacolors.brightgreen,
               borderColor: $scope.rgbacolors.brightgreen,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightgreen,
               fill: false
            }
        ];


        // set options
        $scope.charts[1].options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: true,
                  position: 'left',
                  ticks: {
                    max:32,
                    min:0,
                    // reverse: true,
                  }
                }
              ]
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 }
            }
        };
    }

    function getTeamStats (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr)
    {
        $scope.current.hometeamname = hometeamname;
        $scope.current.awayteamname = awayteamname;

        $scope.$parent.tracker('get team stats dialog. hometeam:'+$scope.current.hometeamname+' awayteam:'+$scope.current.awayteamname+' gamenbr:'+gamenbr,
              'teamStatsDialog',
              'pickgamesController',
              $scope.current.season,
              $scope.current.week);

        var q = "teamid="+hometeamid+"&season="+$scope.current.season;
        teamsFactory.getTeamsStatsCurrentWeek(q)
        .success( function(data) {
            $scope.charts[0].data[0] = data;
           
            var q = "teamid="+awayteamid+"&season="+$scope.current.season;
            teamsFactory.getTeamsStatsCurrentWeek(q)
            .success( function(data) {
                $scope.charts[0].data[1] = data;

                drawChartDiff1();

                var q = "teamid="+hometeamid+"&season="+$scope.current.season;
                teamsFactory.getTeamsPowerRankings(q)
                .success( function(data) {
                    $scope.charts[1].data[0] = data[0];

                    var q = "teamid="+awayteamid+"&season="+$scope.current.season;
                    teamsFactory.getTeamsPowerRankings(q)
                    .success( function(data) {
                        $scope.charts[1].data[1] = data[0];

                        //  set labels
                        $scope.charts[1].labels = data[1];

                        drawChartDiff2();

                        var q = "hometeamid="+hometeamid+"&awayteamid="+awayteamid+"&gamenbr="+gamenbr+"&season="+$scope.current.season;
                        teamsFactory.getTeamStandingsDialog(q)
                        .success( function(data) {
                            $scope.teamstats = data[0]; 

                            // $scope.teamstat = "";

                            $('#teamStatsDialogModalTitle').text("Team Stats");
                            // $('#teamStatsDialogModalBody').html(data);
                            $('#teamStatsDialogModal').modal();

                            $('#teamStatsDialogModal').on('shown.bs.modal', function() {
                                
                            })
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
                          
    }

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

    function getMemberPickList(teamid,gamenbr)
    {
        if (checkRole())
        {
            //
            // check if selected is expired
            //
            var q = "gamenbr="+gamenbr+"&week="+$scope.current.week+"&season="+$scope.current.season+"&addtime=1";
            teamsFactory.getNFLGamesWeekMemberTeamsExpiredAugmented(q)
                .success( function(data) {
                    var check = data; 

                    if (check[0].gamestatus == "block")
                    {
                        $scope.$parent.tracker('bounced: member picking list for teamid:'+teamid+' gamenbr:'+gamenbr+' curdate:'+check[0].curdate+' testdate:'+check[0].testdate,
                              'getMemberPickList',
                              'viewtotalpickgamesController',
                              $scope.current.season,
                              $scope.current.week);

                        // new code
                        alert("Too Early! Data available 1 hour after Game is underway!");

                    }
                    else
                    {
                        
                        $scope.$parent.tracker('member picking list for teamid:'+teamid+' gamenbr:'+gamenbr+' curdate:'+check[0].curdate+' testdate:'+check[0].testdate,
                              'getMemberPickList',
                              'viewtotalpickgamesController',
                              $scope.current.season,
                              $scope.current.week);

                        var q = "week="+$scope.current.week+"&season="+$scope.current.season+"&teamid="+teamid+"&gamenbr="+gamenbr;
                        teamsFactory.getMemberTeamPickListDialog(q)
                            .success( function(data) {
                                $('#memberListDialogModalTitle').text("Members who picked:");
                                $('#memberListDialogModalBody').html(data);
                                $('#memberListDialogModal').modal();
                            })
                            .error( function(edata) {
                                alert(edata);
                            }); 
                    }

                })
                .error( function(edata) {
                    alert(edata);

                    return;
                });   
        }
        else
        {
            $scope.$parent.tracker('member picking list for teamid:'+teamid+' gamenbr:'+gamenbr,
                  'getMemberPickList',
                  'viewtotalpickgamesController',
                  $scope.current.season,
                  $scope.current.week);

            var q = "week="+$scope.current.week+"&season="+$scope.current.season+"&teamid="+teamid+"&gamenbr="+gamenbr;
            teamsFactory.getMemberTeamPickListDialog(q)
                .success( function(data) {
                    $('#memberListDialogModalTitle').text("Members who picked:");
                    $('#memberListDialogModalBody').html(data);
                    $('#memberListDialogModal').modal();
                })
                .error( function(edata) {
                    alert(edata);
                }); 
        }      
    }

    init();
    function init() {
        $scope.current = {};
        $scope.teamstats = {};

        // 
        // chartjs objects
        // 
        $scope.charts = [
            {
                data: [],
                series: [],
                labels: [],
                colors: [],
                options: {},
                datasetOverride: []
            },
            {
                data: [],
                series: [],
                labels: [],
                colors: [],
                options: {},
                datasetOverride: []
            }
        ];  // use this to hold multiple charts

        $scope.rgbacolors = chartService.getChartColorsList();

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
        $scope.current.memberid = $scope.current.memberlogin.memberid;

        if ($scope.current.memberid == 37)
        {
            $scope.$parent.tracker('reroute to login',
                  'init',
                  'viewtotalpickgamesController',
                  'NA',
                  'NA');

            loginService.removeLogin();

            $location.path("#home");
        }
    
        $scope.seasons = nflTeamsService.getNFLTeamseasons(); 

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;  

                $scope.$parent.tracker('see who is picking what',
                  'viewTotalPickGames',
                  'viewtotalpickgamesController',
                  $scope.current.season,
                  $scope.current.week);

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

    $scope.getTeamStats = function (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr) {
        getTeamStats(hometeamname,hometeamid,awayteamname,awayteamid,gamenbr);
    }

    $scope.getMemberPickList = function (teamid,gamenbr) {
        getMemberPickList(teamid,gamenbr)
    }

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }

}