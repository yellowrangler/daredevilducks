controllers.teamstandingsController = function ($scope, $http, $location, $window, nflTeamsService, chartService, teamsFactory) {
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
        //     teamStandingsCollapse.find('.collapse.in').collapse('hide');

        //     $window.scrollTo(0, 0);
        // });

        $scope.$parent.tracker('team standings',
              'teamStandings',
              'teamstandingsController',
              'NA',
              'NA');

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


    function resetChartObject() 
    {
        $scope.chart = {};
        $scope.chart.data = [];
        $scope.chart.series = [];
        $scope.chart.labels = [];
        $scope.chart.colors = [];
        $scope.chart.options = {};
        $scope.chart.datasetOverride = [];

    }

    function displayChart()
    {
        resetChartObject();

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

                $scope.current.message = "<p>This line chart compares <span style='color:red;font-weight:800;'> power rankings</span> for 2 teams for each completed week in the season. The <span style='color:red;font-weight:800;'> higher the value the better the team ranking</span>; the lower the worse! </p>";
                break;

            case "2":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This line chart shows <span style='color:red;font-weight:800;'> offensive and defensive rankings</span> for 1 team for each completed week in the season. The <span style='color:red;font-weight:800;'> higher the value the better the ranking</span>; the lower the worse! </p>";
                break;

            case "3":
                $scope.current.showteama = true;
                $scope.current.showteamb = true;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = "1";
                $scope.current.teamb = "2";

                $scope.current.message = "<p>This bar chart compares <span style='color:red;font-weight:800;'>power rankings</span> for 2 teams for all completed weeks. The <span style='color:red;font-weight:800;'>higher the value the better the team ranking</span>; the lower the worse! </p>";
                break;

            case "4":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This bar chart shows <span style='color:red;font-weight:800;'> the offensive rankings</span> for 1 team for each week of the selected season. The <span style='color:red;font-weight:800;'> higher the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "5":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This bar chart show <span style='color:red;font-weight:800;'> defensive rankings</span> for 1 team for the current week. The team you pick will have a bar chart built to show how its defensive rankings for overall, scoring, passing and rushing have changed from the beginning of the season to the current week. The <span style='color:red;font-weight:800;'>the higher the value the better the ranking</span>; the lower the worse! </p>";
                break;

            case "6":
                $scope.current.showteama = true;
                $scope.current.showteamb = true;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = "1";
                $scope.current.teamb = "2";

                $scope.current.message = "<p>This bar chart shows <span style='color:red;font-weight:800;'> offensive and defensive rankings</span> (overall, scoring, passing and rushing) of 2 teams for the current week. The <span style='color:red;font-weight:800;'> higer the value the better the ranking</span>; the lower the worse! </p>";
                break;

            case "7":
                $scope.current.showteama = true;
                $scope.current.showteamb = true;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = "1";
                $scope.current.teamb = "2";

                $scope.current.message = "<p>This line chart shows <span style='color:red;font-weight:800;'>reverse offensive and defensive rankings</span>. The teams you pick will have a line chart built to show how its offensive and defensive rankings for overall, scoring, passing and rushing for the current week. In this way you can compare the relative merits of the two teams. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that the higher <span style='color:red;font-weight:800;'>the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "8":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This bar chart shows <span style='color:red;font-weight:800;'>reverse offensive and defensive rankings</span>. The team you pick will have a bar chart built to show how its offensive and defensive rankings for overall, scoring, passing and rushing have changed from the beginning of the season to the current week. We realized that most people tend to look at charts as the higher the line the better the score.</p><p>So we Took these rankings (where lower is better) and subtracted 33 from all scores. What this means to you is that <span style='color:red;font-weight:800;'>the higher the line the better the ranking</span>; the lower the worse! </p>";
                break;

            case "9":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This line chart shows <span style='color:red;font-weight:800;'> offensive rankings</span> (overall, scoring, passing and rushing) for 1 team for all completed weeks. The <span style='color:red;font-weight:800;'> higher the value the better the ranking</span>; the lower the worse! </p>";
                break;
                
            case "10":
                $scope.current.showteama = true;
                $scope.current.showteamb = false;
                $scope.current.showlinechart = false;
                $scope.current.showbarchart = false;

                $scope.current.teama = " ";
                $scope.current.teamb = " ";

                $scope.current.message = "<p>This line chart shows <span style='color:red;font-weight:800;'> defensive  rankings</span> (overall, scoring, passing and rushing) for 1 team for all completed weeks. The <span style='color:red;font-weight:800;'> higher the value the better the ranking</span>; the lower the worse!  </p>";
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
                // $scope.teamweekranksA = data[0];
                $scope.chart.data[0] = data[0];

                var q = "teamid="+teamB+"&season="+$scope.current.season;
                teamsFactory.getTeamsPowerRankings(q)
                    .success( function(data) {
                        $scope.chart.data[1] = data[0];
                        // $scope.teamweekranksB = data[0];

                        //  set labels
                        $scope.chart.labels = data[1];

                        drawChart1();
                    })
                    .error( function(edata) {
                        alert(edata);
                    });
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function drawChart1()
    {
        
        // ChartJsProvider.setOptions({ colors : [ '#803690', '#00ADF9', '#DCDCDC', '#46BFBD', '#FDB45C', '#949FB1', '#4D5360'] });

        //  set series
        $scope.chart.series[0] = $( "#teamidA option:selected" ).text();
        $scope.chart.series[1] = $( "#teamidB option:selected" ).text();

        $scope.chart.colors = [
              
        ];

        // set dataoveride
        $scope.chart.datasetOverride = [
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
        $scope.chart.options = {
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

    function getTeamDataChart2 ()
    {
        var teamA = $scope.current.teamidA;

        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.chart.data = data;
                $scope.chart.labels = data[8];
                $scope.chart.data.splice(8);

                drawChart2();

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function drawChart2()
    {
        $scope.chart.series[0] = "Off All";
        $scope.chart.series[1] = "Off Score";
        $scope.chart.series[2] = "Off Pass";
        $scope.chart.series[3] = "Off Rush";
        $scope.chart.series[4] = "Def All";
        $scope.chart.series[5] = "Def Score";
        $scope.chart.series[6] = "Def Pass";
        $scope.chart.series[7] = "Def Rush";

        $scope.chart.colors = [
               
        ];


        // set dataoveride
        $scope.chart.datasetOverride = [
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
            },
            {
               backgroundColor: $scope.rgbacolors.brightred,
               pointBackgroundColor: $scope.rgbacolors.brightred,
               pointHoverBackgroundColor: $scope.rgbacolors.brightred,
               borderColor: $scope.rgbacolors.brightred,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightred,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.brightyellow,
               pointBackgroundColor: $scope.rgbacolors.brightyellow,
               pointHoverBackgroundColor: $scope.rgbacolors.brightyellow,
               borderColor: $scope.rgbacolors.brightyellow,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightyellow,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.darkgreen,
               pointBackgroundColor: $scope.rgbacolors.darkgreen,
               pointHoverBackgroundColor: $scope.rgbacolors.darkgreen,
               borderColor: $scope.rgbacolors.darkgreen,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.darkgreen,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.darkpurple,
               pointBackgroundColor: $scope.rgbacolors.darkpurple,
               pointHoverBackgroundColor: $scope.rgbacolors.darkpurple,
               borderColor: $scope.rgbacolors.darkpurple,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.darkpurple,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.lightpurple,
               pointBackgroundColor: $scope.rgbacolors.lightpurple,
               pointHoverBackgroundColor: $scope.rgbacolors.lightpurple,
               borderColor: $scope.rgbacolors.lightpurple,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.lightpurple,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.brightorange,
               pointBackgroundColor: $scope.rgbacolors.brightorange,
               pointHoverBackgroundColor: $scope.rgbacolors.brightorange,
               borderColor: $scope.rgbacolors.brightorange,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightorange,
               fill: false
            }
        ];

        $scope.chart.options = {
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

    function getTeamDataChart3()
    {
        var teamA = $scope.current.teamidA;
        var teamB = $scope.current.teamidB;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamsPowerRankings(q)
            .success( function(data) {
                $scope.chart.data[0] = data[0];

                var q = "teamid="+teamB+"&season="+$scope.current.season;
                teamsFactory.getTeamsPowerRankings(q)
                    .success( function(data) {
                        $scope.chart.data[1] = data[0];

                        //  set labels
                        $scope.chart.labels = data[1];

                        drawChart3();
                    })
                    .error( function(edata) {
                        alert(edata);
                    });
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function drawChart3()
    {
         //  set series
        $scope.chart.series[0] = $( "#teamidA option:selected" ).text();
        $scope.chart.series[1] = $( "#teamidB option:selected" ).text();

        // set colors
        $scope.chart.colors = [
               
        ];

        // set dataoveride
        $scope.chart.datasetOverride = [
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
        $scope.chart.options = {
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

    function getTeamDataChart6 ()
    {
        var teamA = $scope.current.teamidA;
        var teamB = $scope.current.teamidB;
        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamsStatsCurrentWeek(q)
            .success( function(data) {
                $scope.chart.data[0] = data;

                var q = "teamid="+teamB+"&season="+$scope.current.season;
                teamsFactory.getTeamsStatsCurrentWeek(q)
                    .success( function(data) {
                        $scope.chart.data[1] = data;

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

    function drawChart6()
    {
        $scope.chart.series[0] = $( "#teamidA option:selected" ).text();
        $scope.chart.series[1] = $( "#teamidB option:selected" ).text();

        $scope.chart.labels[0] = "Off All";
        $scope.chart.labels[1] = "Off Score";
        $scope.chart.labels[2] = "Off Pass";
        $scope.chart.labels[3] = "Off Rush";
        $scope.chart.labels[4] = "Def All";
        $scope.chart.labels[5] = "Def Score";
        $scope.chart.labels[6] = "Def Pass";
        $scope.chart.labels[7] = "Def Rush";

        // set colors
        $scope.chart.colors = [
               
        ];

        // set dataoveride
        $scope.chart.datasetOverride = [
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

        $scope.chart.options = {
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

    function getTeamDataChart9 ()
    {
        var teamA = $scope.current.teamidA;

        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.chart.data = data;
                $scope.chart.labels = data[8];
                $scope.chart.data.splice(4);

                drawChart9();

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function drawChart9()
    {
        $scope.chart.series[0] = "Overall Offence";
        $scope.chart.series[1] = "Scoring Offence";
        $scope.chart.series[2] = "Passing Offence";
        $scope.chart.series[3] = "Rushing Offence";

        $scope.chart.colors = [
               
        ];

        // set dataoveride
        $scope.chart.datasetOverride = [
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
            },
            {
               backgroundColor: $scope.rgbacolors.brightred,
               pointBackgroundColor: $scope.rgbacolors.brightred,
               pointHoverBackgroundColor: $scope.rgbacolors.brightred,
               borderColor: $scope.rgbacolors.brightred,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightred,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.brightyellow,
               pointBackgroundColor: $scope.rgbacolors.brightyellow,
               pointHoverBackgroundColor: $scope.rgbacolors.brightyellow,
               borderColor: $scope.rgbacolors.brightyellow,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightyellow,
               fill: false
            }
        ];

        $scope.chart.options = {
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



    function getTeamDataChart10 ()
    {
        var teamA = $scope.current.teamidA;

        // var week = $scope.current.week;

        var q = "teamid="+teamA+"&season="+$scope.current.season;
        teamsFactory.getTeamPowerRankings(q)
            .success( function(data) {
                $scope.chart.data = data;
                $scope.chart.labels = data[8];
                $scope.chart.data.splice(0,4);
                $scope.chart.data.splice(4);

                drawChart10();

                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function drawChart10()
    {
        $scope.chart.series[0] = "Overall Defense";
        $scope.chart.series[1] = "Scoring Defense";
        $scope.chart.series[2] = "Passing Defense";
        $scope.chart.series[3] = "Rushing Defense";

        $scope.chart.colors = [
               
        ];

        // set dataoveride
        $scope.chart.datasetOverride = [
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
            },
            {
               backgroundColor: $scope.rgbacolors.brightred,
               pointBackgroundColor: $scope.rgbacolors.brightred,
               pointHoverBackgroundColor: $scope.rgbacolors.brightred,
               borderColor: $scope.rgbacolors.brightred,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightred,
               fill: false
            },
            {
               backgroundColor: $scope.rgbacolors.brightyellow,
               pointBackgroundColor: $scope.rgbacolors.brightyellow,
               pointHoverBackgroundColor: $scope.rgbacolors.brightyellow,
               borderColor: $scope.rgbacolors.brightyellow,
               pointBorderColor: '#fff',
               pointHoverBorderColor: $scope.rgbacolors.brightyellow,
               fill: false
            }
        ];

        $scope.chart.options = {
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

        // 
        // chartjs objects
        // 
        resetChartObject();

        $scope.rgbacolors = chartService.getChartColorsList();
        
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

        $scope.$parent.tracker('team stat charts',
              'teamCharts',
              'teamstatschartsController',
              'NA',
              'NA');

        getTeamStatsCharts();

        $scope.teamstatscharts = chartService.getChartList("teamCharts");
        $scope.rgbacolors = chartService.getChartColorsList();


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

controllers.teamweeklyrankingController = function ($scope, $http, $location, teamsFactory, membersFactory, chartService, nflTeamsService, loginService) {

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

    function drawChartDiff() 
    {
        // set 2 serries
        $scope.chart.series[0] = $scope.current.hometeamname;
        $scope.chart.series[1] = $scope.current.awayteamname;

        // set 8 labels
        $scope.chart.labels[0] = "O/D All";
        $scope.chart.labels[1] = "O/D Score";
        $scope.chart.labels[2] = "O/D Pass";
        $scope.chart.labels[3] = "O/D Rush";
        $scope.chart.labels[4] = "D/O All";
        $scope.chart.labels[5] = "D/O Score";
        $scope.chart.labels[6] = "D/O Pass";
        $scope.chart.labels[7] = "D/O Rush";

       // set colors
        $scope.chart.colors = [
               
        ];

        // set dataoveride
        $scope.chart.datasetOverride = [
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
        $scope.chart.options = {
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
                $scope.chart.data[0] = data; 

                var q = "teamid="+awayteamid+"&season="+$scope.current.season;
                teamsFactory.getTeamsStatsCurrentWeek(q)
                    .success( function(data) {
                        $scope.chart.data[1] = data; 

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

        // 
        // chartjs objects
        // 
        $scope.chart = {};
        $scope.chart.data = [];
        $scope.chart.series = [];
        $scope.chart.labels = [];
        $scope.chart.colors = [];
        $scope.chart.options = {};
        $scope.chart.datasetOverride = [];

        $scope.rgbacolors = chartService.getChartColorsList();

        $scope.teamstats = {};
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
         {
            alert ("You must login!")
            $location.path("#home");
        }

        $scope.$parent.tracker('team scores and stats',
              'teamScoresStats',
              'teamweeklyrankingController',
              'NA',
              'NA');

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

        $scope.$parent.tracker('team websites',
              'teamDiscovery',
              'teamdiscoveryController',
              'NA',
              'NA');

        $scope.teams = nflTeamsService.getNFLTeams(); 

  }

}

controllers.nflnewsController = function ($scope, $sce, $http, $location, nflTeamsService, teamsFactory) {
    $scope.current = {};

    function htmlString (str) 
    {
        // return "<p>" + str + "</p>";
        return str;
    }


    function getNFLrssFeed() 
    {
        if ($scope.current.rsslinkid == 0)
            return 0;

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
        var newssearch = $scope.current.newssearch;

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
                    rssInfo.description = "<p>RSS feed was unable to complete request!</p>";
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

                    var outboundIdx = 0;
                    for (var idx = 0; idx < arrLength; idx++)
                    {
                        if (found > 0)
                        {
                            // only run for nfl rss which we dont support any more
                            var rssInfo = {};

                            rssInfo.pubDate = data.entry[idx].published;
                            rssInfo.description = htmlString(data.entry[idx].summary);
                            rssInfo.link = data.entry[idx].link['@attributes'].href;

                            $scope.nflnews[idx]= rssInfo;
                        }
                        else
                        {
                            // var matchStr = "/" + newssearch + "/gi";
                            var matchvalue = new RegExp(newssearch, 'gi');
                            // xxx.match(re);

                            var results = "";
                            var match = 0;

                            let title = htmlString(data.channel.item[idx].title);
                            results = title.match(matchvalue);
                            if (results != null)
                                match = 1;

                            let description = htmlString(data.channel.item[idx].description);
                            results = description.match(matchvalue);
                            if (results != null)
                                match = 1;

                            if (match == 1)
                            {
                                data.channel.item[outboundIdx].description = htmlString(data.channel.item[idx].description);
                                $scope.nflnews[outboundIdx] = data.channel.item[idx];

                                outboundIdx = outboundIdx + 1;
                            }
                            // data.channel.item[idx].description = htmlString(data.channel.item[idx].description);
                            // $scope.nflnews[idx] = data.channel.item[idx];
                        }
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

        $scope.$parent.tracker('nfl news',
              'nflNews',
              'nflnewsController',
              'NA',
              'NA');

        $scope.current.rsslinkid = 0;
        $scope.nflrsss = nflTeamsService.getNFLrss();

        $scope.current.newssearch = "";
        $scope.newsdetail = "";
        $scope.newsurl = "";
        $scope.current.newsidx = -1;
    };

    $scope.getNFLrssFeed = function () {
        getNFLrssFeed();
    }

    $scope.refreshNflNews = function (){
        refreshNflNews();
    }

    $scope.sanitizeMe = function(text) {
        return $sce.trustAsHtml(text)
    }

    // $scope.loadNewsDetail = function (url, idx) {
    //     loadNewsDetail(url, idx); 
    // }

    // $scope.showiFrameYes = function (idx) {
    //     showiFrameYes(idx);
    // }

    // $scope.trustSrc = function(src) {
    //     var x = $sce.trustAsResourceUrl(src);

    //     return x;
    // }

    // $scope.decodeRssString = function (str) {
    //     return decodeHtmlString(str);
    // }
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

        $scope.$parent.tracker('team brackets',
              'teamBrackets',
              'playoffstandingsController',
              'NA',
              'NA');

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