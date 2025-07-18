controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, membersFactory, teamsFactory, nflTeamsService) {
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

    function showPicture(title, picture) {
        $('#homePicShowModalTitle').text(title);
        $scope.showPictureSrc = "../img/"+ picture;
        $('#homePicShowModal').modal();
    }

    // function showPicture() {
    //     // $('#homePicShowModalTitle').text("Thank you Lord for all that we have!");
    //     // // $('#homePicShowModalBody').text(body);
    //     $('#homePicShowModal').modal();
    // }

    function letItSnow () 
    {
        if ($scope.isSnowing == 0)
        {
            AnimateTextColor("letitsnowtext",
                "Click Tree Stop Snow!",
                "red",
                500);
            
            var flakeObj =  { minSize: 10, maxSize: 40, newOn: 600, flakeColor1: '#2ECC71', flakeColor2: 'red'};
            // var targetArea = "#ddd-view";
            var targetArea = "body";
            $scope.intervalVariable = makeSnowAnimation(flakeObj,targetArea);

            $scope.isSnowing = 1;

            $scope.tracker('let it snow',
              'ChristmasSnow',
              'dddParentController',
              'NA',
              'NA');
        }
        else
        {
            AnimateTextColor("letitsnowtext",
                "Click Tree Start Snow!",
                "teal",
                500);

            stopSnowAnimation();
            $scope.isSnowing = 0;
        }
        
    }

    function stopSnowAnimation()
    {
        clearInterval($scope.intervalVariable); 
    }


    init();
    function init() {
        $scope.imagePath = "../img";
        $scope.isSnowing = 0;
        $scope.intervalVariable = "";
        AnimateTextColor("letitsnowtext",
                "Click Tree Start Snow!",
                "teal",
                500);

        $scope.current = {};
        $scope.newseason = true;

       // parent.document.body.style.overflowY='scroll';

        getAvatar();
        loginService.setAvatarLabel("menubaravatar",0);
        var route = loginService.setLoginLogoffLabel("menubarlogin",0);

        // preload nfl team data
        teamsFactory.getNFLTeams()
            .success( function(data) {
                nflTeamsService.setNFLTeams(data); 
            })
            .error( function(edata) {
                alert(edata);
            });

        teamsFactory.getNFLTeamseasons()
            .success( function(data) {
                nflTeamsService.setNFLTeamseasons(data);
            })
            .error( function(edata) {
                alert(edata);
            }); 
 
        teamsFactory.getNFLGametypes()
            .success( function(data) {
                nflTeamsService.setNFLGametypes(data); 
            })
            .error( function(edata) {
                alert(edata);
            });  

        teamsFactory.getNFLnetworks()
            .success( function(data) {
                nflTeamsService.setNFLnetworks(data);
            })
            .error( function(edata) {
                alert(edata);
            });

        teamsFactory.getNFLpostseasonstatus()
            .success( function(data) {
                nflTeamsService.setNFLpostseasonstatus(data);
            })
            .error( function(edata) {
                alert(edata);
            }); 

        teamsFactory.getNFLrss()
            .success( function(data) {
                nflTeamsService.setNFLrss(data);
            })
            .error( function(edata) {
                alert(edata);
            }); 

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                nflTeamsService.addCurrentWeek($scope.current.week);
                nflTeamsService.addCurrentSeason($scope.current.season);

                teamsFactory.getNFLTeamseasonweeks($scope.current.season)
                    .success( function(data) {
                        $scope.weeks = data; 

                        // this is a hack to insure that last years bracket shows up until
                        // newseason variable (in init) turns to false

                        if ($scope.newseason)
                        {
                            bracketseason = $scope.current.season - 1;
                        }
                        else
                        {
                            bracketseason = $scope.current.season;
                        } 

                        var q = "season="+bracketseason; 
                        // var q = "&season="+$scope.current.season;

                        // get team bracket image for showpic. Remove this if decide to not show.                           
                        teamsFactory.getTeamBracket(q)
                            .success( function(data) {
                                $scope.current.bracket = "";

                                if (data != "null")
                                {
                                    $scope.current.season = data.season; 
                                    $scope.current.bracket = data.bracket;
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

    $scope.checkRole = function () {
        checkRole();
    }

    $scope.letItSnow = function() {
        letItSnow();
    }

    $scope.showPicture = function (title, picture) {
        showPicture(title, picture);   
    }

    $scope.tracker = function (tracktext, trackaction, trackmodule, trackseason, trackweek){
      var memberid = "";
      var season = "";
      var week = "";
      var rv = "";

      $scope.current.memberlogin = loginService.getLogin();
      memberid = $scope.current.memberlogin.memberid;

      if (trackweek == 'NA')
      {
          season = nflTeamsService.getCurrentSeason();
          week = nflTeamsService.getCurrentWeek();
      }
      else
      {
          season = trackseason;
          week = trackweek;
      }

      var q = "trackaction="+trackaction+"&trackmodule="+trackmodule+"&trackmemberid="+memberid+"&tracktext="+tracktext+"&trackseason="+season+"&trackweek="+week;   
      membersFactory.track(q)
      .success( function(data) {
          rv = "Ok"; 
      })
      .error( function(edata) {
          rv = "Err"; 
      }); 
    } 
}

controllers.loginController = function ($scope, $http, $location, loginService, msgService, loginFactory) {
    $scope.login = loginService.getEmptyLogin();
    $scope.msg = msgService.getEmptyMsg();
     
    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //

        
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

                    $scope.tracker('member login',
                      'login',
                      'dddParentController',
                      'NA',
                      'NA');

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

        $('#iformationDialogModal').modal('hide');
        
        $location.path("/home");
    }
        
}

controllers.homeController = function ($scope, $http, $location, $window, $route, loginService, teamsFactory) {


    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //

        var navButtons = $('#navbarButtons');
        navButtons.on('show.bs.collapse','.collapse', function() {
                navButtons.find('.collapse.in').collapse('hide');
            });

        $scope.$parent.checkRole();  

        $window.scrollTo(0, 0);

        var loggedIn = loginService.isLoggedIn();
        if (loggedIn)
            $("#menubarlogin").text("Logoff");
        else
            $("#menubarlogin").show("Login");
      
    };

    $scope.homepagelogin = function () {
        $scope.$parent.loginlogoff();

        // $route.reload();
    }
}