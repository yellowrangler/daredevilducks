controllers.playerstatstotalwinsController = function ($scope, $http, $location, $window, nflTeamsService, membersFactory, teamsFactory, loginService) {

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

    function workWinsTableData(data)
    {
        data.position = {};

        var prev = 0;
        $.each(data, function (index,value) {
            if (index == 0)
            {
                value.position = index+1;
            }
            else
            {
                prev = index - 1;
                if (value.wins == data[prev].wins)
                {
                    value.position = data[prev].position;
                }
                else
                {
                    value.position = data[prev].position +1;
                }
            }
        });

        return data;
    }

    function getYearlyTotalWins(action) 
    {
        if (action == 'experts')
        {
            switch ($scope.current.showexperts) {
                case 0:
                    $scope.current.showexperts = 1;
                    $scope.current.showexpertsTitle = "Hide Experts";
                    break;

                case 1:
                    $scope.current.showexperts = 0;
                    $scope.current.showexpertsTitle = "Show Experts";
                    break;    
                default:
                
            }
        }

        //
        // get total season win leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&membergroupid="+$scope.current.membergroupid+"&leaderType=wins"+"&showexperts="+$scope.current.showexperts;;
        teamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                $scope.memberseasonwinstats = workWinsTableData(data); 
            })
            .error( function(edata) {
                alert(edata);
            });      
    }

    init();
    function init() {
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

        var navButtons = $('#navbarButtonsLeader');
        navButtons.on('show.bs.collapse','.collapse', function() {
                navButtons.find('.collapse.in').collapse('hide');

                $window.scrollTo(0, 0);
            });

        $scope.current = {};
        $scope.current.season = nflTeamsService.getCurrentSeason();
        $scope.current.gametypeid = 1;
        $scope.seasons = nflTeamsService.getNFLTeamseasons();
        $scope.gametypes = nflTeamsService.getNFLGametypes();
        $scope.current.showexperts = 0;
        $scope.current.showexpertsTitle = "Show Experts";

        $scope.$parent.tracker('member total wins',
              'playerTotals',
              'playerstatstotalwinsController',
              'NA',
              'NA');

        //
        // get member groups
        //
        membersFactory.getAllMemberGroups()
            .success( function(data) {
                $scope.membergroups = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 

        //
        // get wins season leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&leaderType=wins"+"&showexperts="+$scope.current.showexperts;
        teamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                $scope.memberseasonwinstats = workWinsTableData(data);  
            })
            .error( function(edata) {
                alert(edata);
            });    
    };

    $scope.getYearlyTotalWins = function(action) {
        getYearlyTotalWins(action);
    }

    $scope.getMemberProfile = function(memberid) {
        getMemberProfile(memberid);
    }
}

controllers.playerstatstotalpercentageController = function ($scope, $http, $location, $window, nflTeamsService, membersFactory, teamsFactory, loginService) {
    
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

    function workPercentTableData(data)
    {
        data.position = {};

        var prev = 0;
        $.each(data, function (index,value) {
            if (index == 0)
            {
                value.position = index+1;
            }
            else
            {
                prev = index - 1;
                if (value.playerpickedpercent == data[prev].playerpickedpercent)
                {
                    value.position = data[prev].position;
                }
                else
                {
                    value.position = data[prev].position +1;
                }
            }
        });

        return data;
    }

    function getYearlyTotalPercentage(action) 
    {
        if (action == 'experts')
        {
            switch ($scope.current.showexperts) {
                case 0:
                    $scope.current.showexperts = 1;
                    $scope.current.showexpertsTitle = "Hide Experts";
                    break;

                case 1:
                    $scope.current.showexperts = 0;
                    $scope.current.showexpertsTitle = "Show Experts";
                    break;    
                default:
                
            }
        }

        //
        // get total season percent leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&membergroupid="+$scope.current.membergroupid+"&leaderType=pickingpercent"+"&showexperts="+$scope.current.showexperts;;
        teamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                $scope.memberseasonpercentstats = workPercentTableData(data); 
            })
            .error( function(edata) {
                alert(edata);
            });
    }

    init();
    function init() {
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

        var navButtons = $('#navbarButtonsLeader');
        navButtons.on('show.bs.collapse','.collapse', function() {
                navButtons.find('.collapse.in').collapse('hide');

                $window.scrollTo(0, 0);
            });

        $scope.current = {};
        $scope.current.season = nflTeamsService.getCurrentSeason();
        $scope.current.gametypeid = 1;
        $scope.seasons = nflTeamsService.getNFLTeamseasons();
        $scope.gametypes = nflTeamsService.getNFLGametypes();
        $scope.current.showexperts = 0;
        $scope.current.showexpertsTitle = "Show Experts";

        //
        // get member groups
        //
        membersFactory.getAllMemberGroups()
            .success( function(data) {
                $scope.membergroups = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        //
        // get percent season leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&leaderType=pickingpercent"+"&showexperts="+$scope.current.showexperts;
        teamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                $scope.memberseasonpercentstats = workPercentTableData(data); 
            })
            .error( function(edata) {
                alert(edata);
            });
    };

    $scope.getYearlyTotalPercentage = function(action) {
        getYearlyTotalPercentage(action);
    }

    $scope.getMemberProfile = function(memberid) {
        getMemberProfile(memberid);
    }
}

