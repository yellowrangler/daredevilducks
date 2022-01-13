controllers.addmemberController = function ($scope, $http, $location, membersFactory, nflTeamsService, selectListService) {
    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset
        // in jquery ready. So adding it here
        //

        $scope.teams = nflTeamsService.getNFLTeams();
        $scope.states = selectListService.getList('states');
        $scope.memberstatuses = selectListService.getList('memberstatus');
        $scope.memberroles = selectListService.getList('memberroles');
        $scope.membergenders = selectListService.getList('membergenders');

        $scope.current.favoriteteamid = 0;
        $scope.current.biography = "";
        $scope.current.passwd = "";

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

controllers.updatememberController = function ($scope, $http, $location, membersFactory, nflTeamsService, selectListService) {
    $scope.current = {};

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $scope.teams = nflTeamsService.getNFLTeams();
        $scope.states = selectListService.getList('states');
        $scope.memberstatuses = selectListService.getList('memberstatus');
        $scope.memberroles = selectListService.getList('memberroles');
        $scope.membergenders = selectListService.getList('membergenders');        

        membersFactory.getAllMembersAdmin()
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
        membersFactory.getAllMemberAdmin(membername)
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

        alert("No delete functionality. Use database.");

        // membersFactory.deleteMember(formstring)
        // .success( function(data) {
        //     if (data !== "ok")
        //     {
        //         alert("Error deleting member - "+data);
        //     }
        //     else
        //     {
        //         alert("Member deleted succesfully!");
        //         $("#updatememberForm")[0].reset();
        //     }
        // })
        // .error( function(edata) {
        //     alert(edata);
        // });
    }
}

controllers.addmembergroupController = function ($scope, $http, $location, membersFactory) {

    function addnewmembergroup() 
    {
        var formstring = $("#addmembergroupForm").serialize();
        var formstringClean = encodeURIComponent(formstring);

        membersFactory.addMemberGroup(formstring)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error adding member - "+data);
            }
            else
            {
                $("#addmembergroupForm")[0].reset();

                alert("Member Group Name created succesfully!");
            }

        })
        .error( function(edata) {
            alert(edata);
        });
    }

    init();
    function init() {

        setviewpadding();

    };

    $scope.addnewmembergroup = function() {
        addnewmembergroup();
    }

}

