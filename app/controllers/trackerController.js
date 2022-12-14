controllers.trackerreviewselectController = function ($scope, $http, $location, $window, trackerFactory, membersFactory) 
{

    function isError(checkStr) 
    {
        if (checkStr.indexOf("Error:", 0) == -1) 
        { 
            return false;
        }
        else
        {
            return true;
        }
    }
   
    function getTrackerReviewInfo() 
    {

        var q = "trackrequest="+$scope.current.trackrequest;
        if ($scope.current.trackselectwhere != "")
        {
            q = q + "&trackselectwhere="+$scope.current.trackselectwhere;
        }

        if ($scope.current.trackselectwherecompare != "")
        {
            q = q + "&trackselectwherecompare="+$scope.current.trackselectwherecompare;
        }

        if ($scope.current.trackselectwherevalue != "")
        {
            q = q + "&trackselectwherevalue="+$scope.current.trackselectwherevalue;
        }

        if ($scope.current.trackorderby != "")
        {
            q = q + "&trackorderby="+$scope.current.trackorderby;
        }

        if ($scope.current.trackorderbysort != "")
        {
            q = q + "&trackorderbysort="+$scope.current.trackorderbysort;
        }

        $scope.current.status = "GO";
        
        trackerFactory.getTrackerReview(q)
            .success( function(data) {
                if (isError(data))
                {
                   alert(data);
                }
                else
                {
                    $scope.trackreviews = data;
                    $scope.requestcount = data.length;
                }
            })
            .error( function(edata) {
                alert(edata);
            });

        var i = 0;
    };

    function buildtrackTables() 
    {
        $scope.trackactions = [
            "pickList",
            "savePick",
            "HOF",
            "HOM",
            "WeekTls",
            "playerTls",
            "teamStatDia",
            "teamScorSta",
            "teamStand",
            "nflnews",
            "teamChart",
            "login",
            "faq",
            "help",
            "vewTtlPckGa",
            "takeSurvey",
            "surveyRes",
            "teamDisc",
            "teamBrk",
            "snow"
        ];

        // 
        // variables for managing tables
        // 
        var index = 0;
        var tblLength = $scope.trackactions.length;
        var el = "";
        var elObj = {};

        $scope.trackactionsHdrsA = [
            "screenname",
            "hits"
        ];

        $scope.trackactionsHdrsB = [
            "screenname",
            "tdate",
            "hits"
        ];

        for (index = 0; index < tblLength; index++ )
        {
            el = $scope.trackactions[index];

            $scope.trackactionsHdrsA.push(el);
            $scope.trackactionsHdrsB.push(el);
        }

        $scope.trackrequests = [
            { trackrequest: "selectstandard" }
        ];

        $scope.trackselectwheres = [
            { trackselectwhere: "id" },
            { trackselectwhere: "memberid" },
            { trackselectwhere: "screenname" },
            { trackselectwhere: "season" },
            { trackselectwhere: "week" },
            { trackselectwhere: "trackaction" },
            { trackselectwhere: "trackmodule" },
            { trackselectwhere: "tracktext" },
            { trackselectwhere: "trackdate" },
            { trackselectwhere: "device" }
        ];

        $scope.trackselectwherecompares = [
            { trackselectwherecompare: "=" },
            { trackselectwherecompare: ">" },
            { trackselectwherecompare: "<" },
            { trackselectwherecompare: "<>" },
            { trackselectwherecompare: "like" }
        ];

        $scope.trackorderbys = [
            { trackorderby: "id" },
            { trackorderby: "memberid" },
            { trackorderby: "screenname" },
            { trackorderby: "season" },
            { trackorderby: "week" },
            { trackorderby: "trackaction" },
            { trackorderby: "trackmodule" },
            { trackorderby: "tracktext" },
            { trackorderby: "trackdate" },
            { trackorderby: "device" }
        ];
        
    };

    function buildWhereValueSelectionList()
    {
        var q = "trackselectwhere="+$scope.current.trackselectwhere;
        
        trackerFactory.getTrackerSelectWhere(q)
            .success( function(data) {

            if (isError(data))
            {
               alert(data);
            }
            else
            {
               var selectwherevalues = [];
               var selectwherevalue = {};
               var i = 0;
               for (i = 0; i < data.length; i++)
               {
                   selectwherevalue = { 'trackselectwherevalue': data[i] };
                   selectwherevalues.push(selectwherevalue);
               }

               $scope.trackselectwherevalues = selectwherevalues;
            }
                    
                var i = 0;
            })
            .error( function(edata) {
                alert(edata);
            });
        
    }

    function resetGlobalVariables() 
    {
        $scope.current.trackselectwhere = "";
        $scope.current.trackselectwherecompare = "";
        $scope.current.trackselectwherevalue = "";
        $scope.current.trackorderby = "";
        $scope.current.trackorderbysort = "";
        $scope.requestcount = 0;
        $scope.current.status = "";
        $scope.current.fieldstatus = "";
    }

    function setSelectionCriteria(selected) 
    {
        switch (selected)
        {
            case "selectreview":
                resetGlobalVariables(); 
                break;

            case "selectwhere":
                if ($scope.current.trackselectwhere == "tracktext")
                {
                    $scope.current.fieldstatus = "input";
                }
                else
                {
                    $scope.current.fieldstatus = "";
                }
                buildWhereValueSelectionList();
                break;

            case "selectwherecompare":
                if ($scope.current.trackselectwherecompare == "like")
                {
                    $scope.current.fieldstatus = "input";
                }
                break;

            case "selectwherecompare":
                break;    

            case "selectwherevalues":
                break;

            default:
                var i =  0;
        } 
    } 

    init();
    function init() 
    {
        $window.scrollTo(0, 0);  

        $scope.trackrequests = {};
        $scope.trackselectwheres = {};
        $scope.trackselectwherecompares = {};
        $scope.trackselectwherevalues = {};
        $scope.trackorderbys = {};
        $scope.current = {};
        $scope.current.trackrequest = "";

        resetGlobalVariables();

        buildtrackTables();
    };

    $scope.getTrackerReviewInfo = function () {
        getTrackerReviewInfo();
    }

    $scope.setSelectionCriteria = function (selected) {
        setSelectionCriteria(selected);
    }

}

