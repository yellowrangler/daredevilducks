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
            // var formstringClean = encodeURIComponent(formstring);

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
        var cleanData = encodeURIComponent(data);
        var membername = "membername="+cleanData;
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
        var cleanData = encodeURIComponent(data);
        var membername = "membername="+cleanData;
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
            // var formstringClean = encodeURIComponent(formstring);
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

controllers.addmembergroupController = function ($scope, $http, $location, membersFactory) {
    
    function deleteMemberGroupMember(membergroupmember) 
    {
        $.each($scope.membergroupmembers, function(i){
            if($scope.membergroupmembers[i].id === membergroupmember.id) {
                $scope.membergroupmembers.splice(i,1);
                return false;
            }
        });
    }

    function initMemberGroups() 
    {
        $scope.membergroupmembers =  [
            { 
                id: "1", 
                memberid: "0" 
            }
        ];

        membersFactory.getAllMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            }); 
    }

    init();
    function init() {
        
        initMemberGroups(); 
        
        setviewpadding();
        
    };

    $scope.addnewmembergroup = function(membergroupmembers) {
        var formstring = $("#addmembergroupForm").serialize();
        var formstringClean = encodeURIComponent(formstring);

        for (var i = membergroupmembers.length - 2; i >= 0; i--)
        {
            deleteMemberGroupMember(membergroupmembers[i]);
        }

        membersFactory.addMemberGroup(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error adding member - "+data);
            }
            else
            {
                $scope.members = {}; 
                $("#addmembergroupForm")[0].reset();

                alert("Member Group Name and Members added succesfully!");

                initMemberGroups();
            }

        })
        .error( function(edata) {
            alert(edata);
        });
    }

    $scope.getAllMember = function(memberid, membergroupmember) {
        membergroupmember.memberid = memberid;

        var cleanData = encodeURIComponent(memberid);
        var memberid = "memberid="+cleanData;
        membersFactory.getAllMember(memberid)
        .success( function(data) {
            $scope.current = data;
        })
        .error( function(edata) {
            alert(edata);
        });
    
    }

    $scope.addNewMemberGroupMember = function() {
        var newItemNo = $scope.membergroupmembers.length+1;
        $scope.membergroupmembers.push({'id':newItemNo});
    };

    $scope.deleteMemberGroupMember = function(membergroupmember) {
        deleteMemberGroupMember(membergroupmember);
    }

    $scope.showMemberGroupMemberLabel = function(membergroupmember) {
        if (membergroupmember.id == 1)
            return true;
        else 
            return false;
    };

    $scope.showDeleteMemberGroupMember = function(membergroupmember) {
        if (membergroupmember.id != 1)
            return true;
    }

    $scope.showAddMemberGroupMember = function(membergroupmember) {
      return membergroupmember.id === $scope.membergroupmembers[$scope.membergroupmembers.length-1].id;
    };
}