controllers.updatemembergroupController = function ($scope, $http, $location, membersFactory, nflTeamsService) {

    function updatemembergroup(newmembergroupmembers) {
        var newmembers = JSON.stringify(newmembergroupmembers);
        var q = "newmembers="+newmembers;
        membersFactory.updateMemberGroup(q)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error updating member group - "+data);
            }
            else
            {
                alert("Member group updated succesfully!");
                
                resetUpdateMemberGroupForm();
            }

        })
        .error( function(edata) {
            alert(edata);
        });

    }

    function deleteMemberGroupMember(membergroupmember) {
        var q = "membergroupid="+membergroupmember.membergroupid+"&memberid="+membergroupmember.memberid;
        membersFactory.deleteMemberGroupMember(q)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error deleting member group member- "+data);
            }
            else
            {
                alert("Member deleted succesfully!");

                resetUpdateMemberGroupForm();
            }
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function deleteNewMemberGroupMember(idx) {
        var currentnewmemberlist = $scope.newmembergroupmembers;
        var newnewmemberlist = [];

        var k = 0;
        for (i = 0; i < currentnewmemberlist.length; i++)
        {
            if (currentnewmemberlist[i].idx == idx)
            {
                break;
            }

            newnewmemberlist[k].idx = k + 1;
            newnewmemberlist[k].membergroupid = currentnewmemberlist[i].membergroupid;
            newnewmemberlist[k].$$hashKey = currentnewmemberlist[i].$$hashKey;

            k = k + 1;
        }

        $scope.newmembergroupmembers = newnewmemberlist;
    }

    function deletemembergroup() {
        membergroupid = $("#membergroupid").val();
        var qdata = "membergroupid="+membergroupid;

        membersFactory.deleteMemberGroup(qdata)
        .success( function(data) {
            if (data !== "ok")
            {
                alert("Error deleting member group - "+data);
            }
            else
            {
                alert("Member group deleted succesfully!");
                
                resetUpdateMemberGroupForm();
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

    function getAllMemberGroupsAndMembers(groupid, groupname)
    {
        resetNewMembers();

        $scope.current.membergroupid = groupid;
        $scope.current.groupname = groupname;

        var membergroupid = "membergroupid="+$scope.current.membergroupid;
        membersFactory.getAllMemberGroupMembers(membergroupid)
        .success( function(data) {
            $scope.membergroupmembers = data;
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function setNewMemberGroupMember(idx, memberid) {
        var newmemberlist = $scope.newmembergroupmembers;

        for (i = 0; i < newmemberlist.length; i++)
        {
            if (newmemberlist[i].idx == idx)
            {
                newmemberlist[i].memberid = memberid;
                break;
            }

        }

        $scope.newmembergroupmembers = newmemberlist;
    };

    function resetUpdateMemberGroupForm()
    {
        $("#updatemembergroupForm")[0].reset();  

        resetNewMembers();

        $scope.membergroup = {};
        $scope.membergroup.membergroupid = 0; 

        $scope.current = {};
        $scope.current.membergroupid = 0;
        $scope.current.groupname = "";
        $scope.membergroups = {};

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
    }

    function resetNewMembers()
    {
        $scope.newmembergroupmembers = {}; 
        $scope.current.newmember = 0;  
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset
        // in jquery ready. So adding it here
        //
        setviewpadding();

        resetUpdateMemberGroupForm();
    };

    $scope.getMemberGroupMemberSelectedId = function(row, selectmemberid) {
        var memberid = $scope.membergroupmembers[row].memberid;
        if (selectmemberid == memberid)
        {
            return true;

        }
    };

    $scope.addNewMemberGroupMemberEmpty = function() {
        $scope.current.newmember = 1;

        var idx = $scope.newmembergroupmembers.length;
        if (isEmpty(idx))
        {
            $scope.newmembergroupmembers =  [  {  idx: "1", membergroupid: $scope.current.membergroupid, memberid: "0"  } ];
        }
        else
        {
            idx = idx + 1;
            $scope.newmembergroupmembers.push({'idx': idx, 'membergroupid': $scope.current.membergroupid, 'memberid':0});
        }
        
    };

    $scope.setNewMemberGroupMember = function(idx, memberid) {
        setNewMemberGroupMember(idx, memberid);
    };


    $scope.showMemberGroupMemberSelect = function(membergroupmember) {
        if (membergroupmember.membergroupmemberid == 0)
            return false;
        else
            return true;
    }

    $scope.showMemberGroupMemberNew = function () {
        if ($scope.current.newmember == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    $scope.showDeleteGroupButton = function(membergroupmember) {
        if ($scope.current.membergroupid == 0)
            return false;
        else
            return true;
    }

    $scope.showDeleteMemberGroupMember = function(membergroupmember) {
        if (membergroupmember.membergroupmemberid != 1  && membergroupmember.memberid != 0)
            return true;
    }

    $scope.showMemberGroupMemberNew = function(newmembergroupmember) {
        if (newmembergroupmember.membergroupmemberid != 1  && newmembergroupmember.memberid != 0)
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

    $scope.getAllMemberGroupMembers = function() {
        getAllMemberGroupMembers();
    }

    $scope.updatemembergroup = function(newmembergroupmembers) {
        updatemembergroup(newmembergroupmembers);
    }

    $scope.deleteMemberGroupMember = function(membergroupmember) {
        var resp = confirm("Please confirm you wish  to delete member "+membergroupmember.membername+" from group "+$scope.current.groupname+"!");
        if (resp)
        {
            deleteMemberGroupMember(membergroupmember);
        }
    }

    $scope.deletemembergroup = function() {
        var resp = confirm("Please confirm you wish  to delete group!");
        if (resp)
        {
            deletemembergroup();
        }
    }

    $scope.deleteNewMemberGroupMember = function (idx) {
        deleteNewMemberGroupMember(idx);
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
    $scope.current.lastgamenbr = "";
    $scope.teams = {};

    var seasonHeaderCellTemplate = '<div ng-click="col.sort()" ng-class="{ ngSorted: !noSortVisible }">'+
                               '<span class="ngHeaderText">{{col.displayName}}</span>'+
                               '<div class="ngSortButtonDown" ng-show="col.showSortButtonDown()"></div>'+
                               '<div class="ngSortButtonUp" ng-show="col.showSortButtonUp()"></div>'+
                             '</div>'+
                             '<div ng-show="col.allowResize" class="ngHeaderGrip"' +
                             ' ng-click="col.gripClick($event)" ng-mousedown="col.gripOnMouseDown($event)">'+
                             '</div>';

    function validateGameFormData() {
        var rc = 1;
        var fieldsinerror = "";


        if ( (fieldIsEmpty($scope.current.season)) || ($scope.current.season.length != 4) )
        {
            fieldsinerror = "season";
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.gametypeid)) || ($scope.current.gametypeid.length != 1) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", gametypeid";
            }
            else
            {
                fieldsinerror = "gametypeid";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.week)) || ($scope.current.week.length < 1 || $scope.current.week.length > 2) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", week";
            }
            else
            {
                fieldsinerror = "week";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.gamenbr)) || ($scope.current.gamenbr.length < 1) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", gamenbr";
            }
            else
            {
                fieldsinerror = "gamenbr";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.gamedate)) || ($scope.current.gamedate.length < 5) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", gamedate";
            }
            else
            {
                fieldsinerror = "gamedate";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.gameyear)) || ($scope.current.gameyear.length != 4) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", gameyear";
            }
            else
            {
                fieldsinerror = "gameyear";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.gameday)) || ($scope.current.gameday.length < 3) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", gameday";
            }
            else
            {
                fieldsinerror = "gameday";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.gametime)) || ($scope.current.gametime.length < 7) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", gametime";
            }
            else
            {
                fieldsinerror = "gametime";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.networkid)) || ($scope.current.networkid.length != 1) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", networkid";
            }
            else
            {
                fieldsinerror = "networkid";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.hometeamid)) || ($scope.current.hometeamid.length < 1) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", hometeamid";
            }
            else
            {
                fieldsinerror = "hometeamid";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.hometeamscore)) || ($scope.current.hometeamscore.length < 1) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", hometeamscore";
            }
            else
            {
                fieldsinerror = "hometeamscore";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.awayteamid)) || ($scope.current.awayteamid.length < 1) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", awayteamid";
            }
            else
            {
                fieldsinerror = "awayteamid";
            }
            
            rc = -1;
        }

        if ( (fieldIsEmpty($scope.current.awayteamscore)) || ($scope.current.awayteamscore.length < 1) )
        {
            if (rc == -1)
            {
                fieldsinerror = fieldsinerror + ", awayteamscore";
            }
            else
            {
                fieldsinerror = "awayteamscore";
            }
            
            rc = -1;
        }

        if (rc == -1)
        {
            alert("Error in Game Form: Fields in error: "+fieldsinerror);
        }

        return(rc);

    }                

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

                // get last game nbr for current season
                var nbr = $scope.nflgames.length;
                $scope.current.lastgamenbr = $scope.nflgames[nbr - 1].gamenbr;
               
            })
            .error( function(edata) {
                alert(edata);
            });

    };

    $scope.getGameNbr = function() {
        var q = "season="+$scope.current.season;

        teamsFactory.getNextGameNbr(q)
        .success( function(data) {
            $scope.current.gamenbr = data; 
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    $scope.saveGameInfoRequest = function () {
        var rc = validateGameFormData();

        if (rc == -1)
        {
            alert("Game Info has invalid values. No game information saved!");
            return;
        }

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

                alert("Game Info saved succesfully!");
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

controllers.gamenetworkinfoController = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();
    $scope.current.week = nflTeamsService.getCurrentWeek();
    $scope.networks = nflTeamsService.getNFLnetworks();

    function getGameNetworkWeekInfo() 
    {
        var senddata = "season="+$scope.current.season+"&week="+$scope.current.week;
        teamsFactory.getNFLGameWeekTeams(senddata)
        .success( function(data) {
            $scope.games = data;
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function saveGameNetworkWeeklyInfo()
    {
        var sdata = $("#gamenetworkweekForm").serialize();
        // var sdata = $("#pickweekForm").serializeArray();        // var jsdata = JSON.stringify(sdata);
        // var jpdata = JSON.parse(jsdata);
        teamsFactory.saveGameWeekTeamsNetworkInfo(sdata)
            .success( function(data) {
                getGameNetworkWeekInfo();
                
                $('#gameNetworkInfoSavedDialogModalTitle').text("Success");
                $('#gameNetworkInfoSavedDialogModalBody').html(data);
                $('#gameNetworkInfoSavedDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            });

        var i = 0;
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset
        // in jquery ready. So adding it here
        //
        setviewpadding();

        teamsFactory.getCurrentSeasonWeek()
        .success( function(data) {
            $scope.current.season = data.season; 
            $scope.current.week = data.week;

            nflTeamsService.addCurrentWeek($scope.current.week);
            nflTeamsService.addCurrentSeason($scope.current.season);
            $scope.seasons = nflTeamsService.getNFLTeamseasons();

            teamsFactory.getNFLTeamseasonweeks($scope.current.season)
            .success( function(data) {
                $scope.weeks = data; 

                var senddata = "season="+$scope.current.season+"&week="+$scope.current.week;
                teamsFactory.getNFLGameWeekTeams(senddata)
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

    $scope.saveGameNetworkWeeklyInfo = function() {
        saveGameNetworkWeeklyInfo();
    }

    $scope.getGameNetworkWeekInfo = function () {
        getGameNetworkWeekInfo();
    }
}

controllers.gameteamscoresinfoController = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();
    $scope.current.week = nflTeamsService.getCurrentWeek();

    function saveGameScoresWeeklyInfo()
    {
        var sdata = $("#gameteamscoreweekForm").serialize();

        teamsFactory.saveGameWeekTeamsScoreInfo(sdata)
            .success( function(data) {
                getGameScoresWeekInfo();

                $('#gameScoresInfoSavedDialogModalTitle').text("Success");
                $('#gameScoresInfoSavedDialogModalBody').html(data);
                $('#gameScoresInfoSavedDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            });

        var i = 0;
    }

    function getGameScoresWeekInfo() 
    {
        var senddata = "season="+$scope.current.season+"&week="+$scope.current.week;
        teamsFactory.getNFLGameWeekTeams(senddata)
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

        teamsFactory.getCurrentSeasonWeek()
        .success( function(data) {
            $scope.current.season = data.season; 
            $scope.current.week = data.week;

            nflTeamsService.addCurrentWeek($scope.current.week);
            nflTeamsService.addCurrentSeason($scope.current.season);
            $scope.seasons = nflTeamsService.getNFLTeamseasons();

            teamsFactory.getNFLTeamseasonweeks($scope.current.season)
            .success( function(data) {
                $scope.weeks = data; 

                var senddata = "season="+$scope.current.season+"&week="+$scope.current.week;
                teamsFactory.getNFLGameWeekTeams(senddata)
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

    $scope.saveGameScoresWeeklyInfo = function() {
        saveGameScoresWeeklyInfo();
    }

    $scope.getGameScoresWeekInfo = function () {
        getGameScoresWeekInfo();
    }
}

controllers.teamsbracketsinfoController = function ($scope, $http, $location, teamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();
    $scope.current.week = nflTeamsService.getCurrentWeek();

    function saveTeamBracketInfo()
    {
        // var sdata = $("#teamsbracketForm").serialize();
        var sdata = "season="+$scope.current.season+"&week="+$scope.current.week+"&bracket="+$scope.current.bracket+"&final="+$scope.current.final;

        teamsFactory.saveTeamBracket(sdata)
            .success( function(data) {
                getTeamBracketsInfo();

                $('#teamBracketInfoSavedDialogModalTitle').text("Success");
                $('#teamBracketInfoSavedDialogModalBody').html(data);
                $('#teamBracketInfoSavedDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            });

        var i = 0;
    }

    function getTeamBracketsInfo() 
    {
        var senddata = "season="+$scope.current.season+"&week="+$scope.current.week;
        teamsFactory.getTeamBrackets(senddata)
        .success( function(data) {
            $scope.current.bracket = "";
            $scope.current.week = "";
            $scope.current.final = "";
            
            $scope.teambrackets = data;
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function getTeamBracketInfo() 
    {
        // must get different weeks and bracket info 
        // will also need this code for other changes from season to week 
        // thisi needs to add bracket 
        // still need show bracket and new bracket and save or
        // when you choose week bring up bracket for week!!!!!
        var senddata = "season="+$scope.current.season+"&bracket="+$scope.current.bracket;
        teamsFactory.getTeamBracket(senddata)
        .success( function(data) {
            $scope.teambracket = data;
            $scope.current.final = data.final;
            $scope.current.week = data.week;
            $scope.current.season = data.season;
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

        teamsFactory.getCurrentSeasonWeek()
        .success( function(data) {
            $scope.current.season = data.season; 
            $scope.current.week = data.week;

            nflTeamsService.addCurrentWeek($scope.current.week);
            nflTeamsService.addCurrentSeason($scope.current.season);
            $scope.seasons = nflTeamsService.getNFLTeamseasons();

            teamsFactory.getNFLTeamseasonweeks($scope.current.season)
            .success( function(data) {
                $scope.weeks = data; 
                $scope.current.week = "";

                var senddata = "season="+$scope.current.season;
                teamsFactory.getTeamBrackets(senddata)
                .success( function(data) {
                    $scope.teambrackets = data;
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

    $scope.saveTeamBracketInfo = function() {
        saveTeamBracketInfo();
    }

    $scope.getTeamBracketsInfo = function () {
        getTeamBracketsInfo();
    }

    $scope.getTeamBracketInfo = function () {
        getTeamBracketInfo();
    }
}


controllers.gameteamdatetimeinfoController = function ($scope, $http, $location, membersFactory, teamsFactory, nflTeamsService, loginService) {
    $scope.current = {};
    $scope.current.season = nflTeamsService.getCurrentSeason();
    $scope.current.week = nflTeamsService.getCurrentWeek();

    function saveGameDateTimeWeeklyInfo()
    {
        var sdata = $("#gameteamdatetimeForm").serialize();

        teamsFactory.saveGameDateTimeWeekTeamsInfo(sdata)
            .success( function(data) {
                getGameDateTimesWeekInfo();

                $('#gameDateTimesInfoSavedDialogModalTitle').text("Success");
                $('#gameDateTimesInfoSavedDialogModalBody').html(data);
                $('#gameDateTimesInfoSavedDialogModal').modal();
            })
            .error( function(edata) {
                alert(edata);
            });

        var i = 0;
    }

    function getGameDateTimesWeekInfo() 
    {
        var senddata = "season="+$scope.current.season+"&week="+$scope.current.week;
        teamsFactory.getNFLGameWeekTeams(senddata)
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

        teamsFactory.getCurrentSeasonWeek()
        .success( function(data) {
            $scope.current.season = data.season; 
            $scope.current.week = data.week;

            nflTeamsService.addCurrentWeek($scope.current.week);
            nflTeamsService.addCurrentSeason($scope.current.season);
            $scope.seasons = nflTeamsService.getNFLTeamseasons();

            teamsFactory.getNFLTeamseasonweeks($scope.current.season)
            .success( function(data) {
                $scope.weeks = data; 

                var senddata = "season="+$scope.current.season+"&week="+$scope.current.week;
                teamsFactory.getNFLGameWeekTeams(senddata)
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

    $scope.saveGameDateTimeWeeklyInfo = function() {
        saveGameDateTimeWeeklyInfo();
    }

    $scope.getGameDateTimesWeekInfo = function () {
        getGameDateTimesWeekInfo();
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
                                $("#scriptMessagesDisplay").append("<br /><br />End of Build Scripts. Total Time:"+stopTime+". Interval:"+ timeDiff +" seconds <br />");
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

    function runInitializeScripts()
    {
        //
        // initialize message variables and html space
        //
        var data = "";
        var scriptData = "";

        gw.start();
        startTime = gw.getLocalTimeStart();
        $("#scriptMessagesDisplay").html("Start of Build Initialize Scripts. Time:"+startTime+"<br /><br />");

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

                gw.stop();
                stopTime = gw.getLocalTimeStop();
                timeDiff = gw.getSecondsDiff();
                $("#scriptMessagesDisplay").append("<br /><br />End of Initialize Scripts. Total Time:"+stopTime+". Interval:"+ timeDiff +" seconds <br />");
            })
            .error( function(edata) {
                alert(edata);
            });
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function getmemberpicklistscripts()
    {
        //
        // initialize message variables and html space
        //
        var data = "";
        var scriptData = "";

        gw.start();
        startTime = gw.getLocalTimeStart();
        $("#scriptMessagesDisplay").html("Start of Get Member Picks List Scripts. Time:"+startTime+"<br /><br />");

        //
        // run get member picks list
        //
        sw.start();
        startTime = sw.getLocalTimeStart();
        // $("#scriptMessagesDisplay").append("Start Get Member Picks List. Time:"+startTime+"<br />");

        scriptData = "season="+$scope.current.season+"&week="+$scope.current.week;
        scriptsFactory.getmemberpicklist(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Get Member Picks List. Time:"+stopTime+". Interval:"+ timeDiff +" seconds <br />");
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function getbadmemberpicks()
    {
        //
        // initialize message variables and html space
        //
        var data = "";
        var scriptData = "";

        gw.start();
        startTime = gw.getLocalTimeStart();
        $("#scriptMessagesDisplay").html("Start of Get Bad Member Picks  ScriptsTime:"+startTime+"<br />");

        //
        // run get member picks list
        //
        sw.start();
        // startTime = sw.getLocalTimeStart();
        // $("#scriptMessagesDisplay").append("Start Get Bad Member Picks. Time:"+startTime+"<br />");

        scriptData = "season="+$scope.current.season+"&week="+$scope.current.week;
        scriptsFactory.getbadmemberpicks(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Get Bad Member Picks. Time:"+stopTime+". Interval:"+ timeDiff +" seconds <br />");
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

    function importSurveyQuestionData()
    {
        var data = "";
        var scriptData = "";

        $("#scriptMessagesDisplay").html("");

        //
        // run import survey question data
        //
        sw.start();
        startTime = sw.getLocalTimeStart();

        $("#scriptMessagesDisplay").append("Start of Import Survey Question Data. Time:"+startTime+"<br />");
        var scriptData = "importsurveyquestiondatafile="+$scope.current.importsurveyquestiondatafile;

        scriptsFactory.importSurveyQuestionDataFile(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Import Survey Question Data. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    function runNewSeasonSetup()
    {
        var data = "";
        var scriptData = "";

        $("#scriptMessagesDisplay").html("");

        gw.start();
        startTime = gw.getLocalTimeStart();
        $("#scriptMessagesDisplay").html("Start of New Season Setup. Time:"+startTime+"<br /><br />");

        //
        // run importnewseasongames
        //
        sw.start();
        startTime = sw.getLocalTimeStart();
        $("#scriptMessagesDisplay").append("Start of New Season Games Setup. Time:"+startTime+"<br />");
        scriptData = "csvfile="+$scope.current.gamecsv;

        scriptsFactory.importNewSeasonGames(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Import New Season Games. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

            //
            // run newseasonsetupbye
            //
            sw.start();
            startTime = sw.getLocalTimeStart();
            $("#scriptMessagesDisplay").append("<br /><br />Start of New Season Byes Setup. Time:"+startTime+"<br />");
            scriptData = "csvfile="+$scope.current.byecsv;

            scriptsFactory.importNewSeasonByes(scriptData)
            .success( function(data) {
                sw.stop();
                stopTime = sw.getLocalTimeStop();
                timeDiff = sw.getSecondsDiff();

                $("#scriptMessagesDisplay").append(data);
                $("#scriptMessagesDisplay").append("<br />End of Import New Season Byes. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

                //
                // run newseasongameweeks
                //
                sw.start();
                startTime = sw.getLocalTimeStart();
                $("#scriptMessagesDisplay").append("<br /><br />Start of New Season Byes Setup. Time:"+startTime+"<br />");
                scriptData = "csvfile="+$scope.current.weekscsv;

                scriptsFactory.importNewSeasonGameWeeks(scriptData)
                .success( function(data) {
                    sw.stop();
                    stopTime = sw.getLocalTimeStop();
                    timeDiff = sw.getSecondsDiff();

                    $("#scriptMessagesDisplay").append(data);
                    $("#scriptMessagesDisplay").append("<br />End of Import New Season Game Weeks. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");

                    gw.stop();
                    stopTime = gw.getLocalTimeStop();
                    timeDiff = gw.getSecondsDiff();
                    $("#scriptMessagesDisplay").append("<br /><br />End of New Season Setup. Total Time:"+stopTime+". Interval:"+ timeDiff +" seconds <br />");
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

    function runGameTimeStampandYear()
    {
        var data = "";
        var scriptData = "";

        $("#scriptMessagesDisplay").html("");

        //
        // run gametimestamp
        //
        sw.start();
        startTime = sw.getLocalTimeStart();

        $("#scriptMessagesDisplay").append("Start of Create game timestamp and year. Time:"+startTime+"<br />");
        scriptData = "season="+$scope.current.season;

        scriptsFactory.makeGameTimeStampandYear(scriptData)
        .success( function(data) {
            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Create game timestamp and year. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");
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

        $scope.current.weeksinregularseason = 18;
        $scope.current.weeksinplayoffseason = 4;
        $scope.current.season = nflTeamsService.getCurrentSeason();
        $scope.current.dumpdatabaselabel = getCurrentDateTimeStr();
        $scope.current.week = nflTeamsService.getCurrentWeek();

        $scope.gametypes = nflTeamsService.getNFLGametypes();
    };

    $scope.runGameScripts = function () {
        runGameScripts();
    }

    $scope.runInitializeScripts = function () {
        runInitializeScripts();
    }

    $scope.getmemberpicklistscripts = function () {
        getmemberpicklistscripts();
    }

    $scope.getbadmemberpicks = function () {
        getbadmemberpicks();
    }

    $scope.buildMySqlDump = function () {
        buildMySqlDump();
    }

    $scope.importTeamWeeklyRank = function () {
        importTeamWeeklyRank();
    }

    $scope.runNewSeasonSetup = function () {
        runNewSeasonSetup();
    }

    $scope.importSurveyQuestionData = function () {
        importSurveyQuestionData();
    }

    $scope.runGameTimeStampandYear = function () {
        runGameTimeStampandYear();
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

                $scope.current.emailto = "";
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

    function geteMailItems() {
        var emailtemplateObj = JSON.parse($scope.current.emailtemplate);
        var emailurl = emailtemplateObj.url; 
        var emailtype = emailtemplateObj.type; 
        var emailrecipients = emailtemplateObj.recipients; 

        $("#emailmessage").html("");

        //
        // First get template build starterd
        //
        switch (emailtype)
        {
            case "normal":
                geteMailTemplate(emailurl);
                break;

            case "dynamic":
                geteDynamiceMailTemplate(emailurl);
                break;

            default:
                alert("Invalid email type! email type = "+emailtype);
        }

        //
        // Next get template recipients starterd
        //
        clearMailTo();

        switch (emailrecipients)
        {
            case "all":
                addAll2MailForm();
                break;

            case "latepicks":
                getLatePickMembers();
                break;

            case "latepicksdayof":
                getLatePickDayOfMembers();
                break;  

            case "latepicksdaybefore":
                getLatePickDayBeforeMembers();
                break;    
                
            case "manual":
                break;        

            default:
                alert("Invalid email recipients! email recipients = "+emailrecipients);
        }
    }

    function geteMailTemplate(url) {
        //
        // add template to area
        //

        var emailurl = "emailforms/" + url; 
        
        $.get(emailurl, null, function (data) {
            var title = data.split("\n")[0];
            $("#emailsubject").val(title);

            var body = data.replace(title+"\n","");
            $("#emailmessage").val(body);
        })
    }

    function getLatePickMembers() {

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season;
                $scope.current.week = data.week;

                var q = "week="+$scope.current.week+"&season=";
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

    function getLatePickDayOfMembers() {

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

    function getLatePickDayBeforeMembers() {

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season;
                $scope.current.week = data.week;

                var q = "week="+$scope.current.week+"&season="+$scope.current.season;
                membersFactory.getLatePickDayBeforeMembers(q)
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

    function clearMailTo() {
        $scope.current.emailto = "";
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset
        // in jquery ready. So adding it here
        //
        setviewpadding();
        $scope.sendDataEmail = "noemail=1";

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

        membersFactory.getMembers($scope.sendDataEmail)
            .success( function(data) {
                $scope.members = data;
            })
            .error( function(edata) {
                alert(edata);
            });
    }

    $scope.geteMailItems = function () {
        geteMailItems();
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

    $scope.clearMailTo = function() {
        clearMailTo();
    }

}


controllers.memberupdatememberController = function ($scope, $http, $location, membersFactory, loginService, nflTeamsService, selectListService) {
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
        $scope.states = selectListService.getList('states');
        $scope.membergenders = selectListService.getList('membergenders');  

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
