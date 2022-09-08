controllers.teamstandingsController = function ($scope, $http, $location, $window, nflTeamsService, teamsFactory) {
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
        // var teamStandingsCollapse = $('#teamStandingsCollapse');
        // teamStandingsCollapse.on('show.bs.collapse','.collapse', function() {
        //         teamStandingsCollapse.find('.collapse.in').collapse('hide');

        //         $window.scrollTo(0, 0);
        //     });

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

controllers.teamstatschartsController = function ($scope, $http, $location, teamsFactory, membersFactory, nflTeamsService, chartService, loginService) {


    function displayChart()
    {
        switch ($scope.current.chartid)
        {
            case "1":
                getTeamDataChart1();

                $scope.current.showlinechart = true;
                $scope.current.showbarchart = false;
                break;

            case "2":
                getTeamDataChart2();

                $scope.current.showlinechart = true;
                $scope.current.showbarchart = false;
                break;

            case "3":
                getTeamDataChart3();

                $scope.current.showlinechart = false;
                $scope.current.showbarchart = true;
                break;

            case "4":
                getTeamDataChart4();

                $scope.current.showlinechart = false;
                $scope.current.showbarchart = true;
                break;

            case "5":
                getTeamDataChart5();

                $scope.current.showlinechart = false;
                $scope.current.showbarchart = true;
                break;

            case "6":
                getTeamDataChart6();

                $scope.current.showlinechart = false;
                $scope.current.showbarchart = true;
                break;

            case "7":
                getTeamDataChart7();

                $scope.current.showlinechart = true;
                $scope.current.showbarchart = false;
                break;

            case "8":
                getTeamDataChart8();

                $scope.current.showlinechart = false;
                $scope.current.showbarchart = true;
                break;

            case "9":
                getTeamDataChart9();

                $scope.current.showlinechart = true;
                $scope.current.showbarchart = false;
                break;
                
            case "10":
                getTeamDataChart10();

                $scope.current.showlinechart = true;
                $scope.current.showbarchart = false;
                break;        

            default:
                $scope.current.chartid = "";
        }

    }

    function getTeamStatsCharts()
    {
        switch ($scope.current.chartid)
        {
            case "1":
                $scope.current.showteama = true;
                $scope.current.showteamb = true;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = "1";
                $scope.current.teamb = "2";

                $scope.current.message = "<p>This line chart shows <span display='color:red;font-weight:800;'>reverse power rankings</span>. The two teams you pick will have a line chart built so you can compare the teams relative merits. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took the power rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the charted value the better the team ranking</span>; the lower the worse! </p>";
                break;

            case "2":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This line chart shows <span display='color:red;font-weight:800;'>reverse offensive and defensive rankings</span>. The team you pick will have a line chart built to show how its offensive and defensive rankings for overall, scoring, passing and rushing have changed from the beginning of the season to the current week. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "3":
                $scope.current.showteama = true;
                $scope.current.showteamb = true;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = "1";
                $scope.current.teamb = "2";

                $scope.current.message = "<p>This bar chart shows <span display='color:red;font-weight:800;'>reverse power rankings</span>. The two teams you pick will have a bar chart built so you can compare the teams relative merits. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took the power rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the charted value the better the team ranking</span>; the lower the worse! </p>";
                break;

            case "4":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This bar chart shows <span display='color:red;font-weight:800;'>reverse offensive rankings</span>. The team you pick will have a bar chart built to show how its offensive rankings for overall, scoring, passing and rushing have changed from the beginning of the season to the current week. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "5":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This bar chart shows <span display='color:red;font-weight:800;'>reverse defensive rankings</span>. The team you pick will have a bar chart built to show how its defensive rankings for overall, scoring, passing and rushing have changed from the beginning of the season to the current week. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "6":
                $scope.current.showteama = true;
                $scope.current.showteamb = true;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = "1";
                $scope.current.teamb = "2";

                $scope.current.message = "<p>This bar chart shows <span display='color:red;font-weight:800;'>reverse offensive and defensive rankings</span>. The teams you pick will have a bar chart built to show how its offensive and defensive rankings for overall, scoring, passing and rushing for the current week. In this way you can compare the relative merits of the two teams. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that the higher <span display='color:red;font-weight:800;'>the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "7":
                $scope.current.showteama = true;
                $scope.current.showteamb = true;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = "1";
                $scope.current.teamb = "2";

                $scope.current.message = "<p>This line chart shows <span display='color:red;font-weight:800;'>reverse offensive and defensive rankings</span>. The teams you pick will have a line chart built to show how its offensive and defensive rankings for overall, scoring, passing and rushing for the current week. In this way you can compare the relative merits of the two teams. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that the higher <span display='color:red;font-weight:800;'>the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "8":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This bar chart shows <span display='color:red;font-weight:800;'>reverse offensive and defensive rankings</span>. The team you pick will have a bar chart built to show how its offensive and defensive rankings for overall, scoring, passing and rushing have changed from the beginning of the season to the current week. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "9":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This line chart shows <span display='color:red;font-weight:800;'>reverse offensive and rankings</span>. The team you pick will have a line chart built to show its offensive rankings per week for overall, scoring, passing and rushing since from the beginning of the season. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the line the better the ranking</span>; the lower the worse! </p>";
                break;
                
            case "10":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This line chart shows <span display='color:red;font-weight:800;'>reverse defensive rankings</span>. The team you pick will have a line chart built to show how its defensive rankings for per week for overall, scoring, passing and rushing since the beginning of the season to the current week. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span display='color:red;font-weight:800;'>the higher the line the better the ranking</span>; the lower the worse! </p>";
                break;        

            default:
                $scope.current.chartid = "";
        }

        $("#chartMessage").html($scope.current.message);

    }

    function getTeamDataChart1()
    {
        var teamA = $scope.current.teamidA;
        var teamB = $scope.current.teamidB;
        var season = $scope.current.season;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamsPowerRankings(q)
            .success( function(data) {
                $scope.teamweekranksA = data[0];

                var q = "teamid="+teamB+"&season="+$scope.current.season;
                teamsFactory.getTeamsPowerRankings(q)
                    .success( function(data) {
                        $scope.teamweekranksB = data[0];

                        $scope.powerRankingsWeeks = data[1];

                        drawChart1($scope.teamweekranksA, $scope.teamweekranksB, $scope.powerRankingsWeeks);
                    })
                    .error( function(edata) {
                        alert(edata);
                    });
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart2 ()
    {
        var teamA = $scope.current.teamidA;

        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.pot = data[0];
                $scope.pos = data[1];
                $scope.pop = data[2];
                $scope.por = data[3];
                $scope.pdt = data[4];
                $scope.pds = data[5];
                $scope.pdp = data[6];
                $scope.pdr = data[7];

                $scope.weeks = data[8];

                drawChart2($scope.pot,
                            $scope.pos,
                            $scope.pop,
                            $scope.por,
                            $scope.pdt,
                            $scope.pds,
                            $scope.pdp,
                            $scope.pdr,
                            $scope.weeks);

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart3()
    {
        var teamA = $scope.current.teamidA;
        var teamB = $scope.current.teamidB;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamsPowerRankings(q)
            .success( function(data) {
                $scope.teamweekranksA = data[0];

                var q = "teamid="+teamB+"&season="+$scope.current.season;
                teamsFactory.getTeamsPowerRankings(q)
                    .success( function(data) {
                        $scope.teamweekranksB = data[0];

                        $scope.powerRankingsWeeks = data[1];

                        drawChart3($scope.teamweekranksA, $scope.teamweekranksB, $scope.powerRankingsWeeks);
                    })
                    .error( function(edata) {
                        alert(edata);
                    });
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart4 ()
    {
        var teamA = $scope.current.teamidA;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.pot = data[0];
                $scope.pos = data[1];
                $scope.pop = data[2];
                $scope.por = data[3];
                $scope.pdt = data[4];
                $scope.pds = data[5];
                $scope.pdp = data[6];
                $scope.pdr = data[7];

                $scope.weeks = data[8];

                drawChart4($scope.pot,
                            $scope.pos,
                            $scope.pop,
                            $scope.por,
                            $scope.weeks);

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart5 ()
    {
        var teamA = $scope.current.teamidA;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.pot = data[0];
                $scope.pos = data[1];
                $scope.pop = data[2];
                $scope.por = data[3];
                $scope.pdt = data[4];
                $scope.pds = data[5];
                $scope.pdp = data[6];
                $scope.pdr = data[7];

                $scope.weeks = data[8];

                drawChart5($scope.pdt,
                            $scope.pds,
                            $scope.pdp,
                            $scope.pdr,
                            $scope.weeks);

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart6 ()
    {
        var teamA = $scope.current.teamidA;
        var teamB = $scope.current.teamidB;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
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

                var q = "teamid="+teamB+"&season="+$scope.current.season;
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

                        drawChart6();
                    })
                    .error( function(edata) {
                        alert(edata);
                    });
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart7 ()
    {
        var teamA = $scope.current.teamidA;
        var teamB = $scope.current.teamidB;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
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

                var q = "teamid="+teamB+"&season="+$scope.current.season;
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

                        drawChart7();
                    })
                    .error( function(edata) {
                        alert(edata);
                    });
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart8 ()
    {
        var teamA = $scope.current.teamidA;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.pot = data[0];
                $scope.pos = data[1];
                $scope.pop = data[2];
                $scope.por = data[3];
                $scope.pdt = data[4];
                $scope.pds = data[5];
                $scope.pdp = data[6];
                $scope.pdr = data[7];

                $scope.weeks = data[8];

                drawChart8($scope.pot,
                            $scope.pos,
                            $scope.pop,
                            $scope.por,
                            $scope.pdt,
                            $scope.pds,
                            $scope.pdp,
                            $scope.pdr,
                            $scope.weeks);

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart9 ()
    {
        var teamA = $scope.current.teamidA;

        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.pot = data[0];
                $scope.pos = data[1];
                $scope.pop = data[2];
                $scope.por = data[3];
                $scope.weeks = data[8];

                drawChart9($scope.pot,
                            $scope.pos,
                            $scope.pop,
                            $scope.por,
                            $scope.weeks);

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function getTeamDataChart10 ()
    {
        var teamA = $scope.current.teamidA;

        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.pdt = data[4];
                $scope.pds = data[5];
                $scope.pdp = data[6];
                $scope.pdr = data[7];
                $scope.weeks = data[8];

                drawChart10($scope.pdt,
                            $scope.pds,
                            $scope.pdp,
                            $scope.pdr,
                            $scope.weeks);

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function drawChart1(teamApowerRankings, teamBpowerRankings, powerRankingsWeeks)
    {
        var series1 = $( "#teamidA option:selected" ).text();
        var series2 = $( "#teamidB option:selected" ).text();

        $scope.labels = powerRankingsWeeks;
        $scope.series = [series1, series2];
        $scope.data = [
             teamApowerRankings,
             teamBpowerRankings
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

        $scope.datasetOverride = [
                {
                    yAxisID: 'Power-Rankings'
                }
            ];

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

    function drawChart2(pot,pos,pop,por,pdt,pds,pdp,pdr,weeks)
    {
        var series1 = "Off All";
        var series2 = "Off Score";
        var series3 = "Off Pass";
        var series4 = "Off Rush";
        var series5 = "Def All";
        var series6 = "Def Score";
        var series7 = "Def Pass";
        var series8 = "Def Rush";


        $scope.labels = weeks;


        $scope.series = [series1,
                    series2,
                    series3,
                    series4,
                    series5,
                    series6,
                    series7,
                    series8];

        $scope.data = [
             pot,pos,pop,por,pdt,pds,pdp,pdr
            ];

        $scope.colors = [
            {
                // backgroundColor: 'transparent',
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            },
            {
                // backgroundColor: 'transparent',
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            }];

        $scope.datasetOverride = [
                {
                    yAxisID: 'Power-Rankings'
                }
            ];

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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
            }
        };
    }

    function drawChart3(teamApowerRankings, teamBpowerRankings, powerRankingsWeeks)
    {
        var series1 = $( "#teamidA option:selected" ).text();
        var series2 = $( "#teamidB option:selected" ).text();

        $scope.labels = powerRankingsWeeks;
        $scope.series = [series1, series2];
        $scope.data = [
             teamApowerRankings,
             teamBpowerRankings
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

    function drawChart4(pot,pos,pop,por,weeks)
    {
        var series1 = "Off All";
        var series2 = "Off Score";
        var series3 = "Off Pass";
        var series4 = "Off Rush";

        $scope.labels = weeks;

        $scope.series = [series1,
                    series2,
                    series3,
                    series4];
        $scope.data = [
             pot,pos,pop,por
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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
            }
        };
    }

    function drawChart5(pdt,pds,pdp,pdr,weeks)
    {
        var series1 = "Def All";
        var series2 = "Def Score";
        var series3 = "Def Pass";
        var series4 = "Def Rush";

        $scope.labels = weeks;

        $scope.series = [series1,
                    series2,
                    series3,
                    series4];
        $scope.data = [
             pdt,pds,pdp,pdr
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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
            }
        };
    }

    function drawChart6()
    {
        var series1 = $( "#teamidA option:selected" ).text();
        var series2 = $( "#teamidB option:selected" ).text();

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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
            }
        };
    }

    function drawChart7()
    {
        var series1 = $( "#teamidA option:selected" ).text();
        var series2 = $( "#teamidB option:selected" ).text();

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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
            }
        };
    }

    function drawChart8(pot,pos,pop,por,pdt,pds,pdp,pdr,weeks)
    {
        var series1 = "Off All";
        var series2 = "Off Score";
        var series3 = "Off Pass";
        var series4 = "Off Rush";
        var series5 = "Def All";
        var series6 = "Def Score";
        var series7 = "Def Pass";
        var series8 = "Def Rush";


        $scope.labels = weeks;


        $scope.series = [series1,
                    series2,
                    series3,
                    series4,
                    series5,
                    series6,
                    series7,
                    series8];

        $scope.data = [
             pot,pos,pop,por,pdt,pds,pdp,pdr
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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
            }

        };
    }

    function drawChart9(pot,pos,pop,por,weeks)
    {
        var series1 = "Overall Offence";
        var series2 = "Scoring Offence";
        var series3 = "Passing Offence";
        var series4 = "Rushing Offence";


        $scope.labels = weeks;


        $scope.series = [series1,
                    series2,
                    series3,
                    series4];

        $scope.data = [
             pot,pos,pop,por
            ];

        $scope.colors = [
            {
                // backgroundColor: 'transparent',
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            },
            {
                // backgroundColor: 'transparent',
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            }];

        $scope.datasetOverride = [
                {
                    yAxisID: 'Power-Rankings'
                }
            ];

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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
            }
        };
    }

    function drawChart10(pdt,pds,pdp,pdr,weeks)
    {
        var series1 = "Overall Defense";
        var series2 = "Scoring Defense";
        var series3 = "Passing Defense";
        var series4 = "Rushing Defence";


        $scope.labels = weeks;


        $scope.series = [series1,
                    series2,
                    series3,
                    series4];

        $scope.data = [
             pdt,pds,pdp,pdr
            ];

        $scope.colors = [
            {
                // backgroundColor: 'transparent',
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            },
            {
                // backgroundColor: 'transparent',
                fillColor: 'rgba(47, 132, 71, 0.8)',
                strokeColor: 'rgba(47, 132, 71, 0.8)',
                highlightFill: 'rgba(47, 132, 71, 0.8)',
                highlightStroke: 'rgba(47, 132, 71, 0.8)'
            }];

        $scope.datasetOverride = [
                {
                    yAxisID: 'Power-Rankings'
                }
            ];

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
            },
            elements: { 
                line: { fill: false, borderWidth: 3 },
                point:{ radius: 5 } 
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
        $scope.seasons = nflTeamsService.getNFLTeamseasons();

        // default chart is poer rankings compare
        $scope.current.chartid = "1";
        $scope.current.showteama = true;
        $scope.current.showteamb = true;
        $scope.teamstatscharts = chartService.getChartList("teamCharts");

        getTeamStatsCharts();

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
    };

    $scope.getTeamStatsCharts = function() {
        getTeamStatsCharts();
    }

    $scope.displayChart = function() {
        displayChart();
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

                        drawChart6(); 

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

        getTeamWeekRank($scope.current.teamid);

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

        $scope.teamstats = {};
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
         {
            alert ("You must login!")
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

    $scope.getTeamStats = function (hometeamname,hometeamid,awayteamname,awayteamid,gamenbr) {
        getTeamStats(hometeamname,hometeamid,awayteamname,awayteamid,gamenbr);
    }

}

controllers.teamdiscoveryController = function ($scope, $http, $log, $location, nflTeamsService) {

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //

        $scope.teams = nflTeamsService.getNFLTeams(); 

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
        var url = $scope.newsurl;

        var data = "url=" + encodeURIComponent(url);
        // var data = "url=" + url;
        teamsFactory.getrss(data)
            .success( function(data) {
                // nfl rss does not use channel or item so must check first
                $scope.nflnews = {};
                var arrLength = 0;

                if (data == "false")
                {
                    var rssInfo = {};

                    rssInfo.pubDate = "Error";
                    rssInfo.description = "RSS feed was unable to complete request!";
                    rssInfo.link = "";

                    $scope.nflnews[idx]= rssInfo;
                }
                else
                {
                    var found = url.indexOf("www.nfl.com");
                    if (found > 0)
                        arrLength = data.entry.length;
                    else
                        arrLength = data.channel.item.length;

                    for (var idx = 0; idx < arrLength; idx++)
                    {
                        if (found > 0)
                        {
                            var rssInfo = {};

                            rssInfo.pubDate = data.entry[idx].published;
                            rssInfo.description = data.entry[idx].summary;
                            rssInfo.link = data.entry[idx].link['@attributes'].href;

                            $scope.nflnews[idx]= rssInfo;
                        }
                        else
                            $scope.nflnews[idx] = data.channel.item[idx];
                    }  
                }
                                 
            })
            .error( function(edata) {
                alert(edata);
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
        $scope.current.rsslinkid = 1;
        $scope.nflrsss = nflTeamsService.getNFLrss();

        $scope.newsdetail = "";
        $scope.newsurl = "";
        $scope.current.newsidx = -1;

        // $scope.newsurl = 'http://www.cbssports.com/partners/feeds/rss/nfl_news';
        // $scope.newsurl = 'http://www.nfl.com/rss/rsslanding?searchString=home';
        // $scope.newsurl = 'http://sports.espn.go.com/espn/rss/nfl/news';
        // $scope.newsurl = 'http://www.rotowire.com/rss/news.htm?sport=nfl';
        // $scope.newsurl = 'http://api.foxsports.com/v1/rss?partnerKey=zBaFxRyGKCfxBagJG9b8pqLyndmvo7UU&tag=nfl';
        // getNFLrssFeed(); 
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
        var q = "season="+$scope.current.season;                            
        teamsFactory.getTeamBracket(q)
            .success( function(data) {

                $scope.bracket = "";

                if (data != "null")
                {
                    $scope.current.season = data.season; 
                    $scope.bracket = data.bracket;
                }
            })
            .error( function(edata) {
                alert(edata);
            });
    }

    init();
    function init() {
        $scope.seasons = nflTeamsService.getNFLTeamseasons();

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;  

                teamsFactory.getNFLTeamseasonweeks($scope.current.season)
                    .success( function(data) {
                        $scope.weeks = data; 

                        var q = "season="+$scope.current.season;                            
                        teamsFactory.getTeamBracket(q)
                            .success( function(data) {
                                if (data != "null")
                                {
                                    $scope.current.season = data.season; 
                                    $scope.bracket = data.bracket;
                                }
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

    $scope.selectChange = function() {
        selectChange();
    }
}