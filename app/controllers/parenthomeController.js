controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, teamsFactory, membersFactory, nflTeamsService) {
    $("#adminselect").hide();
    
    $scope.memberavatar = "";
    // $scope.appVersion = "06292023";

    function checkRole() {
        var role = loginService.getMemberRole();
        if (role == "admin")
        {
            $("#adminselect").show();
            $("#adminselectsmall").show();
        }
        else
        {
            $("#adminselect").hide();
            $("#adminselectsmall").hide();
        }  
    }

    function showPicture(title, picture) {
        $('#homePicShowModalTitle').text(title);
        $scope.showPictureSrc = "img/"+ picture;
        $('#homePicShowModal').modal();
    }

    function getAvatar()
    {
        $scope.memberavatar = loginService.getMemberAvatar();
    }

    function getScreenName()
    {
        $scope.memberscreenname = loginService.getMemberScreenname();
    }

    function showAlert(title, body) {
        $('#parentAlertModalTitle').text(title);
        $('#parentAlertModalBody').text(body);
        $('#parentAlertModal').modal();
    }

    function loginlogoff(request) {
        var route = loginService.setLoginLogoffLabel("menubarlogin",1);
        getAvatar();

        loginService.setAvatarLabel("menubaravatar",1);

        checkRole();
        if (route != "")
        {
            $location.path(route);
        }

        var loggedIn = loginService.isLoggedIn();
        if (loggedIn)
        {
            $("#loginHomeButton").text("Logoff");
        }
        else
        {
            $("#loginHomeButton").text("Login");

            if (route == '/home')
                showAlert("Success", "You are now logged off from Daredevil Ducks");
        }
    }

    function letItSnow () 
    {
        if ($scope.isSnowing == 0)
        {
            AnimateTextColor("letitsnowtext",
                "Click Tree Stop snow!",
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
                "Click Tree Start snow!",
                "NavajoWhite",
                500);

            stopSnowAnimation();
            $scope.isSnowing = 0;
        }
        
    }

    function toggleHalloweenNav () 
    {
        if ($scope.isHalloweenNav == 0)
        {
           
            $('.collapsableNavbarShortOverride').css('background','#FF6E3B');
            $('.customNavbar').css('background','#FF6E3B');

            AnimateTextColor("toggleHalloweenNavText",
                "Click Pumpkin to change colors for Halloween!",
                "#FF6E3B",
                100);
            

            $scope.isHalloweenNav = 1;
        }
        else
        {
            $('.collapsableNavbarShortOverride').css('background','#e7e7e7');
            $('.customNavbar').css('background','');

            AnimateTextColor("toggleHalloweenNavText",
                "Click Pumpkin to restore colors!",
                "NavajoWhite",
                100);

            $scope.isHalloweenNav = 0;
        }
        
    }

    function stopSnowAnimation()
    {
        clearInterval($scope.intervalVariable); 
    }   

    init();
    function init() {
        $scope.imagePath = "img";
        $scope.isSnowing = 0;
        $scope.isHalloweenNav = 0;
        $scope.intervalVariable = "";
        AnimateTextColor("letitsnowtext",
                "Click Tree Start snow!",
                "NavajoWhite",
                500);
        AnimateTextColor("toggleHalloweenNavText",
                "Click Pumpkin to change colors for Halloween!",
                "#FF6E3B",
                100);

        $scope.current = {};
        $scope.bigNavbar = true;

        var ua = getUserAgent();
        $scope.current.devicename = ua.deviceName; 
        $scope.current.devicetype = ua.deviceType;   

        $scope.mobileDevice = isMobile();
       
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $(window).scroll(function() {  

            var windowCurrentPos = $(window).scrollTop();
            var viewTopPos = $('#ddd-view').offset().top;

            
            if (windowCurrentPos >= 100) 
            {
                $("#nav-bar-menu-bar-tall").hide();
                $("#nav-bar-menu-bar-short").show();
                
            } 
            else 
            {
                $("#nav-bar-menu-bar-short").hide();
                $("#nav-bar-menu-bar-tall").show();
            }
        });

        var windowHeight = window.innerHeight;
        $scope.current.homeNewsOpinionesize = windowHeight * .50;

        getAvatar();
        getScreenName();

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
                // console.log("getNFLTeamseasons");
                // console.log(data);
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

                        var q = "season="+$scope.current.season; 
                        // var q = "&season="+$scope.current.season; 


                        // get team bracket image for showpic. Remove this if decide to not show.                           
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

    $scope.loginlogoff = function (request) {
        loginlogoff(request);
    }

    // $scope.goMobile = function () {
    //     window.location.href = "mobile/index.html";
    // }

    $scope.showMemberAvatar = function () {
        getAvatar();
    }

    $scope.getScreenName = function () {
        getScreenName();
    }

    $scope.showAlert = function (title, body) {
        $('#parentAlertModalTitle').text(title);
        $('#parentAlertModalBody').text(body);
        $('#parentAlertModal').modal();
    }

    $scope.letItSnow = function() {
        letItSnow();
    }

    $scope.testPopUp = function(message) {
        alert(message);
    }

    $scope.toggleHalloweenNav = function() {
        toggleHalloweenNav();
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

controllers.loginController = function ($scope, $http, $location, $window, loginService, msgService, loginFactory) {
    $scope.login = loginService.getEmptyLogin();
    $scope.msg = msgService.getEmptyMsg();
     
    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        $window.scrollTo(0, 0);

        setviewpadding();
        
    };

    $scope.sendLoginForm = function() {
        var data = "screenname="+$scope.login.screenname+"&passwd="+$scope.login.passwd;

        loginFactory.loginPassword(data)
            .success( function(login) {
                var ua = getUserAgent();
                
                if (login.rc == "1")
                {
                    loginService.addLogin(login);

                    // get avatar and screen name
                    $scope.$parent.showMemberAvatar();
                    $scope.$parent.getScreenName();

                    // flip the label
                    var route = loginService.setLoginLogoffLabel("menubarlogin",0);
                    loginService.setAvatarLabel("menubaravatar",0);

                    if (ua.deviceType == "Mobile")
                    {
                        alert("Success\n"+login.text);

                        var role = loginService.getMemberRole();
                        if (role == "admin")
                        {
                            $("#adminselect").show();
                        }
                        else
                        {
                            $("#adminselect").hide();
                        }

                        $location.path("#home");
                    }
                    else
                    {
                        $scope.tracker('member login',
                          'login',
                          'dddParentController',
                          'NA',
                          'NA');

                        $('#iformationDialogModalTitle').text("Success");
                        $('#iformationDialogModalLabelBody').text(login.text);
                        $('#iformationDialogModal').modal();
                    }
                }
                else
                {
                    if (ua.deviceType == "Mobile")
                    {
                        alert("Error\n"+login.text);
                    }
                    else
                    {
                        $('#iformationDialogModalTitle').text("Error");
                        $('#iformationDialogModalLabelBody').text(login.text);
                        $('#iformationDialogModal').modal();
                    }
                }   
            })
            .error( function(edata) {
                if (ua.deviceType == "Mobile")
                {
                    alert("System Error\n"+edata);
                }
                else
                {
                    $('#iformationDialogModalTitle').text("System Error");
                    $('#iformationDialogModalLabelBody').text("Syetem Error", edata);
                    $('#iformationDialogModal').modal();
                }
            });
    }

    $scope.closeModalCleanUp = function () {
        var role = loginService.getMemberRole();
        if (role == "admin")
        {
            $("#adminselect").show();
            $("#adminselectsmall").show();
        }
        else
        {
            $("#adminselect").hide();
            $("#adminselectsmall").hide();
        }

        $('#iformationDialogModal').modal('hide');
        
        $location.path("/home");
    }
        
}

controllers.homeController = function ($scope, $http, $location, $window, $route, loginService, membersFactory) {

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        $window.scrollTo(0, 0);

        setviewpadding();

        var loggedIn = loginService.isLoggedIn();
        if (loggedIn) 
        {
            $("#loginHomeButton").text("Logoff");

            // 
            // I made a tactical error in setting avatar and screen name
            // at login. Many of our members including yours truely dont
            // logoff so when avatars change or TBD we wont reflect change.
            // So this will be a stop gap (ha ha) fix.
            // 
            $membername = "";
            $membername = loginService.getMembername();
            var encoded = encodeURIComponent($membername);
            var data = "membername="+encoded;
            membersFactory.getMemberInfo(data)
                .success( function(memberinfo) {   
                    if (memberinfo.msgtext == "ok")
                    {
                        $scope.memberavatar = memberinfo.avatar;
                        loginService.setMemberAvatar(memberinfo.avatar);
                    }
                    else
                    {
                        alert("Error\n"+memberinfo.msgtext);
                    }   
                });

            $membername = "";
            $membername = loginService.getMembername();
            var encoded = encodeURIComponent($membername);
            var data = "membername="+encoded;
            membersFactory.getMemberInfo(data)
                .success( function(memberinfo) {   
                    if (memberinfo.msgtext == "ok")
                    {
                        $scope.memberscreenname = memberinfo.screenname;
                        loginService.setMemberScreenName(memberinfo.screenname);
                    }
                    else
                    {
                        alert("Error\n"+memberinfo.msgtext);
                    }   
                });
        }
        else
            $("#loginHomeButton").text("Login");
    };

    $scope.homepagelogin = function () {
        $scope.$parent.loginlogoff();

        var loggedIn = loginService.isLoggedIn();
        if (loggedIn)
            $("#loginHomeButton").text("Logoff");
        else
            $("#loginHomeButton").text("Login");

        // $route.reload();
    }
}

controllers.editorialController = function ($scope, $http, $location, loginService) {
    $scope.current = {};

    init();
    function init() {

    }
}