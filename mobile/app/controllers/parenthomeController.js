controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, teamsFactory, nflTeamsService) {
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

    function letItSnow () 
    {
        if ($scope.isSnowing == 0)
        {        
            makeSnowAnimation({ minSize: 5, maxSize: 50, newOn: 1000, flakeColor: '#2ECC71' });

            $scope.isSnowing = 1;
        }
        else
        {
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

        $scope.current = {};

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

controllers.homeController = function ($scope, $http, $location, $window, $route, loginService) {

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