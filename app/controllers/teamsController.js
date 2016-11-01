controllers.teamstandingsController = function ($scope, $http, $location, nflTeamsService, teamsFactory) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    function selectChange()
    {
        var data = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid;
        teamsFactory.getNFLTeamstats(data)
            .success( function(data) {
                $scope.teamstats = data; 
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
        setviewpadding();

        var postseasonstatuses = nflTeamsService.getNFLpostseasonstatus();
        $scope.postseasonstatuses = postseasonstatuses;

        $scope.current.gametypeid = 1;
        $scope.gametypes = nflTeamsService.getNFLGametypes();
        
        var data = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid;
        teamsFactory.getNFLTeamstats(data)
            .success( function(data) {
                $scope.teamstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        $scope.seasons = nflTeamsService.getNFLTeamseasons();
    };

    $scope.selectChange = function() {
        selectChange();
    }
}

controllers.nflnewsController = function ($scope, $sce, $http, $location, nflTeamsService, teamsFactory) {
    $scope.current = {};

    function getNFLrssFeed() 
    {
        $scope.newsurl = getNFLrssLink($scope.current.rsslinkid);

        refreshNflNews();
    }

    function getNFLrssLink(id) 
    { 
        var newsurl = "";
        $.each($scope.nflrsss, function(idx, val) {
           if (val.id == id)
           {
                newsurl = val.rsslink;

                // return false;
           }
        });

        return newsurl;
    }

    function refreshNflNews()
    {
        url = $scope.newsurl;
        $.ajax({
            type: "GET",
            url: document.location.protocol + '//ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=1000&callback=?&q=' + encodeURIComponent(url),
            dataType: 'json',
            error: function(){
                alert('Unable to load feed, Incorrect path or invalid feed');
            },
            success: function(xml){
                $scope.nflnews = xml.responseData.feed.entries; 

                $scope.$digest();
            }
        });
    }

    function loadNewsDetail(url, idx)
    {
        x = windowDimentions();
        $scope.divheight = x.height / 1.8;
        $scope.divwidth = x.width / 1.9;

        $scope.current.newsidx = idx;
        $scope.newsdetail = url;

        // $scope.$digest();
    }

    function showiFrameYes(idx)
    {
        if ($scope.current.newsidx == idx)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }

    init();
    function init() {
        $scope.nflrsss = nflTeamsService.getNFLrss();

        $scope.newsdetail = "";
        $scope.newsurl = "";
        $scope.current.newsidx = -1;
        $scope.current.rsslinkid = 8;

        // $scope.newsurl = 'http://www.cbssports.com/partners/feeds/rss/nfl_news';
        // $scope.newsurl = 'http://www.nfl.com/rss/rsslanding?searchString=home';
        // $scope.newsurl = 'http://sports.espn.go.com/espn/rss/nfl/news';
        // $scope.newsurl = 'http://www.rotowire.com/rss/news.htm?sport=nfl';
        // $scope.newsurl = 'http://api.foxsports.com/v1/rss?partnerKey=zBaFxRyGKCfxBagJG9b8pqLyndmvo7UU&tag=nfl';
        getNFLrssFeed() 

        setviewpadding();
    };

    $scope.getNFLrssFeed = function () {
        getNFLrssFeed();
    }

    $scope.refreshNflNews = function (){
        refreshNflNews();
    }

    $scope.loadNewsDetail = function (url, idx) {
        loadNewsDetail(url, idx); 
    }

    $scope.showiFrameYes = function (idx) {
        showiFrameYes(idx);
    }

    $scope.trustSrc = function(src) {
        var x = $sce.trustAsResourceUrl(src);

        return x;
    }

    $scope.decodeRssString = function (str) {
        return decodeHtmlString(str);
    }
}

controllers.playoffstandingsController = function ($scope, $http, $location, nflTeamsService, teamsFactory) {
    $scope.current = {};
 
    function selectChange()
    {
        setBracketImage();
    }

    function setBracketImage ()
    {
        switch ($scope.current.season)
        {
            case "2014":
                $scope.bracketimg = "NFLPlayOffBracket2014C.png";
                break;

            case "2015":
                $scope.bracketimg = "NFLPlayOffBracket2015H.png";
                break;  
                
            default:
                $scope.bracketimg = ""; 
        }
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $scope.current.season = nflTeamsService.getCurrentSeason();

        setBracketImage();
        
        var data = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid;
        teamsFactory.getNFLTeamstats(data)
            .success( function(data) {
                $scope.teamstats = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

        $scope.seasons = nflTeamsService.getNFLTeamseasons();
    };

    $scope.selectChange = function() {
        selectChange();
    }
}

controllers.teamstatschartsController = function ($scope, $http, $location, teamsFactory, membersFactory, nflTeamsService, loginService) {

    function getTeamWeekRank ()
    {
        var q = "teamid="+$scope.current.teamid+"&season="+$scope.current.season+"&orderbydirection="+$scope.current.toggleSort;
        teamsFactory.getTeamWeekyRanking(q)
            .success( function(data) {
                $scope.teamweekranks = data; 

                var q = "teamid="+$scope.current.teamid;
                teamsFactory.getNflTeam(q)
                    .success( function(data) {
                        $scope.current.team = data; 
                    })
                    .error( function(edata) {
                        alert(edata);
                    });  
                })
            .error( function(edata) {
                alert(edata);
            });  
    }

    function getTeamsPowerRankingsRank ()
    {
        var teamA = $scope.current.teamidA;
        var teamB = $scope.current.teamidB;
        var season = $scope.current.season;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankingAlltoDate(q)
            .success( function(data) {
                $scope.teamweekranksA = data[0]; 

                var q = "teamid="+teamB+"&season="+$scope.current.season;
                teamsFactory.getTeamPowerRankingAlltoDate(q)
                    .success( function(data) {
                        $scope.teamweekranksB = data[0]; 

                        $scope.powerRankingsWeeks = data[1];  

                        drawTeamStatsCharts($scope.teamweekranksA, $scope.teamweekranksB, $scope.powerRankingsWeeks);
                    })
                    .error( function(edata) {
                        alert(edata);
                    });  
                })
            .error( function(edata) {
                alert(edata);
            });  
    }

    function getTeamStatsCharts() 
    {

    }

    function drawTeamStatsCharts(teamApowerRankings, teamBpowerRankings, powerRankingsWeeks) 
    {
        var series1 = $( "#teamidA option:selected" ).text();
        var series2 = $( "#teamidB option:selected" ).text();

        $scope.labels = powerRankingsWeeks;
        $scope.series = [series1, series2];
        $scope.data = [
             teamApowerRankings,
             teamBpowerRankings 
            ];
        $scope.datasetOverride = [{ yAxisID: 'Power-Rankings' }];
        $scope.options = {
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

    init();
    function init() {
        $scope.current = {};
        $scope.current.team = {};
        $scope.current.toggleSort = "ASC";

        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.teams = nflTeamsService.getNFLTeams();
        $scope.current.season = nflTeamsService.getCurrentSeason();

        $scope.current.memberlogin = loginService.getLogin();  
        $scope.current.memberid = $scope.current.memberlogin.memberid;

        var q = "memberid="+$scope.current.memberid;
        membersFactory.getMember(q)
            .success( function(data) {
                $scope.membember = data;

                $scope.current.favoriteteamid = $scope.membember.favoriteteamid;
            })
            .error( function(edata) {
                alert(edata);
            });

        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();
           
    };

    $scope.getTeamStatsCharts = function() {
        getTeamStatsCharts();
    }

    $scope.getTeamsPowerRankingsRank = function() {
        getTeamsPowerRankingsRank();
    }

    $scope.onClick = function (points, evt) {
        console.log(points, evt);
    };

}

controllers.teamweeklyrankingController = function ($scope, $http, $location, teamsFactory, membersFactory, nflTeamsService, loginService) {
    
    function getTeamWeekRank ()
    {
        if ($("#teamRankSortButton").is(':hidden'))
        {
            $("#teamRankSort").addClass("glyphicon-sort-by-attributes");
            $("#teamRankSortButton").show(400);
        }
        

        var q = "teamid="+$scope.current.teamid+"&season="+$scope.current.season+"&orderbydirection="+$scope.current.toggleSort;
        teamsFactory.getTeamWeekyRanking(q)
            .success( function(data) {
                $scope.teamweekranks = data; 

                var q = "teamid="+$scope.current.teamid;
                teamsFactory.getNflTeam(q)
                    .success( function(data) {
                        $scope.current.team = data; 
                    })
                    .error( function(edata) {
                        alert(edata);
                    });  
                })
            .error( function(edata) {
                alert(edata);
            });  
    }

    function toggleSort () 
    {
        if ($scope.current.toggleSort == "DESC")
        {
            $("#teamRankSort").addClass("glyphicon-sort-by-attributes").removeClass("glyphicon-sort-by-attributes-alt");

            $scope.current.toggleSort = "ASC";

        }
        else if ($scope.current.toggleSort == "ASC")
        {
            $("#teamRankSort").addClass("glyphicon-sort-by-attributes-alt").removeClass("glyphicon-sort-by-attributes");

            $scope.current.toggleSort = "DESC";
        }

        getTeamWeekRank();
       
    }

    init();
    function init() {
        $scope.current = {};
        $scope.current.team = {};
        $scope.current.toggletextShow = "Click ME to SHOW Information for Weekly Ranking";
        $scope.current.toggletextHide = "Click ME to HIDE Information for Weekly Ranking";

        $scope.current.teamid = 0;
        $scope.current.toggleSort = "ASC";
        $scope.current.toggletext = $scope.current.toggletextShow;

        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.teams = nflTeamsService.getNFLTeams();
        $scope.current.season = nflTeamsService.getCurrentSeason();

        $scope.current.memberlogin = loginService.getLogin();  
        $scope.current.memberid = $scope.current.memberlogin.memberid;

        var q = "memberid="+$scope.current.memberid;
        membersFactory.getMember(q)
        .success( function(data) {
            $scope.membember = data;

            $scope.current.teamid = $scope.membember.favoriteteamid;

            getTeamWeekRank();
        })
        .error( function(edata) {
            alert(edata);
        });

        $("#teamRankSortButton").hide();

        $('#weeklydefinitions').on('hide.bs.collapse', function () {
            $("#toggletext").text($scope.current.toggletextShow);
        });


        $('#weeklydefinitions').on('show.bs.collapse', function () {
           $("#toggletext").text($scope.current.toggletextHide);
        });

        // getTeamWeekRank();

        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();
           
    };

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }

    $scope.getTeamWeekRank = function() {
        getTeamWeekRank();
    }

    $scope.toggleSort = function () {
        toggleSort();
    }

}