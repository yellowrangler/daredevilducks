controllers.trackerreviewController = function ($scope, $http, $location, $window, trackerFactory) {
   
    function getTrackerReviewInfo() 
    {
 
        var q = "trackrequest="+$scope.current.trackrequest;
        trackerFactory.getTrackerReview(q)
            .success( function(data) {
                $scope.trackreviews = data;
                $scope.requestcount = data.length;
                })
            .error( function(edata) {
                alert(edata);
            });

        var i = 0;
    };

    function buildTrackselections() {

        $scope.trackrequests = [
            { trackrequest: "selectall" },
            { trackrequest: "countaction" },
            { trackrequest: "countactiongroup" }
        ];
        
    };

    init();
    function init() {
        $window.scrollTo(0, 0); 
        var windowHeight = window.innerHeight;
        $scope.current.trackreaquesttablesize = windowHeight * .45;
 
        $scope.trackrequests = {};
        $scope.requestcount = 0;

        $scope.current = {};
        $scope.current.trackrequest = "";
        
        buildTrackselections();

        var i = 0;
    };

    $scope.getTrackerReviewInfo = function () {
        getTrackerReviewInfo();
    }
}

controllers.trackerreviewwithoptionsController = function ($scope, $http, $location, $window, trackerFactory, membersFactory) {
   
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

        $scope.current.status = "GO";
        
        trackerFactory.getTrackerReview(q)
            .success( function(data) {
                $scope.trackreviews = data;
                $scope.requestcount = data.length;
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
                })
            .error( function(edata) {
                alert(edata);
            });
    }

    function buildTrackselections() {

        $scope.trackrequests = [
            { trackrequest: "selectall" },
            { trackrequest: "countaction" },
            { trackrequest: "countactiongroup" }
        ];

        $scope.trackorderbyselectalls = [
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

        $scope.trackorderbycountactions = [
            { trackorderby: "screenname" },
            { trackorderby: "hits" },
            { trackorderby: "viewPicks" },
            { trackorderby: "pickList" },
            { trackorderby: "pickGames" },
            { trackorderby: "playerWeekly" },
            { trackorderby: "playerTls" },
            { trackorderby: "hof" },
            { trackorderby: "hom" },
            { trackorderby: "teamStatDia" },
            { trackorderby: "teamScrsStat" },
            { trackorderby: "teamStand" },
            { trackorderby: "teamDisc" },
            { trackorderby: "takeSurvey" },
            { trackorderby: "nflnews" }
        ];

        $scope.trackorderbycountactiongroups = [
            { trackorderby: "screenname" },
            { trackorderby: "hits" },
            { trackorderby: "tdate" },
            { trackorderby: "viewPicks" },
            { trackorderby: "pickList" },
            { trackorderby: "pickGames" },
            { trackorderby: "playerWeekly" },
            { trackorderby: "playerTls" },
            { trackorderby: "hof" },
            { trackorderby: "hom" },
            { trackorderby: "teamStatDia" },
            { trackorderby: "teamScrsStat" },
            { trackorderby: "teamStand" },
            { trackorderby: "teamDisc" },
            { trackorderby: "takeSurvey" },
            { trackorderby: "nflnews" }
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
            case "selectall":
                $scope.trackorderbys = $scope.trackorderbyselectalls;
                break;

            case "countaction":
                $scope.trackorderbys = $scope.trackorderbycountactions;
                break;

            case "countactiongroup":
                $scope.trackorderbys = $scope.trackorderbycountactiongroups;
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

        buildTrackselections();
        getMembers(); 
    };

    $scope.getTrackerReviewInfo = function () {
        getTrackerReviewInfo();
    }

    $scope.setSelectionCriteria = function (selected) {
        setSelectionCriteria(selected);
    }

}
