// define controllers for app
var controllers = {};
controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, nflteamsFactory, nflTeamsService) {
    
    $scope.memberavatar = "";

    function checkRole() {
        
    }

    function getAvatar()
    {
        $scope.memberavatar = loginService.getMemberAvatar();
    }

    init();
    function init() {
        $scope.current = {};

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

    $scope.showMemberAvatar = function () {
        getAvatar();
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
           
        }
        else
        {
           
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
                alert ("Game is alerady underway!");

                return;
            }
        }
            
        if (teamtype =='home')
        {
            $("#"+hometeamname).addClass("teamSelected").removeClass("teamNotSelected");
            // $("#"+hometeamicon).addClass("teamSelected").removeClass("teamNotSelected");

            $("#"+awayteamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+awayteamicon).addClass("teamNotSelected").removeClass("teamSelected");            

            $("#"+hometeamfieldid).val(hometeamid);
            $("#"+hometeamfieldid).prop("disabled", false);

            $("#"+awayteamfieldid).val(0);
            $("#"+awayteamfieldid).prop("disabled", true);
        }
        else if (teamtype =='away')
        {
            $("#"+hometeamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+hometeamicon).addClass("teamNotSelected").removeClass("teamSelected");

            $("#"+awayteamname).addClass("teamSelected").removeClass("teamNotSelected");
            // $("#"+awayteamicon).addClass("teamSelected").removeClass("teamNotSelected");


            $("#"+hometeamfieldid).val(0);
            $("#"+hometeamfieldid).prop("disabled", true);

            $("#"+awayteamfieldid).val(awayteamid);
            $("#"+awayteamfieldid).prop("disabled", false);

        }
        else
        {
            $("#"+hometeamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+hometeamicon).addClass("teamNotSelected").removeClass("teamSelected");

            $("#"+awayteamname).addClass("teamNotSelected").removeClass("teamSelected");
            // $("#"+awayteamicon).addClass("teamNotSelected").removeClass("teamSelected");
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

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
            $location.path("#home");

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

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
            $location.path("#home");
        
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

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
            $location.path("#home");

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

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
            $location.path("#home");

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
        $location.path("#home");

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //


        $( "#hf2014" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/MomKissCup.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/MomVictor.png");
                });

        $( "#hf2015" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/SabrinaDisapointment.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/SabrinaWinner.png");
                });    
        
        $( "#hfdefault" )
            .mouseover(function() {
                $(this).attr("src", "../img/halloffame/HallofFameAngryDonald.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/HallofFamePicture2.png");
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

        
        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
            $location.path("#home");
    
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
            $location.path("#home");

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

dddAppMobile.controller(controllers); 