controllers.playerstatsmemberweeklyController = function ($scope, $http, $location, membersFactory, nflTeamsService, teamsFactory, loginService) {

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

    function selectChange(action)
    {
        // Set button title and toggle showexperts
        if (action == 'experts')
        {
            switch ($scope.current.showexperts) {
                case 0:
                    $scope.current.showexperts = 1;
                    $scope.current.showexpertsTitle = "Hide Experts";
                    break;

                case 1:
                    $scope.current.showexperts = 0;
                    $scope.current.showexpertsTitle = "Show Experts";
                    break;    
                default:
                    
            }
        }
        
        var requestStr = "season="+$scope.current.season+"&week="+$scope.current.week+"&membergroupid="+$scope.current.membergroupid+"&showexperts="+$scope.current.showexperts;

        teamsFactory.getMemberWeekStats(requestStr)
            .success( function(data) {
                $scope.memberweekstats = workWinsTableData(data); 

            })
            .error( function(edata) {
                alert(edata);
            });
    }

    function workWinsTableData(data)
    {
        data.position = {};

        var prev = 0;
        $.each(data, function (index,value) {
            if (index == 0)
            {
                value.position = index+1;
            }
            else
            {
                prev = index - 1;
                if (value.wins == data[prev].wins)
                {
                    value.position = data[prev].position;
                }
                else
                {
                    value.position = data[prev].position +1;
                }
            }
        });

        return data;
    }

    init();
    function init() {
        $scope.current = {};
        $scope.current.showexperts = 0;
        $scope.current.showexpertsTitle = "Show Experts";
        
        $scope.$parent.tracker('weekly member wins',
              'weeklyTotals',
              'playerstatsmemberweeklyController',
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

        //
        // get member groups
        //
        membersFactory.getAllMemberGroups()
            .success( function(data) {
                $scope.membergroups = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 

        $scope.current.memberlogin = loginService.getLogin();
        
        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                nflTeamsService.addCurrentWeek($scope.current.week);
                nflTeamsService.addCurrentSeason($scope.current.season);  

                $scope.seasons = nflTeamsService.getNFLTeamseasons();
        
                teamsFactory.getNFLTeamseasonweeks($scope.current.season)
                    .success( function(data) {
                        $scope.weeks = data;

                        var requestStr = "season="+$scope.current.season+"&week="+$scope.current.week+"&showexperts="+$scope.current.showexperts;
                        teamsFactory.getMemberWeekStats(requestStr)
                            .success( function(data) {
                                $scope.memberweekstats = workWinsTableData(data); 

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

    $scope.getMemberWeekStats = function(action) {
        selectChange(action);
    }

    $scope.getMemberProfile = function(memberid) {
        getMemberProfile(memberid);
    }
}