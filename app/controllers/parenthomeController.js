controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, teamsFactory, nflTeamsService) {
    $("#adminselect").hide();
    
    $scope.memberavatar = "";

    function checkRole() {
        var role = loginService.getMemberRole();
        if (role == "admin")
        {
            $("#adminselect").show();
            // $("#adminnflnews").show();
        }
        else
        {
            $("#adminselect").hide();
            // $("#adminnflnews").hide();
        }  
    }

    function getAvatar()
    {
        $scope.memberavatar = loginService.getMemberAvatar();
    }

    init();
    function init() {
        $scope.current = {};

        
        $scope.mobileDevice = isMobile();


        if ($scope.mobileDevice)
        {
            // alert ("Is Mobile");

            $(".collapsableNavbar").click(function(event) {
              $(".navbar-collapse").collapse('hide');
              setviewpadding();
            });

            $('[name=navImage]').addClass("imgButtonMobileNav").removeClass("imgButtonNav").removeClass("img-responsive");
            $('[name=navAvatarImage]').addClass("imgAvatarNavMobile").removeClass("imgAvatarNav");
        }
       
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

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

    $scope.goMobile = function () {
        window.location.href = "mobile/index.html";
    }

    $scope.showMemberAvatar = function () {
        getAvatar();
    }

    $scope.showAlert = function (title, body) {
        $('#parentAlertModalTitle').text(title);
        $('#parentAlertModalBody').text(body);
        $('#parentAlertModal').modal();
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
        $window.scrollTo(0, 0);

        setviewpadding();

        var loggedIn = loginService.isLoggedIn();
        if (loggedIn)
            $("#loginHomeButton").hide();
        else
            $("#loginHomeButton").show();
      
    };

    $scope.homepagelogin = function () {
        $scope.$parent.loginlogoff();

        // $route.reload();
    }
}

controllers.editorialController = function ($scope, $http, $location, loginService) {
    $scope.current = {};

    init();
    function init() {

    }
}