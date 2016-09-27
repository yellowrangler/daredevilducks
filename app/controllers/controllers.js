// define controllers for app
var controllers = {};
controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, nflteamsFactory, nflTeamsService) {
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
        nflteamsFactory.getNFLTeams()
            .success( function(data) {
                nflTeamsService.setNFLTeams(data); 
            })
            .error( function(edata) {
                alert(edata);
            });

        nflteamsFactory.getNFLTeamseasons()
            .success( function(data) {
                nflTeamsService.setNFLTeamseasons(data);
            })
            .error( function(edata) {
                alert(edata);
            }); 
 
        nflteamsFactory.getNFLGametypes()
            .success( function(data) {
                nflTeamsService.setNFLGametypes(data); 
            })
            .error( function(edata) {
                alert(edata);
            });  

        nflteamsFactory.getNFLnetworks()
            .success( function(data) {
                nflTeamsService.setNFLnetworks(data);
            })
            .error( function(edata) {
                alert(edata);
            });

        nflteamsFactory.getNFLpostseasonstatus()
            .success( function(data) {
                nflTeamsService.setNFLpostseasonstatus(data);
            })
            .error( function(edata) {
                alert(edata);
            }); 

        nflteamsFactory.getNFLrss()
            .success( function(data) {
                nflTeamsService.setNFLrss(data);
            })
            .error( function(edata) {
                alert(edata);
            }); 

        nflteamsFactory.getCurrentSeasonWeek()
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

controllers.loginController = function ($scope, $http, $location, loginService, msgService, loginFactory) {
    $scope.login = loginService.getEmptyLogin();
    $scope.msg = msgService.getEmptyMsg();
     
    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
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

controllers.homeController = function ($scope, $http, $location, $route, loginService) {

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
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

controllers.pickgames2Controller = function ($scope, $http, $location, membersFactory, nflteamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.teamstat = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

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

    function getTeamStats (hometeamid,awayteamid,gamenbr)
    {
        var q = "hometeamid="+hometeamid+"&awayteamid="+awayteamid+"&gamenbr="+gamenbr+"&season="+$scope.current.season;
        nflteamsFactory.getTeamStandingsDialog(q)
            .success( function(data) {
                $scope.teamstat = data; 

                $('#teamStatsDialogModalTitle').text("Team Stats");
                $('#teamStatsDialogModalBody').html(data);
                $('#teamStatsDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            });  
    }

    //
    // if checked turn this red
    //
    function setSelectTeam(teamtype, gamenbr, awayteamid, hometeamid, gamestatus)
    {
        var hometeamname = "pickh_"+gamenbr+"_teamname"; 
        var hometeamicon = "pickh_"+gamenbr+"_icon"; 

        var awayteamname = "picka_"+gamenbr+"_teamname"; 
        var awayteamicon = "picka_"+gamenbr+"_icon"; 

        var hometeamfieldid = "pickh_"+gamenbr; 
        var awayteamfieldid = "picka_"+gamenbr;    

        if (checkRole())
        {
            if (gamestatus == "expired")
            {
                // new code
                $scope.$parent.showAlert("Too Late!", "Game is alerady underway!");
                // alert ("Game is alerady underway!");

                return;
            }
        }
            
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
            nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
                .success( function(data) {
                    $scope.weeks = data; 

                    $scope.current.week = 1;

                    nflTeamsService.addCurrentWeek($scope.current.week);
                    nflTeamsService.addCurrentSeason($scope.current.season);

                    //
                    // get bye teams
                    //
                    var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                    nflteamsFactory.getNFLByeWeekMemberTeams(q)
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
                            nflteamsFactory.getNFLGamesWeekMemberTeams(q)
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

                    nflteamsFactory.getNFLGamesWeekMemberTeams(data)
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
            nflteamsFactory.getNFLByeWeekMemberTeams(q)
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
        else
        {
            remaining = count - picked;
            $scope.msg = "You have picked "+picked+" Teams. You have "+remaining+" remaining to complete this week.";
        }

        //
        // admins can choose any player. I disable memberid when not admin. Must therefore
        // check for memberid in seriaze string and if not there add it
        //
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
                })
                .error( function(edata) {
                    alert(edata);
                });
        } 

    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
                
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.current.memberlogin = loginService.getLogin();

        var orderby = "orderby=screenname";
        membersFactory.getMembers(orderby)
            .success( function(data) {
                $scope.members = data; 
            
                $scope.seasons = nflTeamsService.getNFLTeamseasons();

                nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
                .success( function(data) {
                    $scope.weeks = data; 

                    nflteamsFactory.getCurrentSeasonWeek()
                        .success( function(data) {
                            $scope.current.season = data.season; 
                            $scope.current.week = data.week;

                            nflTeamsService.addCurrentWeek($scope.current.week);
                            nflTeamsService.addCurrentSeason($scope.current.season);

                            //
                            // get bye teams
                            //
                            var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                            nflteamsFactory.getNFLByeWeekMemberTeams(q)
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
                                    nflteamsFactory.getNFLGamesWeekMemberTeams(q)
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

    $scope.getTeamStats = function (hometeamid,awayteamid,gamenbr) {
        getTeamStats(hometeamid,awayteamid,gamenbr);
    }
    
}

controllers.viewselectpickgamesController = function ($scope, $http, $location, membersFactory, nflteamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    function selectChange()
    {
        var memberid = "memberid="+$scope.current.memberid;
        
        membersFactory.getMember(memberid)
            .success( function(data) {
                $scope.current.memberavatar = data.avatar;

                var data = "memberid="+$scope.current.memberid+"&week="+$scope.current.week+"&season="+$scope.current.season;

                nflteamsFactory.getNFLGamesWeekMemberTeams(data)
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
        nflteamsFactory.getNFLByeWeekMemberTeams(q)
            .success( function(data) {
                $scope.byegames = data; 
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
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }
        
        $scope.current.memberlogin = loginService.getLogin();

        var orderby = "orderby=screenname";
        membersFactory.getMembers(orderby)
            .success( function(data) {
                $scope.members = data; 

                $scope.seasons = nflTeamsService.getNFLTeamseasons(); 

                nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
                .success( function(data) {
                    $scope.weeks = data; 

                nflteamsFactory.getCurrentSeasonWeek()
                    .success( function(data) {
                        $scope.current.season = data.season; 
                        $scope.current.week = data.week;  

                        nflTeamsService.addCurrentWeek($scope.current.week);
                        nflTeamsService.addCurrentSeason($scope.current.season);  

                        //
                        // get bye teams
                        //
                        var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                        nflteamsFactory.getNFLByeWeekMemberTeams(q)
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
                                nflteamsFactory.getNFLGamesWeekMemberTeams(q)
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

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }
}

controllers.viewallpicksController = function ($scope, $http, $location, nflTeamsService) {
    
    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();
        
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.teamstandingsController = function ($scope, $http, $location, nflTeamsService, nflteamsFactory) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    function selectChange()
    {
        var data = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid;
        nflteamsFactory.getNFLTeamstats(data)
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
        nflteamsFactory.getNFLTeamstats(data)
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

controllers.nflnewsController = function ($scope, $sce, $http, $location, nflTeamsService, nflteamsFactory) {
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

controllers.playoffstandingsController = function ($scope, $http, $location, nflTeamsService, nflteamsFactory) {
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
        nflteamsFactory.getNFLTeamstats(data)
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

controllers.leaderboardController = function ($scope, $http, $location, nflTeamsService, nflteamsFactory, loginService) {

    // function getGameTypeName() 
    // {
    //     $.each($scope.gametypes, function (index,value) {
    //         if ($scope.gametypes[index].id == $scope.current.gametypeid)
    //         {
    //             $scope.current.gametype = $scope.gametypes[index].gametype;
    //         }
    //     });
    // }

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
                if (value.totalgamespercent == data[prev].totalgamespercent)
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

    function getYearlyLeaderBoard() 
    {
        //
        // get total season percent leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&leaderType=pickingpercent";
        nflteamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                $scope.memberseasonpercentstats = workPercentTableData(data); 
            })
            .error( function(edata) {
                alert(edata);
            });

        //
        // get total season win leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&leaderType=wins";
        nflteamsFactory.getLeaderMembers(qStr)
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
        setviewpadding();
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.current = {};
        $scope.current.season = nflTeamsService.getCurrentSeason();
        $scope.current.gametypeid = 1;
        $scope.seasons = nflTeamsService.getNFLTeamseasons();
        $scope.gametypes = nflTeamsService.getNFLGametypes();

        //
        // get percent season leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&leaderType=pickingpercent"
        nflteamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                $scope.memberseasonpercentstats = workPercentTableData(data); 
            })
            .error( function(edata) {
                alert(edata);
            });

        //
        // get wins season leaders
        //
        var qStr = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid+"&leaderType=wins";
        nflteamsFactory.getLeaderMembers(qStr)
            .success( function(data) {
                $scope.memberseasonwinstats = workWinsTableData(data);  
            })
            .error( function(edata) {
                alert(edata);
            });    
    };

    $scope.getYearlyLeaderBoard = function() {
        getYearlyLeaderBoard();
    }
}

controllers.memberweeklyController = function ($scope, $http, $location, membersFactory, nflTeamsService, nflteamsFactory, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    function selectChange()
    {
        var requestStr = "season="+$scope.current.season+"&week="+$scope.current.week;

        nflteamsFactory.getMemberWeekStats(requestStr)
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
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.current.memberlogin = loginService.getLogin();
        
        nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
            .success( function(data) {
                $scope.weeks = data;

                nflteamsFactory.getCurrentSeasonWeek()
                    .success( function(data) {
                        $scope.current.season = data.season; 
                        $scope.current.week = data.week;

                        nflTeamsService.addCurrentWeek($scope.current.week);
                        nflTeamsService.addCurrentSeason($scope.current.season);  

                        $scope.seasons = nflTeamsService.getNFLTeamseasons();

                        var requestStr = "season="+$scope.current.season+"&week="+$scope.current.week;
                        nflteamsFactory.getMemberWeekStats(requestStr)
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

    $scope.getMemberWeekStats = function() {
        selectChange();
    }
}

controllers.halloffameController = function ($scope, $http, $location, loginService) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        // new code
        $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
         
        // alert ("You must login in order to continue!")
        $location.path("#home");
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $( "#hf2014" )
            .mouseover(function() {
                 $(this).attr("src", "img/halloffame/MomKissCup.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/MomVictor.png");
                });

        $( "#hf2015" )
            .mouseover(function() {
                 $(this).attr("src", "img/halloffame/SabrinaDisapointment.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/SabrinaWinner.png");
                });    
        
        $( "#hfdefault" )
            .mouseover(function() {
                $(this).attr("src", "img/halloffame/HallofFameAngryDonald.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/HallofFamePicture2.png");
                }); 
        
    };
}

controllers.viewtotalpickgamesController = function ($scope, $http, $location, nflteamsFactory, nflTeamsService, loginService) {

    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();

    function selectChange()
    {
        var data = "week="+$scope.current.week+"&season="+$scope.current.season;

        nflteamsFactory.getNFLGamesWeekMemberTeamPicks(data)
            .success( function(data) {
                $scope.games = data; 
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
        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.seasons = nflTeamsService.getNFLTeamseasons(); 

        nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
            .success( function(data) {
                $scope.weeks = data; 

                nflteamsFactory.getCurrentSeasonWeek()
                    .success( function(data) {
                        $scope.current.season = data.season; 
                        $scope.current.week = data.week;  

                        nflTeamsService.addCurrentWeek($scope.current.week);
                        nflTeamsService.addCurrentSeason($scope.current.season);  

                        var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                        nflteamsFactory.getNFLGamesWeekMemberTeamPicks(q)
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

    $scope.compareScores = function (venue, homescore, awayscore) {
        var status = "";

        status = compareScores(venue, homescore, awayscore);

        return status;
    }

}

controllers.teamstatsController = function ($scope, $http, $location, nflteamsFactory, nflTeamsService, loginService) {


    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();
           
    };

}

controllers.teamweeklyrankingController = function ($scope, $http, $location, nflteamsFactory, membersFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.team = {};
    $scope.current.toggletextShow = "Click ME to SHOW Information for Weekly Ranking";
    $scope.current.toggletextHide = "Click ME to HIDE Information for Weekly Ranking";

    $scope.current.teamid = 0;
    $scope.current.toggleSort = "ASC";
    $scope.current.toggletext = $scope.current.toggletextShow;

    function getTeamWeekRank ()
    {
        if ($("#teamRankSortButton").is(':hidden'))
        {
            $("#teamRankSort").addClass("glyphicon-sort-by-attributes");
            $("#teamRankSortButton").show(400);
        }
        

        var q = "teamid="+$scope.current.teamid+"&season="+$scope.current.season+"&orderbydirection="+$scope.current.toggleSort;
        nflteamsFactory.getTeamWeekyRanking(q)
            .success( function(data) {
                $scope.teamweekranks = data; 

                var q = "teamid="+$scope.current.teamid;
                nflteamsFactory.getNflTeam(q)
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

controllers.addmemberController = function ($scope, $http, $location, membersFactory, nflTeamsService) {
    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //

        $scope.teams = nflTeamsService.getNFLTeams(); 
        
        setviewpadding();
        
    };

    $scope.addnewmember = function() {
        var val1 = $("#passwd").val();
        var val2 = $("#vpasswd").val();
        if (val1 !== val2)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "Passwords do not match!");
             
            // alert ("Passwords do not match!")

        }
        else
        {
            var formstring = $("#addmemberForm").serialize();

            membersFactory.addMember(formstring)
            .success( function(data) {
                if (data !== "ok")
                {
                    alert("Error adding member - "+data);
                }
                else
                {
                    alert("Member added succesfully!");
                    $("#addmemberForm")[0].reset();
                }

            })
            .error( function(edata) {
                alert(edata);
            });
        }
    }
}

controllers.addavatarController = function ($scope, $http, $location, membersFactory) {
    $scope.current = {};

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $scope.current.avatar = "default.png";

        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            });

         $scope.dropzoneConfig = {
            'options': { // passed into the Dropzone constructor
              'url': 'app/ajax/uploadavatar.php'
            },
            'eventHandlers': {
                  'sending': function (file, xhr, formData) {
                    // alert("sending");
                  },
                  'success': function (file, response) {
                    if (response == "ok")
                    {
                        $scope.current.avatar = file.name;
                        
                        var data = 'avatar='+file.name+'&memberid='+$scope.current.id;
                        membersFactory.saveMemberAvatar(data)
                            .success( function(data) {
                            alert("Avatar sucessfully added.")
                        })
                        .error( function(edata) {
                            alert(edata);
                        });
                    }
                    else if (response == "toolarge")
                    {
                        alert("Avatar "+file.name+" is too large. Try again.");
                    }
                    else if (response == "notimg")
                    {
                        alert("Avatar "+file.name+" must be JPG, JPEG, PNG & GIF. Try again.");
                    }
                    else 
                    {
                        alert("Avatar System error: "+response);
                    }
                  }
            }
          };   
    };

    $scope.getMember = function(data) {
    
        var membername = "membername="+data;
        membersFactory.getMember(membername)
        .success( function(data) {
            $scope.current = data;

            if ($scope.current.avatar == "")
            {
                $scope.current.avatar = "default.png";
            }

            $scope.current.vpasswd = $scope.current.passwd;
        })
        .error( function(edata) {
            alert(edata);
        });
    
    }
}

controllers.updatememberController = function ($scope, $http, $location, membersFactory, nflTeamsService) {
    $scope.current = {};

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $scope.teams = nflTeamsService.getNFLTeams(); 
        
        membersFactory.getAllMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            });   
    };

    $scope.getAllMember = function(data) {
    
        var membername = "membername="+data;
        membersFactory.getAllMember(membername)
        .success( function(data) {
            $scope.current = data;

            if ($scope.current.avatar == "")
            {
                $scope.current.avatar = "default.png";
            }

            $scope.current.vpasswd = $scope.current.passwd;
        })
        .error( function(edata) {
            alert(edata);
        });
    
    }

    $scope.updatenewmember = function() {
        var val1 = $("#passwd").val();
        var val2 = $("#vpasswd").val();
        if (val1 !== val2)
        {
            // new code
            $scope.$parent.showAlert("Whoops!", "Passwords do not match!");
             
            // alert ("Passwords do not match!")

        }
        else
        {
            var formstring = $("#updatememberForm").serialize();

            membersFactory.updateMember(formstring)
            .success( function(data) {
                if (data !== "ok")
                {
                    alert("Error updating member - "+data);
                }
                else
                {
                    alert("Member updated succesfully!");
                    // $("#addmemberForm")[0].reset();
                }

            })
            .error( function(edata) {
                alert(edata);
            });
        }
    }

    $scope.deletememberbutton = function() {
        var formstring = $("#updatememberForm").serialize();

        membersFactory.deleteMember(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error deleting member - "+data);
            }
            else
            {
                alert("Member deleted succesfully!");
                $("#updatememberForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }
}

controllers.teaminfoController = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, nflteamsFactory) {
    $scope.current = {};

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        var postseasonstatuses = nflTeamsService.getNFLpostseasonstatus();
        $scope.postseasonstatuses = postseasonstatuses; 
        
       $scope.gridOptionsTeams = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableRowSelection: true,
            enableColumnResizing: true,
            enableRowHeaderSelection: false,
            multiSelect: false,
            modifierKeysToMultiSelect: false,
            noUnselect: false,
            // minRowsToShow: 3,
            onRegisterApi: function( gridApi ) {
                $scope.gridApi = gridApi;

                gridApi.selection.on.rowSelectionChanged($scope, function(row) {
                    // var msg = "row seleted" + row.isSelected;
                    // $log.log(msg);

                    if (row.isSelected)
                    {
                        // if row is seleted ad information to current team
                        $scope.current.name = row.entity["name"]; 
                        $scope.current.conference = row.entity["conference"];                
                        $scope.current.division = row.entity["division"];

                        // fill in data from hidden fields
                        $scope.current.teamid = row.entity["id"];
                        $scope.current.league = row.entity["league"];
                        $scope.current.location = row.entity["location"]; 
                        $scope.current.city = row.entity["city"];
                        $scope.current.state = row.entity["state"];                                                                                               
                        $scope.current.teamiconname = row.entity["teamiconname"];
                        $scope.current.teamorder = row.entity["teamorder"];  
                        $scope.current.teamurl = row.entity["teamurl"];   
                        $scope.current.status = row.entity["status"];                         
                    }
                    else
                    {
                        // if row is unseleted remove from current team
                        $scope.current.name = ""; 
                        $scope.current.conference = ""; 
                        $scope.current.division = ""; 

                        // clear data from hidden fields
                        $scope.current.teamid = ""; 
                        $scope.current.league = "";                         
                        $scope.current.location = ""; 
                        $scope.current.city = "";
                        $scope.current.state = "";                         
                        $scope.current.teamiconname = ""; 
                        $scope.current.teamorder = "";  
                        $scope.current.teamurl = "";    
                        $scope.current.status = "";  
                    }        
                })
            },
            columnDefs: [
                // default
                { field: "teamiconname",    
                    cellTemplate: '<img height="25" ng-src="img/nflicons/{{ COL_FIELD }}" >',
                    displayName: " ", 
                    width: '10%',
                    headerCellClass: $scope.highlightFilteredHeader },
                { field: "location", 
                    displayName: "Location", width: '25%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "name", 
                    displayName: "Team", width: '25%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "conference", 
                    displayName: "Conf", width: '20%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "division", 
                    displayName: "Div", width: '20%', headerCellClass: $scope.highlightFilteredHeader }
            ]
        }

        var nflteams = nflTeamsService.getNFLTeams();
        $scope.nflteam = nflteams; 
        $scope.gridOptionsTeams.data = nflteams;
    };

    $scope.updateTeamInfoRequest = function () {
        var formstring = $("#teamForm").serialize();

        nflteamsFactory.updateTeamInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating team - "+data);
            }
            else
            {
                alert("Team updated succesfully!");
                $("#teamForm")[0].reset();

                nflteamsFactory.getNFLpostseasonstatus()
                .success( function(data) {
                    nflTeamsService.setNFLpostseasonstatus(data);
                })
                .error( function(edata) {
                    alert(edata);
                });  
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }

}

controllers.teamseasoninfoController  = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, nflteamsFactory) {
     $scope.current = {};

     function updateTeamSeasonInfoRequest() {
        var formstring = $("#teamSeasonForm").serialize();

        nflteamsFactory.updateTeamSeasonInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating team - "+data);
            }
            else
            {
                alert("Team updated succesfully!");
            }
        })
        .error( function(edata) {
            alert(edata);
        });
     }

     function showTeamSeasonInfoRequest() {
        var data = "season="+$scope.current.season+"&teamid="+$scope.current.teamid+"&postseasonstatus="+$scope.current.postseasonstatus;
        nflteamsFactory.getTeamSeasonInfo(data)
        .success( function(data) {
            $scope.current.postseasonstatus = data.postseasonstatus;
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

        $scope.postseasonstatuses = nflTeamsService.getNFLpostseasonstatus();
        $scope.teams = nflTeamsService.getNFLTeams(); 
        $scope.seasons = nflTeamsService.getNFLTeamseasons();

        nflteamsFactory.getCurrentSeasonWeek()
        .success( function(data) {
            $scope.current.season = data.season; 
        })

        .error( function(edata) {
            alert(edata);
        });   

    }

    $scope.updateTeamSeasonInfoRequest = function () {
        updateTeamSeasonInfoRequest(); 
    }

    $scope.showTeamSeasonInfoRequest = function () {
        showTeamSeasonInfoRequest(); 
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


        setviewpadding();

  }

}

controllers.gameinfoController = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, nflteamsFactory) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();
    $scope.current.week = nflTeamsService.getCurrentWeek();
    $scope.teams = {};

    var seasonHeaderCellTemplate = '<div ng-click="col.sort()" ng-class="{ ngSorted: !noSortVisible }">'+
                               '<span class="ngHeaderText">{{col.displayName}}</span>'+
                               '<div class="ngSortButtonDown" ng-show="col.showSortButtonDown()"></div>'+
                               '<div class="ngSortButtonUp" ng-show="col.showSortButtonUp()"></div>'+
                             '</div>'+
                             '<div ng-show="col.allowResize" class="ngHeaderGrip"' +
                             ' ng-click="col.gripClick($event)" ng-mousedown="col.gripOnMouseDown($event)">'+
                             '</div>';

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();
        
        // get nfl team data
        $scope.teams = nflTeamsService.getNFLTeams();
        $scope.gametypes = nflTeamsService.getNFLGametypes();
        $scope.networks = nflTeamsService.getNFLnetworks();        

        $scope.gridOptionsGames = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableColumnResizing: true,
            enableRowSelection: true,
            enableRowHeaderSelection: false,
            multiSelect: false,
            modifierKeysToMultiSelect: false,
            noUnselect: false,
            // minRowsToShow: 3,
            onRegisterApi: function( gridApi ) {
                $scope.gridApi = gridApi;

                gridApi.selection.on.rowSelectionChanged($scope, function(row) {
                    // var msg = "row seleted" + row.isSelected;
                    // $log.log(msg);

                    if (row.isSelected)
                    {
                        // if row is seleted ad information to current team
                        $scope.current.season = row.entity["season"]; 
                        $scope.current.week = row.entity["week"];                
                        $scope.current.gamenbr = row.entity["gamenbr"];
                        $scope.current.gamedate = row.entity["gamedate"];  
                        $scope.current.gameyear = row.entity["gameyear"];  
                        $scope.current.hometeamname = row.entity["hometeamname"];   
                        $scope.current.awayteamname = row.entity["awayteamname"]; 
                        $scope.current.gametype = row.entity["gametype"]; 

                        // fill in data from hidden fields
                        $scope.current.teamid = row.entity["id"];   
                        $scope.current.league = row.entity["league"];
                        $scope.current.division = row.entity["division"];
                        $scope.current.conference = row.entity["conference"];
                        $scope.current.networkid = row.entity["networkid"];
                        $scope.current.gametime = row.entity["gametime"];
                        $scope.current.hometeamid = row.entity["hometeamid"];
                        $scope.current.awayteamid = row.entity["awayteamid"];
                        $scope.current.hometeamscore = row.entity["hometeamscore"];  
                        $scope.current.awayteamscore = row.entity["awayteamscore"];   
                        $scope.current.gameday = row.entity["gameday"];  
                        $scope.current.teamiconname = row.entity["teamiconname"]; 
                        $scope.current.gametypeid = row.entity["gametypeid"]; 
                    }
                    else
                    {
                        // if row is unseleted remove from current team
                        $scope.current.season = ""; 
                        $scope.current.week = "";                
                        $scope.current.gamenbr = "";
                        $scope.current.gamedate = "";
                        $scope.current.gameyear = "";
                        $scope.current.hometeamname = "";
                        $scope.current.awayteamname = "";
                        $scope.current.gametype = "";

                        // clear data from hidden fields
                        $scope.current.teamid = "";
                        $scope.current.league = "";                        
                        $scope.current.division = "";
                        $scope.current.conference = "";   
                        $scope.current.networkid = ""; 
                        $scope.current.gametime = "";                        
                        $scope.current.hometeamid = "";
                        $scope.current.awayteamid = "";                                             
                        $scope.current.hometeamscore = "";
                        $scope.current.awayteamscore = "";
                        $scope.current.gameday = "";
                        $scope.current.teamiconname = "";
                    }

                    //
                    // check to see if both inbox and request have been selected
                    // If yes then show link button
                    //
                    // showLinkButtonCheck();
            
                })
            },
            columnDefs: [
                // default
                { field: "season", 
                    displayName: "Season", headerCellClass: $scope.highlightFilteredHeader },
                { field: "week", 
                    displayName: "Week", width:"9%", headerCellClass: $scope.highlightFilteredHeader },
                { field: "gamenbr", 
                    displayName: "Nbr", width:"9%", headerCellClass: $scope.highlightFilteredHeader },
                { field: "gamedate", 
                    displayName: "Date", headerCellClass: $scope.highlightFilteredHeader },
                { field: "gameyear", 
                    displayName: "Year", headerCellClass: $scope.highlightFilteredHeader },    
                { field: "hometeamname", 
                    displayName: "Home", headerCellClass: $scope.highlightFilteredHeader },
                { field: "awayteamname", 
                    displayName: "Away", headerCellClass: $scope.highlightFilteredHeader },
                { field: "gametype", 
                    displayName: "Type", headerCellClass: $scope.highlightFilteredHeader }
            ]
        }

        nflteamsFactory.getNFLGamesTeams($scope.current.season)
            .success( function(data) {
                $scope.gridApi.grid.columns[0].filters[0] = {
                    term: $scope.current.season
                  };

                $scope.gridApi.grid.columns[1].filters[0] = {
                    term: $scope.current.week
                  }; 

                // $scope.gridOptionsGames.colFilter.term = $scope.current.season;
                $scope.nflgames = data; 
                $scope.gridOptionsGames.data = data;
            })
            .error( function(edata) {
                alert(edata);
            });

    };

    $scope.updateGameInfoRequest = function () {
        var formstring = $("#gameForm").serialize();

        nflteamsFactory.updateGameInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating game - "+data);
            }
            else
            {
                nflteamsFactory.getNFLGamesTeams($scope.current.season)
                .success( function(data) {
                    $scope.nflgames = data; 
                    $scope.gridOptionsGames.data = data;
                })
                .error( function(edata) {
                    alert(edata);
                });

                alert("Game Info updated succesfully!");
                // $("#gameForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }
    
    $scope.newGameInfo = function () {
        var formstring = $("#gameForm").serialize();

        nflteamsFactory.updateGameInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error adding game - "+data);
            }
            else
            {
                alert("Game Info added succesfully!");
                // $("#gameForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    $scope.Delete = function () {
        alert("You be submitting delete request");
    } 

}

controllers.gamerankingController = function ($scope, $http, $location, membersFactory, nflteamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();


    function saveWeeklyRankings() {
        var sdata = $("#adminteamweeklyrankForm").serialize();
        // var sdata = $("#adminteamweeklyrankForm").serializeArray();        // var jsdata = JSON.stringify(sdata);
        // var jpdata = JSON.parse(jsdata);
        nflteamsFactory.saveAdminTeamWeeklyRanking(sdata)
            .success( function(data) {
                $('#gameWeeklyRankingsSavedDialogModalTitle').text("Success");
                $('#gameWeeklyRankingsSavedDialogModalBody').html(data);
                $('#gameWeeklyRankingsSavedDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            });

    }

    function getAdminTeamWeeklyRanking () {
        var q = "season="+$scope.current.season+"&week="+$scope.current.week;
        nflteamsFactory.getAdminTeamWeeklyRanking(q)
            .success( function(data) {
                $scope.gameweeklyranks = data;
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
            
        $scope.seasons = nflTeamsService.getNFLTeamseasons();

        nflteamsFactory.getNFLTeamseasonweeks($scope.current.season)
        .success( function(data) {
            $scope.weeks = data; 

            nflteamsFactory.getCurrentSeasonWeek()
                .success( function(data) {
                    $scope.current.season = data.season; 
                    $scope.current.week = data.week;

                    getAdminTeamWeeklyRanking ();
                })
                .error( function(edata) {
                    alert(edata);
                }); 
        })
        .error( function(edata) {
            alert(edata);
        });
     
    };

    
    $scope.saveWeeklyRankings = function() {
        saveWeeklyRankings();
    }

    $scope.getAdminTeamWeeklyRanking = function () {
        getAdminTeamWeeklyRanking();
    }
    
}

controllers.weeklyscriptsController = function ($scope, $http, $location, nflteamsFactory, nflTeamsService, scriptsFactory) {
    $scope.current = {};
    var sw = new stopWatch();
    var gw = new stopWatch();

    var startTime = 0;
    var stopTime = 0;
    var timeDiff = 0;

    function runGameScripts() 
    {
        //
        // initialize message variables and html space
        //
        var data = "";
        var scriptData = "";

        gw.start();
        startTime = gw.getLocalTimeStart();
        $("#scriptMessagesDisplay").html("Start of Build Scripts. Time:"+startTime+"<br /><br />");

        //
        // run initialize team week stats
        //
        sw.start();
        startTime = sw.getLocalTimeStart();
        $("#scriptMessagesDisplay").append("Start of Intialize Team Week Stats. Time:"+startTime+"<br />");

        scriptData = "season="+$scope.current.season+"&weeksinregularseason="+$scope.current.weeksinregularseason+"&weeksinplayoffseason="+$scope.current.weeksinplayoffseason;
        scriptsFactory.initializeTeamWeekStats(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();  

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Intialize Team Week Stats. Time:"+stopTime+". Interval:"+ timeDiff +" seconds <br />");

            //
            // run initialize member week stats
            //
            sw.start();
            startTime = sw.getLocalTimeStart();
            $("#scriptMessagesDisplay").append("<br /><br />Start of Intialize Member Week Stats. Time:"+startTime+"<br />");

            scriptData = "season="+$scope.current.season+"&weeksinregularseason="+$scope.current.weeksinregularseason+"&weeksinplayoffseason="+$scope.current.weeksinplayoffseason;
            scriptsFactory.initializeMemberWeekStats(scriptData)
            .success( function(data) {
                sw.stop();
                stopTime = sw.getLocalTimeStop();
                timeDiff = sw.getSecondsDiff();
                $("#scriptMessagesDisplay").append(data);
                $("#scriptMessagesDisplay").append("<br />End of Intialize Member Week Stats. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

                //
                // run build team stats
                //
                sw.start();
                startTime = sw.getLocalTimeStart();
                $("#scriptMessagesDisplay").append("<br /><br />Start of Build Team Stats. Time:"+startTime+"<br />");

                scriptData = "season="+$scope.current.season;
                scriptsFactory.buildTeamStats(scriptData)
                .success( function(data) {
                    sw.stop();
                    stopTime = sw.getLocalTimeStop();
                    timeDiff = sw.getSecondsDiff();
                    $("#scriptMessagesDisplay").append(data);
                    $("#scriptMessagesDisplay").append("<br />End of Build Team Stats. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

                    //
                    // run build team weekly stats
                    //
                    sw.start();
                    startTime = sw.getLocalTimeStart();
                    $("#scriptMessagesDisplay").append("<br /><br />Start of Build Team Weekly Stats. Time:"+startTime+"<br />");

                    var scriptData = "season="+$scope.current.season+"&weeksinregularseason="+$scope.current.weeksinregularseason+"&weeksinplayoffseason="+$scope.current.weeksinplayoffseason;
                    scriptsFactory.buildTeamWeekStats(scriptData)
                    .success( function(data) {
                        sw.stop();
                        stopTime = sw.getLocalTimeStop();
                        timeDiff = sw.getSecondsDiff();
                        $("#scriptMessagesDisplay").append(data);
                        $("#scriptMessagesDisplay").append("<br />End of Build Team Weekly Stats. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

                        //
                        // run build player stats
                        //
                        sw.start();
                        startTime = sw.getLocalTimeStart();
                        $("#scriptMessagesDisplay").append("<br /><br />Start of Build Player Stats. Time:"+startTime+"<br />");

                        // scriptData = "season="+$scope.current.season+"&gametypeid="+$scope.current.gametypeid;
                        scriptData = "season="+$scope.current.season;
                        scriptsFactory.buildMemberStats(scriptData)
                        .success( function(data) {
                            sw.stop();
                            stopTime = sw.getLocalTimeStop();
                            timeDiff = sw.getSecondsDiff();
                            $("#scriptMessagesDisplay").append(data);
                            $("#scriptMessagesDisplay").append("<br />End of Build Player Stats. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

                            //
                            // run build player weekly stats
                            //
                            sw.start();
                            startTime = sw.getLocalTimeStart();
                            $("#scriptMessagesDisplay").append("<br /><br />Start of Build Player Weekly Stats. Time:"+startTime+"<br />");

                            scriptData = "season="+$scope.current.season+"&weeksinregularseason="+$scope.current.weeksinregularseason+"&weeksinplayoffseason="+$scope.current.weeksinplayoffseason;
                            scriptsFactory.buildMemberWeekStats(scriptData)
                            .success( function(data) {
                                sw.stop();
                                stopTime = sw.getLocalTimeStop();
                                timeDiff = sw.getSecondsDiff();

                                $("#scriptMessagesDisplay").append(data);
                                $("#scriptMessagesDisplay").append("<br />End of Build Player Weekly Stats. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

                                gw.stop();
                                stopTime = gw.getLocalTimeStop();
                                timeDiff = gw.getSecondsDiff();
                                $("#scriptMessagesDisplay").append("<br /><br />End of Game Scripts. Total Time:"+stopTime+". Interval:"+ timeDiff +" seconds <br />");
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
        })
        .error( function(edata) {
            alert(edata);
        });
    }


    function buildMySqlDump() 
    {
        var data = "";
        var scriptData = "";

        $("#scriptMessagesDisplay").html("");

        //
        // run dump sql table
        //
        sw.start();
        startTime = sw.getLocalTimeStart();

        $("#scriptMessagesDisplay").append("Start of Dump SQL Tables. Time:"+startTime+"<br />");
        var scriptData = "dumpdatabaselabel="+$scope.current.dumpdatabaselabel;

        scriptsFactory.buildMySqlDump(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Dump SQL Tables. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function importTeamWeeklyRank() 
    {
        var data = "";
        var scriptData = "";

        $("#scriptMessagesDisplay").html("");

        //
        // run import team ranking
        //
        sw.start();
        startTime = sw.getLocalTimeStart();

        $("#scriptMessagesDisplay").append("Start of Import Team Weekly Ranking. Time:"+startTime+"<br />");
        var scriptData = "importteamweeklyrankfile="+$scope.current.importteamweeklyrankfile;

        scriptsFactory.importTeamWeeklyRankFile(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Import Team Weekly Ranking. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function runPhpModule() 
    {
        var data = "";
        var moduleData = "";

        $("#scriptMessagesDisplay").html("");

        //
        // run php 
        //
        sw.start();
        startTime = sw.getLocalTimeStart();

        $("#scriptMessagesDisplay").append("Start of PHP Modulel. Time:"+startTime+"<br />");
        moduleData = "runphpmodule="+$scope.current.runphpmodule;

        scriptsFactory.runPhpModule(moduleData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Run PHP Modulel. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");
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
        
        $scope.current.weeksinregularseason = 17;
        $scope.current.weeksinplayoffseason = 4;
        $scope.current.season = nflTeamsService.getCurrentSeason();   
        $scope.current.dumpdatabaselabel = getCurrentDateTimeStr();     

        $scope.gametypes = nflTeamsService.getNFLGametypes();
    };

    $scope.runGameScripts = function () {
        runGameScripts();
    }

    $scope.buildMySqlDump = function () {
        buildMySqlDump();
    }

    $scope.importTeamWeeklyRank = function () {
        importTeamWeeklyRank();
    }

    $scope.runPhpModule = function () {
        runPhpModule();
    }
}

controllers.sendplayeremailController = function ($scope, $http, $location, membersFactory, nflteamsFactory, selectListService) {
    $scope.current = {};
    $scope.emailtemplates = {};
    $scope.current.emailto = "";
    $scope.current.emailfrom = "daredevilducks.xyz@gmail.com";

    function setMembereMail (email)
    {
        if ($scope.current.emailto == "")
        {
            $scope.current.emailto = email;
        }
        else
        {
            if (email != "")
            {
                $scope.current.emailto = $scope.current.emailto + ", " + email;
            }
        }
    }

    function addAll2MailForm () {
        $.each($scope.members, function (key, value) {
            setMembereMail(value.email);
        });
    }

    function sendeMailForm() {
        var data = $("#dddeMailForm").serialize();
        
        membersFactory.sendeMail2Members(data)
            .success( function(rv) {
                var textStr = rv;
                $('#eMailDialogModalTitle').text("eMail Status");
                $('#eMailDialogModalLabelBody').html(textStr);
                $('#eMailDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    function geteMailTemplate() {
        var url = "";

        $("#emailmessage").html("");

        //
        // add template to area
        //
        url = "emailforms/" + $scope.current.emailtemplate;
        $.get(url, null, function (data) {
            var title = data.split("\n")[0];
            $("#emailsubject").val(title);

            var body = data.replace(title+"\n","");
            $("#emailmessage").val(body);
        })
    }

    function getLatePickMembersbutton() {

        nflteamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                membersFactory.getLatePickMembers(q)
                    .success( function(data) {
                        $.each(data, function (key, value) {
                            setMembereMail(value.email);
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

    function getLatePickDayOfMembersbutton() {

        nflteamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                membersFactory.getLatePickDayOfMembers(q)
                    .success( function(data) {
                        $.each(data, function (key, value) {
                            setMembereMail(value.email);
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

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $scope.emailtemplates = selectListService.getList('emt');

        membersFactory.getMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    $scope.setMembereMail = function (email) {
        setMembereMail(email);
    }

    $scope.addAll2MailForm = function () {
        addAll2MailForm();
    }

    $scope.sendeMailForm = function () {
        sendeMailForm();
    }

    $scope.geteMailTemplate = function(template) {
        geteMailTemplate();
    }

    $scope.getLatePickMembersbutton = function() {
        getLatePickMembersbutton();
    }

    $scope.getLatePickDayOfMembersbutton = function() {
        getLatePickDayOfMembersbutton();
    }

}


controllers.memberupdatememberController = function ($scope, $http, $location, membersFactory, loginService, nflTeamsService) {
    $scope.current = {};

    function getMember() 
    {
        var q = "memberid="+$scope.current.memberid;
        membersFactory.getMember(q)
        .success( function(data) {
            $scope.current = data;

            if ($scope.current.avatar == "")
            {
                $scope.current.avatar = "default.png";
            }

            $scope.current.vpasswd = $scope.current.passwd;
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

        $scope.teams = nflTeamsService.getNFLTeams(); 
        
        $scope.current.memberlogin = loginService.getLogin();  
        $scope.current.memberid = $scope.current.memberlogin.memberid;

        getMember();
    };

    $scope.updatemember = function() {
        var val1 = $("#passwd").val();
        var val2 = $("#vpasswd").val();
        if (val1 !== val2)
        {
            alert ("Passwords do not match!")

        }
        else
        {
            var formstring = $("#memberupdatememberForm").serialize();

            membersFactory.memberUpdateMember(formstring)
            .success( function(data) {
                if (data == "ok")
                {
                    $('#meberUpdateMemberDialogModalTitle').text("Member Update Success");
                    $('#meberUpdateMemberDialogModalBody').text("Member "+$scope.current.membername+" updated succesfully!");
                    $('#meberUpdateMemberDialogModal').modal();
                }
                else
                {
                    $('#meberUpdateMemberDialogModalTitle').text("Member Update Error");
                    $('#meberUpdateMemberDialogModalBody').text("Error updating member - "+data);
                    $('#meberUpdateMemberDialogModal').modal();
                }
            })
            .error( function(edata) {
                alert(edata);
            });
        }
    }

    $scope.updateAvatar = function() {
        $('#meberUpdateMemberDialogModalTitle').text("Update Avatar Information");
        $('#meberUpdateMemberDialogModalBody').html("<center>At this time please send me your Avatar via eMail! <BR />We will open this up some day.</center>");
        $('#meberUpdateMemberDialogModal').modal();
    }
}

dddApp.controller(controllers); 
