controllers.trackerreviewController = function ($scope, $http, $location, $window, trackerFactory) {
   
    function getTrackerReviewInfo() 
    {
        var q = "trackrequest="+$scope.current.trackrequest;
        trackerFactory.getTrackerReview(q)
            .success( function(data) {
                $scope.trackreviews = data;
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

        $scope.trackrequests = {};

        $scope.current = {};
        $scope.current.trackrequest = "";

        buildTrackrequests();

        var i = 0;
    };

    $scope.getTrackerReviewInfo = function () {
        getTrackerReviewInfo();
    }
}

controllers.trackerreviewwithoptionsController = function ($scope, $http, $location, $window) {
   
   function getTrackerReviewInfo() 
    {
        var q = "trackrequest="+$scope.current.trackrequest;
        trackerFactory.getTrackerReview(q)
            .success( function(data) {
                $scope.trackreviews = data;
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

        $scope.trackrequests = {};

        $scope.current = {};
        $scope.current.trackrequest = "";

        buildTrackrequests();

        var i = 0;
    };

}