controllers.trackerreviewcountController = function ($scope, $http, $location, $window, trackerFactory, membersFactory) {
   
    function isError(checkStr) 
    {
        if (checkStr.indexOf("Error:", 0) == -1) 
        { 
            return false;
        }
        else
        {
            return true;
        }
    }

    function getTrackerReviewInfo() 
    {
        var q = "trackrequest="+$scope.current.trackrequest;
        if ($scope.current.memberid != "")
        {
            q = q + "&memberid="+$scope.current.memberid;
        }

        if ($scope.current.trackorderby != "")
        {
            q = q + "&trackorderby="+$scope.current.trackorderby;
        }

        if ($scope.current.trackorderbysort != "")
        {
            q = q + "&trackorderbysort="+$scope.current.trackorderbysort;
        }

        if ($scope.current.trackgroupby != "")
        {
            q = q + "&trackgroupby="+$scope.current.trackgroupby;
        }

        $scope.current.status = "GO";
        
        trackerFactory.getTrackerReview(q)
            .success( function(data) {
                if (isError(data))
                {
                   alert(data);
                }
                else
                {
                    $scope.trackreviews = data;
                    $scope.requestcount = data.length;
                }
            })
            .error( function(edata) {
                alert(edata);
            });

        var i = 0;
    };

    function getMembers() 
    {
        var orderby = "orderby=screenname";
        membersFactory.getMembers(orderby)
            .success( function(data) {
                $scope.members = data; 
                var i = 0;
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function buildtrackTables() 
    {

        $scope.trackactions = [
            "pickList",
            "savePick",
            "HOF",
            "HOM",
            "WeekTls",
            "playerTls",
            "teamStatDia",
            "teamScorSta",
            "teamStand",
            "nflnews",
            "teamChart",
            "login",
            "faq",
            "help",
            "vewTtlPckGa",
            "takeSurvey",
            "surveyRes",
            "teamDisc",
            "teamBrk",
            "snow"
        ];

        // 
        // variables for managing tables
        // 
        var index = 0;
        var tblLength = $scope.trackactions.length;
        var el = "";
        var elObj = {};

        $scope.trackactionsHdrsA = [
            "screenname",
            "hits"
        ];

        $scope.trackactionsHdrsB = [
            "screenname",
            "tdate",
            "hits"
        ];

        for (index = 0; index < tblLength; index++ )
        {
            el = $scope.trackactions[index];

            $scope.trackactionsHdrsA.push(el);
            $scope.trackactionsHdrsB.push(el);
        }

        $scope.trackrequests = [
            { trackrequest: "countaction" },
            { trackrequest: "countactiongroup" },
            { trackrequest: "countdeviceusage" }
        ];

        $scope.trackorderbycountactions = [
            { trackorderby: "screenname" },
            { trackorderby: "hits" },
            { trackorderby: "tdate" }
        ];

        $scope.trackorderbycountactiongroups = [
            { trackorderby: "screenname, tdate" },
            { trackorderby: "tdate, screenname" },
            { trackorderby: "screenname" },
            { trackorderby: "hits" },
            { trackorderby: "tdate" }
        ];

        for (index = 0; index < tblLength; index++ )
        {
            elObj = {
              trackorderby: $scope.trackactions[index] 
            };

            $scope.trackorderbycountactions.push(elObj);
            $scope.trackorderbycountactiongroups.push(elObj);
        }
        
        $scope.trackgroupbycountactions = [
            { trackgroupby: "screenname" }
        ];

        $scope.trackgroupbycountactiongroups = [
            { trackgroupby: "screenname" }
        ];

        $scope.trackgroupbycountactiongroupgroups = [
            { trackgroupby: "screenname" },
            { trackgroupby: "screenname, tdate" }
        ];

        $scope.trackorderbycountdeviceusages = [
            { trackorderby: "screenname" },
            { trackorderby: "devicehits" },
            { trackorderby: "desktophits" },
            { trackorderby: "mobilehits" }
        ];

        $scope.trackgroupbycountdeviceusages = [
            { trackgroupby: "screenname" }
        ];
    };

    function setSelectionCriteria(selected) 
    {
        if (selected == "selectreview")
        {
            $scope.current.status = "";
            $scope.current.trackgroupby = "";
            $scope.current.trackorderby = "";
            $scope.current.trackorderbysort = "";
            $scope.current.memberid = "";
        }
            
        switch ($scope.current.trackrequest)
        {
            case "countaction":
                $scope.trackorderbys = $scope.trackorderbycountactions;
                $scope.trackgroupbys = $scope.trackgroupbycountactiongroups;
                break;

            case "countactiongroup":
                $scope.trackorderbys = $scope.trackorderbycountactiongroups;
                $scope.trackgroupbys = $scope.trackgroupbycountactiongroupgroups;
                break;

            case "countdeviceusage":
                $scope.trackorderbys = $scope.trackorderbycountdeviceusages;
                $scope.trackgroupbys = $scope.trackgroupbycountdeviceusages;
                break;    

            default:
                var i =  0;
        } 
        
    } 

    init();
    function init() {
        $window.scrollTo(0, 0);  

        $scope.trackrequests = {};
        $scope.trackorderbys = {};
        $scope.trackgroupbys = {};
        $scope.members = {};
        $scope.current = {};

        $scope.current.trackrequest = "";
        $scope.current.trackorderby = "";
        $scope.current.trackorderbysort = "";
        $scope.current.trackgroupby = "";
        $scope.current.memberid = "";
        $scope.requestcount = 0;
        $scope.current.status = "";

        buildtrackTables();

        getMembers(); 
    };

    $scope.getTrackerReviewInfo = function () {
        getTrackerReviewInfo();
    }

    $scope.setSelectionCriteria = function (selected) {
        setSelectionCriteria(selected);
    }

}