controllers.updatemembergroupController = function ($scope, $http, $location, membersFactory, nflTeamsService) {
    
    function updatemembergroup() {
        
        var formstring = $("#updatemembergroupForm").serialize();
        var formstringClean = encodeURIComponent(formstring);
        membersFactory.updateMemberGroup(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating member group - "+data);
            }
            else
            {
                alert("Member group updated succesfully!");
                // $("#addmemberForm")[0].reset();
            }

        })
        .error( function(edata) {
            alert(edata);
        });

    }

    function deletemembergroup() {
        var formstring = $("#updatemembergroupForm").serialize();

        membersFactory.deleteMemberGroup(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error deleting member group - "+data);
            }
            else
            {
                alert("Member group deleted succesfully!");
                $("#updatemembergroupForm")[0].reset();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function getAllMemberGroupMembers() {
        membersFactory.getMemberGroupMembers()(formstring)
        .success( function(data) {
            $scope.membergroupmembers = data;

        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function getAllMember(memberid, membergroupmember) {
        membergroupmember.memberid = memberid;

        var cleanData = encodeURIComponent(memberid);
        var memberid = "memberid="+cleanData;
        membersFactory.getAllMember(memberid)
        .success( function(data) {
            $scope.current = data;
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function deleteMemberGroupMember(membergroupmember) 
    {
        $.each($scope.membergroupmembers, function(i){
            if($scope.membergroupmembers[i].id === membergroupmember.id) {
                $scope.membergroupmembers.splice(i,1);
                return false;
            }
        });
    }

    function addNewMemberGroupMember() {
        var newItemNo = $scope.membergroupmembers.length+1;
        $scope.membergroupmembers.push({'id':newItemNo});
    };

    function getAllMemberGroupsAndMembers(groupid) 
    {
        var cleanData = encodeURIComponent(groupid);
        var membergroupid = "membergroupid="+cleanData;
        membersFactory.getAllMemberGroup(membergroupid)
        .success( function(data) {
            $scope.current = data;

            var membergroupid = "membergroupid="+$scope.current.membergroupid;
            membersFactory.getAllMemberGroupMembers(membergroupid)
            .success( function(data) {
                //
                // first delete the mebers from prev list
                //
                for (var i = $scope.membergroupmembers.length - 1; i >= 0; i--)
                {
                    deleteMemberGroupMember($scope.membergroupmembers[i]);
                }

                //
                // get our new list
                //
                $scope.membergroupmeberslist = data;

                //
                // now add and update
                //
                for (var i = 0; i < $scope.membergroupmeberslist.length; i++)
                {
                    addNewMemberGroupMember();

                    $scope.membergroupmembers[i].id = i + 1;
                    $scope.membergroupmembers[i].memberid = $scope.membergroupmeberslist[i].memberid;
                }
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

        $scope.current = {};
        $scope.membergroupmeberslist = {};
        $scope.membergroupmembers =  [
            { 
                id: "0", 
                memberid: "0"  
            }
        ];
        
        membersFactory.getAllMemberGroups()
            .success( function(data) {
                $scope.membergroups = data; 
            })
            .error( function(edata) {
                alert(edata);
            });   

        membersFactory.getAllMembers()
            .success( function(data) {
                $scope.members = data; 
            })
            .error( function(edata) {
                alert(edata);
            });     
    };

    $scope.getMemberGroupMemberSelectedId = function(row, selectmemberid) {
        var memberid = $scope.membergroupmembers[row].memberid;
        if (selectmemberid == memberid)
        {
            return true;
        }
    };

    $scope.addNewMemberGroupMember = function() {
        addNewMemberGroupMember();
    };

    $scope.deleteMemberGroupMember = function(membergroupmember) {
        deleteMemberGroupMember(membergroupmember);
    }

    $scope.showMemberGroupMemberLabel = function(membergroupmember) {
        if (membergroupmember.id == 1)
            return true;
        else 
            return false;
    };

    $scope.showMemberGroupMemberSelect = function(membergroupmember) {
        if (membergroupmember.id == 0)
            return false;
        else 
            return true;
    }

    $scope.showDeleteMemberGroupMember = function(membergroupmember) {
        if (membergroupmember.id != 1  && membergroupmember.id != 0)
            return true;
    }

    $scope.showAddMemberGroupMember = function(membergroupmember) {
      return membergroupmember.id === $scope.membergroupmembers[$scope.membergroupmembers.length-1].id;
    };

    $scope.getAllMemberGroupsAndMembers = function(membergroupid) {
        getAllMemberGroupsAndMembers(membergroupid);
    }

    $scope.getAllMember = function(memberid, membergroupmember) {
        getAllMember(memberid, membergroupmember);
    }

    $scope.updatemembergroup = function() {
        updatemembergroup();
    }

    $scope.deletemembergroup = function() {
        deletemembergroup();
    }

    $scope.getAllMemberGroupMembers = function() {
        getAllMemberGroupMembers();
    }
}

controllers.teaminfoController = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, teamsFactory) {
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

        teamsFactory.updateTeamInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating team - "+data);
            }
            else
            {
                alert("Team updated succesfully!");
                $("#teamForm")[0].reset();

                teamsFactory.getNFLpostseasonstatus()
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

controllers.teamseasoninfoController  = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, teamsFactory) {
     $scope.current = {};

     function updateTeamSeasonInfoRequest() {
        var formstring = $("#teamSeasonForm").serialize();

        teamsFactory.updateTeamSeasonInfo(formstring)
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
        teamsFactory.getTeamSeasonInfo(data)
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

        teamsFactory.getCurrentSeasonWeek()
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

controllers.gameinfoController = function ($scope, $http, $log, $location, uiGridConstants, nflTeamsService, teamsFactory) {
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

        teamsFactory.getNFLGamesTeams($scope.current.season)
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

        teamsFactory.updateGameInfo(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating game - "+data);
            }
            else
            {
                teamsFactory.getNFLGamesTeams($scope.current.season)
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

        teamsFactory.updateGameInfo(formstring)
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

controllers.gamerankingController = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();


    function saveWeeklyRankings() {
        var sdata = $("#adminteamweeklyrankForm").serialize();
        // var sdata = $("#adminteamweeklyrankForm").serializeArray();        // var jsdata = JSON.stringify(sdata);
        // var jpdata = JSON.parse(jsdata);
        teamsFactory.saveAdminTeamWeeklyRanking(sdata)
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
        teamsFactory.getAdminTeamWeeklyRanking(q)
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

        teamsFactory.getNFLTeamseasonweeks($scope.current.season)
        .success( function(data) {
            $scope.weeks = data; 

            teamsFactory.getCurrentSeasonWeek()
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

controllers.weeklyscriptsController = function ($scope, $http, $location, teamsFactory, nflTeamsService, scriptsFactory) {
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

controllers.sendplayeremailController = function ($scope, $http, $location, membersFactory, teamsFactory, selectListService) {
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

    function geteDynamiceMailTemplate(template)
    {
        var gametype = 1;
        var q = "week="+$scope.current.weekOverride+"&season="+$scope.current.season+"&gametype="+gametype+"&template="+template;
        membersFactory.buildeMailTemplate(q)
            .success( function(data) {
                var title = data.split("\n")[0];
                $("#emailsubject").val(title);

                var body = data.replace(title+"\n","");
                $("#emailmessage").val(body);
            })
            .error( function(edata) {
                alert(edata);
            })

    }

    function geteMailTemplate(template) {
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

        teamsFactory.getCurrentSeasonWeek()
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

        teamsFactory.getCurrentSeasonWeek()
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

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                $scope.current.weekOverride = $scope.current.week;
                })
            .error( function(edata) {
                alert(edata);
            }); 

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
        if (template == "gameweek")
        {
            geteDynamiceMailTemplate(template);
        }
        else
        {
            geteMailTemplate(template);
        }
        
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
            // var formstringClean = encodeURIComponent(formstring);
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