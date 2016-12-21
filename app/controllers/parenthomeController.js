controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, teamsFactory, nflTeamsService) {
    $("#adminselect").hide();
    
    $scope.memberavatar = "";

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
            // $("#letitsnowtext").text("Turn off snow!");
            
            makeSnowAnimation({ minSize: 5, maxSize: 50, newOn: 1000, flakeColor: '#2ECC71' });

            $scope.isSnowing = 1;
        }
        else
        {
            // $("#letitsnowtext").text("Let it Snow!");

            stopSnowAnimation();
            $scope.isSnowing = 0;
        }
        
    }

    function stopSnowAnimation()
    {
        clearInterval($scope.intervalVariable); 
    }

    function makeSnowAnimation(options)
    {
        var $flake          = $('<div id="flake" />').css({'position': 'absolute', 'top': '-50px'}).html('&#10052;'),
            documentHeight  = $(document).height(),
            documentWidth   = $(document).width(),
            defaults        = {
                                minSize     : 10,
                                maxSize     : 20,
                                newOn       : 500,
                                flakeColor  : "#FFFFFF"
                            },
            options         = $.extend({}, defaults, options);
            
        $scope.intervalVariable        = 
            setInterval( function(){
                var startPositionLeft   = Math.random() * documentWidth - 100,
                    startOpacity        = 0.5 + Math.random(),
                    sizeFlake           = options.minSize + Math.random() * options.maxSize,
                    endPositionTop      = documentHeight - 40,
                    endPositionLeft     = startPositionLeft - 100 + Math.random() * 200,
                    durationFall        = documentHeight * 10 + Math.random() * 5000;
                $flake
                    .clone()
                    .appendTo('body')
                    .css(
                        {
                            left: startPositionLeft,
                            opacity: startOpacity,
                            'font-size': sizeFlake,
                            color: options.flakeColor
                        }
                    )
                    .animate(
                        {
                            top: endPositionTop,
                            left: endPositionLeft,
                            opacity: 0.2
                        },
                        durationFall,
                        'linear',
                        function() {
                            $(this).remove()
                        }
                    );
            }, options.newOn);
    }

    init();
    function init() {
        $scope.isSnowing = 0;
        $scope.intervalVariable = "";
        // $("#letitsnowtext").text("Let it Snow!");

        $scope.current = {};
        $scope.bigNavbar = true;

        var ua = getUserAgent();
        $scope.current.devicename = ua.deviceName; 
        $scope.current.devicetype = ua.deviceType;   

        $scope.mobileDevice = isMobile();
        // if ($scope.mobileDevice)
        // {
        //     // alert ("Is Mobile");

        //     $(".collapsableNavbar").click(function(event) {
        //       $(".navbar-collapse").collapse('hide');
        //       setviewpadding();
        //     });

        //     $('[name=navImage]').addClass("imgButtonMobileNav").removeClass("imgButtonNav").removeClass("img-responsive");
        //     $('[name=navAvatarImage]').addClass("imgAvatarNavMobile").removeClass("imgAvatarNav");
        // }
       
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

    $scope.showAlert = function (title, body) {
        $('#parentAlertModalTitle').text(title);
        $('#parentAlertModalBody').text(body);
        $('#parentAlertModal').modal();
    }

    $scope.letItSnow = function() {
        letItSnow();
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

                    // get avatar
                    $scope.$parent.showMemberAvatar();

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

controllers.homeController = function ($scope, $http, $location, $window, $route, loginService) {

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
            $("#loginHomeButton").text("Logoff");
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