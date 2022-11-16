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

    function buildTrackrequests() {

        $scope.trackrequests = [
            { trackrequest: "selectallorderby" },
            { trackrequest: "countontrackaction" },
            { trackrequest: "groupcountontrackaction" }
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
        
        buildTrackrequests();

        var i = 0;
    };

    $scope.getTrackerReviewInfo = function () {
        getTrackerReviewInfo();
    }
}

controllers.trackerreviewwithoptionsController = function ($scope, $http, $location, $window, trackerFactory, membersFactory) {
   
   function getTrackerReviewInfo() 
    {
        if ($scope.current.memberid == "")
        {
            var q = "trackrequest="+$scope.current.trackrequest;
        }
        else
        {
            var q = "trackrequest="+$scope.current.trackrequest+"&memberid="+$scope.current.memberid;
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

    function buildTrackrequests() {

        $scope.trackrequests = [
            { trackrequest: "selectallorderby" },
            { trackrequest: "countontrackaction" },
            { trackrequest: "groupcountontrackaction" }
        ];
        
    };

    init();
    function init() {
        $window.scrollTo(0, 0);  

        $scope.trackrequests = {};
        $scope.members = {};
        $scope.current = {};

        $scope.current.trackrequest = "";
        $scope.current.memberid = "";
        $scope.requestcount = 0;
        $scope.current.status = "";

        buildTrackrequests();
        getMembers(); 
    };

    $scope.getTrackerReviewInfo = function () {
        getTrackerReviewInfo();
    }

    $scope.setStatus = function () {
        $scope.current.status = "";
    }

}
