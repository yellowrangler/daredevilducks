controllers.pickgamesController = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, loginService) {

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

    function drawChart6() 
    {
        var series1 = $scope.current.hometeamname;
        var series2 = $scope.current.awayteamname;

        var labels1 = "Off All";
        var labels2 = "Off Score";
        var labels3 = "Off Pass";
        var labels4 = "Off Rush";
        var labels5 = "Def All";
        var labels6 = "Def Score";
        var labels7 = "Def Pass";
        var labels8 = "Def Rush";

        $scope.labels = [labels1,labels2,labels3,labels4,labels5,labels6,labels7,labels8];
        
        $scope.series = [series1,series2];

        $scope.data = [
                        [$scope.teamApot,
                        $scope.teamApos,
                        $scope.teamApop,
                        $scope.teamApor,
                        $scope.teamApdt,
                        $scope.teamApds,
                        $scope.teamApdp,
                        $scope.teamApdr
                        ],
                        [
                        $scope.teamBpot,
                        $scope.teamBpos,
                        $scope.teamBpop,
                        $scope.teamBpor,
                        $scope.teamBpdt,
                        $scope.teamBpds,
                        $scope.teamBpdp,
                        $scope.teamBpdr
                        ]
                    ];

        $scope.colors = [
            {
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            },
            {
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            }];   

        // $scope.datasetOverride = [
        //         { 
        //             yAxisID: 'Power-Rankings' 
        //         }
        //     ];

        $scope.options = {
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

    function drawChartDiff() 
    {
        var series1 = $scope.current.hometeamname;
        var series2 = $scope.current.awayteamname;

        var labels1 = "O/D All";
        var labels2 = "O/D Score";
        var labels3 = "O/D Pass";
        var labels4 = "O/D Rush";
        var labels5 = "D/O All";
        var labels6 = "D/O Score";
        var labels7 = "D/O Pass";
        var labels8 = "D/O Rush";

        $scope.labels = [labels1,labels2,labels3,labels4,labels5,labels6,labels7,labels8];
        
        $scope.series = [series1,series2];

        $scope.data = [
                        [$scope.teamApot,
                        $scope.teamApos,
                        $scope.teamApop,
                        $scope.teamApor,
                        $scope.teamApdt,
                        $scope.teamApds,
                        $scope.teamApdp,
                        $scope.teamApdr
                        ],
                        [
                        $scope.teamBpdt,
                        $scope.teamBpds,
                        $scope.teamBpdp,
                        $scope.teamBpdr,
                        $scope.teamBpot,
                        $scope.teamBpos,
                        $scope.teamBpop,
                        $scope.teamBpor
                        ]
                    ];

        $scope.colors = [
            {
                fillColor: '#fdf386',
                strokeColor: '#fdf386',
                highlightFill: '#fdf386',
                highlightStroke: '#fdf386'
            },
            {
                fillColor: 'rgba(253, 243, 134, 0.8)',
                strokeColor: 'rgba(253, 243, 134, 0.8)',
                highlightFill: 'rgba(253, 243, 134, 0.8)',
                highlightStroke: 'rgba(253, 243, 134, 0.8)'
            }];   

        // $scope.datasetOverride = [
        //         { 
        //             yAxisID: 'Power-Rankings' 
        //         }
        //     ];

        $scope.options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: true,
                  position: 'left',
                  ticks: {
                    display: false 
                  }
                  
                }
              ]
            }
        };
    }

    function getTeamStats (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr)
    {
        $scope.current.hometeamname = hometeamname;
        $scope.current.awayteamname = awayteamname;

        var q = "teamid="+hometeamid+"&season="+$scope.current.season;
        teamsFactory.getTeamsStatsCurrentWeek(q)
            .success( function(data) {
                $scope.teamApot = data[0]; 
                $scope.teamApos = data[1]; 
                $scope.teamApop = data[2]; 
                $scope.teamApor = data[3]; 
                $scope.teamApdt = data[4]; 
                $scope.teamApds = data[5]; 
                $scope.teamApdp = data[6]; 
                $scope.teamApdr = data[7]; 

                var q = "teamid="+awayteamid+"&season="+$scope.current.season;
                teamsFactory.getTeamsStatsCurrentWeek(q)
                    .success( function(data) {
                        $scope.teamBpot = data[0]; 
                        $scope.teamBpos = data[1]; 
                        $scope.teamBpop = data[2]; 
                        $scope.teamBpor = data[3]; 
                        $scope.teamBpdt = data[4]; 
                        $scope.teamBpds = data[5]; 
                        $scope.teamBpdp = data[6]; 
                        $scope.teamBpdr = data[7];  

                        drawChartDiff(); 

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
              'pickgames',
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

        function drawChartSame() 
    {
        var series1 = $scope.current.hometeamname;
        var series2 = $scope.current.awayteamname;

        var labels1 = "Off All";
        var labels2 = "Off Score";
        var labels3 = "Off Pass";
        var labels4 = "Off Rush";
        var labels5 = "Def All";
        var labels6 = "Def Score";
        var labels7 = "Def Pass";
        var labels8 = "Def Rush";

        $scope.labels = [labels1,labels2,labels3,labels4,labels5,labels6,labels7,labels8];
        
        $scope.series = [series1,series2];

        $scope.data = [
                        [$scope.teamApot,
                        $scope.teamApos,
                        $scope.teamApop,
                        $scope.teamApor,
                        $scope.teamApdt,
                        $scope.teamApds,
                        $scope.teamApdp,
                        $scope.teamApdr
                        ],
                        [
                        $scope.teamBpot,
                        $scope.teamBpos,
                        $scope.teamBpop,
                        $scope.teamBpor,
                        $scope.teamBpdt,
                        $scope.teamBpds,
                        $scope.teamBpdp,
                        $scope.teamBpdr
                        ]
                    ];

        // $scope.colors = [ '#FD1F5E','#1EF9A1','#7FFD1F','#68F000' ];  

        // $scope.datasetOverride = [
        //         { 
        //             yAxisID: 'Power-Rankings' 
        //         }
        //     ];

        $scope.options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: false,
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

    function drawChartDiff() 
    {
        var series1 = $scope.current.hometeamname;
        var series2 = $scope.current.awayteamname;

        var labels1 = "O/D All";
        var labels2 = "O/D Score";
        var labels3 = "O/D Pass";
        var labels4 = "O/D Rush";
        var labels5 = "D/O All";
        var labels6 = "D/O Score";
        var labels7 = "D/O Pass";
        var labels8 = "D/O Rush";

        $scope.labels = [labels1,labels2,labels3,labels4,labels5,labels6,labels7,labels8];
        
        $scope.series = [series1,series2];

        $scope.data = [
                        [$scope.teamApot,
                        $scope.teamApos,
                        $scope.teamApop,
                        $scope.teamApor,
                        $scope.teamApdt,
                        $scope.teamApds,
                        $scope.teamApdp,
                        $scope.teamApdr
                        ],
                        [
                        $scope.teamBpdt,
                        $scope.teamBpds,
                        $scope.teamBpdp,
                        $scope.teamBpdr,
                        $scope.teamBpot,
                        $scope.teamBpos,
                        $scope.teamBpop,
                        $scope.teamBpor
                        ]
                    ];

        $scope.colors = [
            {
                fillColor: '#fdf386',
                strokeColor: '#fdf386',
                highlightFill: '#fdf386',
                highlightStroke: '#fdf386'
            },
            {
                fillColor: 'rgba(253, 243, 134, 0.8)',
                strokeColor: 'rgba(253, 243, 134, 0.8)',
                highlightFill: 'rgba(253, 243, 134, 0.8)',
                highlightStroke: 'rgba(253, 243, 134, 0.8)'
            }];   

        // $scope.datasetOverride = [
        //         { 
        //             yAxisID: 'Power-Rankings' 
        //         }
        //     ];

        $scope.options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: true,
                  position: 'left',
                  ticks: {
                    display: false 
                  }
                  
                }
              ]
            }
        };
    }

    function getTeamStats (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr)
    {
        $scope.current.hometeamname = hometeamname;
        $scope.current.awayteamname = awayteamname;

        var q = "teamid="+hometeamid+"&season="+$scope.current.season;
        teamsFactory.getTeamsStatsCurrentWeek(q)
            .success( function(data) {
                $scope.teamApot = data[0]; 
                $scope.teamApos = data[1]; 
                $scope.teamApop = data[2]; 
                $scope.teamApor = data[3]; 
                $scope.teamApdt = data[4]; 
                $scope.teamApds = data[5]; 
                $scope.teamApdp = data[6]; 
                $scope.teamApdr = data[7]; 

                var q = "teamid="+awayteamid+"&season="+$scope.current.season;
                teamsFactory.getTeamsStatsCurrentWeek(q)
                    .success( function(data) {
                        $scope.teamBpot = data[0]; 
                        $scope.teamBpos = data[1]; 
                        $scope.teamBpop = data[2]; 
                        $scope.teamBpor = data[3]; 
                        $scope.teamBpdt = data[4]; 
                        $scope.teamBpds = data[5]; 
                        $scope.teamBpdp = data[6]; 
                        $scope.teamBpdr = data[7];  

                        // drawChartSame(); 
                        drawChartDiff();

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

    $scope.getTeamStats = function (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr) {
        getTeamStats(hometeamname,hometeamid,awayteamname,awayteamid,gamenbr);
    }

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }
}

controllers.viewtotalpickgamesController = function ($scope, $http, $location, teamsFactory, nflTeamsService, loginService) {
    function drawChartSame() 
    {
        var series1 = $scope.current.hometeamname;
        var series2 = $scope.current.awayteamname;

        var labels1 = "Off All";
        var labels2 = "Off Score";
        var labels3 = "Off Pass";
        var labels4 = "Off Rush";
        var labels5 = "Def All";
        var labels6 = "Def Score";
        var labels7 = "Def Pass";
        var labels8 = "Def Rush";

        $scope.labels = [labels1,labels2,labels3,labels4,labels5,labels6,labels7,labels8];
        
        $scope.series = [series1,series2];

        $scope.data = [
                        [$scope.teamApot,
                        $scope.teamApos,
                        $scope.teamApop,
                        $scope.teamApor,
                        $scope.teamApdt,
                        $scope.teamApds,
                        $scope.teamApdp,
                        $scope.teamApdr
                        ],
                        [
                        $scope.teamBpot,
                        $scope.teamBpos,
                        $scope.teamBpop,
                        $scope.teamBpor,
                        $scope.teamBpdt,
                        $scope.teamBpds,
                        $scope.teamBpdp,
                        $scope.teamBpdr
                        ]
                    ];

        // $scope.colors = [ '#FD1F5E','#1EF9A1','#7FFD1F','#68F000' ];  

        // $scope.datasetOverride = [
        //         { 
        //             yAxisID: 'Power-Rankings' 
        //         }
        //     ];

        $scope.options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: false,
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

    function drawChartDiff() 
    {
        var series1 = $scope.current.hometeamname;
        var series2 = $scope.current.awayteamname;

        var labels1 = "O/D All";
        var labels2 = "O/D Score";
        var labels3 = "O/D Pass";
        var labels4 = "O/D Rush";
        var labels5 = "D/O All";
        var labels6 = "D/O Score";
        var labels7 = "D/O Pass";
        var labels8 = "D/O Rush";

        $scope.labels = [labels1,labels2,labels3,labels4,labels5,labels6,labels7,labels8];
        
        $scope.series = [series1,series2];

        $scope.data = [
                        [$scope.teamApot,
                        $scope.teamApos,
                        $scope.teamApop,
                        $scope.teamApor,
                        $scope.teamApdt,
                        $scope.teamApds,
                        $scope.teamApdp,
                        $scope.teamApdr
                        ],
                        [
                        $scope.teamBpdt,
                        $scope.teamBpds,
                        $scope.teamBpdp,
                        $scope.teamBpdr,
                        $scope.teamBpot,
                        $scope.teamBpos,
                        $scope.teamBpop,
                        $scope.teamBpor
                        ]
                    ];

        $scope.colors = [
            {
                fillColor: '#fdf386',
                strokeColor: '#fdf386',
                highlightFill: '#fdf386',
                highlightStroke: '#fdf386'
            },
            {
                fillColor: 'rgba(253, 243, 134, 0.8)',
                strokeColor: 'rgba(253, 243, 134, 0.8)',
                highlightFill: 'rgba(253, 243, 134, 0.8)',
                highlightStroke: 'rgba(253, 243, 134, 0.8)'
            }];   

        // $scope.datasetOverride = [
        //         { 
        //             yAxisID: 'Power-Rankings' 
        //         }
        //     ];

        $scope.options = {
            legend: { display: true },
            scales: {
              yAxes: [
                {
                  id: 'Power-Rankings',
                  type: 'linear',
                  display: true,
                  position: 'left',
                  ticks: {
                    display: false 
                  }
                  
                }
              ]
            }
        };
    }

    function getTeamStats (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr)
    {
        $scope.current.hometeamname = hometeamname;
        $scope.current.awayteamname = awayteamname;

        var q = "teamid="+hometeamid+"&season="+$scope.current.season;
        teamsFactory.getTeamsStatsCurrentWeek(q)
            .success( function(data) {
                $scope.teamApot = data[0]; 
                $scope.teamApos = data[1]; 
                $scope.teamApop = data[2]; 
                $scope.teamApor = data[3]; 
                $scope.teamApdt = data[4]; 
                $scope.teamApds = data[5]; 
                $scope.teamApdp = data[6]; 
                $scope.teamApdr = data[7]; 

                var q = "teamid="+awayteamid+"&season="+$scope.current.season;
                teamsFactory.getTeamsStatsCurrentWeek(q)
                    .success( function(data) {
                        $scope.teamBpot = data[0]; 
                        $scope.teamBpos = data[1]; 
                        $scope.teamBpop = data[2]; 
                        $scope.teamBpor = data[3]; 
                        $scope.teamBpdt = data[4]; 
                        $scope.teamBpds = data[5]; 
                        $scope.teamBpdp = data[6]; 
                        $scope.teamBpdr = data[7];  

                        // drawChartSame(); 
                        drawChartDiff();

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

    function getMemberPickList(teamid,gamenbr)
    {
        $scope.$parent.tracker('see the picking list',
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

    init();
    function init() {
        $scope.current = {};

        $scope.$parent.tracker('see who is picking what',
                  'viewtotalpickgames',
                  'viewtotalpickgamesController',
                  'NA',
                  'NA');

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