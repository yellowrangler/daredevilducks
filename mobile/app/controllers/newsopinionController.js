controllers.newsopinionController = function ($scope, $http, $location, loginService, teamsFactory) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        alert ("You must login!")
        $location.path("#home");
    }

    buildplayoffstatus = function (){
      var rv = "";
      // 
      // if set to 1 show playoff status
      // 
      $scope.current.playoffoptics = 0;

      var season = $scope.current.season;

      // 
      // build clinched teams
      // 
      var q = "season="+season+"&playoffstatus=Clinched";
      teamsFactory.getplayoffstatus(q)
      .success( function(data) {
        if (data)
        {
          $scope.current.clinchedteams = data;
          $scope.current.playoffoptics = 1; 
        }
          
      })
      .error( function(edata) {
          rv = "Err"; 
      }); 

      // 
      // build hunt teams
      // 
      var q = "season="+season+"&playoffstatus=Hunt";
      teamsFactory.getplayoffstatus(q)
      .success( function(data) {
        if (data)
        {
          $scope.current.huntteams = data; 
          $scope.current.playoffoptics = 1;
        }
           
      })
      .error( function(edata) {
          rv = "Err"; 
      }); 

      // 
      // build bubble teams
      // 
      var q = "season="+season+"&playoffstatus=Bubble";
      teamsFactory.getplayoffstatus(q)
      .success( function(data) {
        if (data)
        {
          $scope.current.bubbleteams = data;
          $scope.current.playoffoptics = 1; 
        }
           
      })
      .error( function(edata) {
          rv = "Err"; 
      }); 

      // 
      // build eliminated teams
      // 
      var q = "season="+season+"&playoffstatus=Eliminated";
      teamsFactory.getplayoffstatus(q)
      .success( function(data) {
        if (data)
        {
          $scope.current.eliminatedteams = data; 
          $scope.current.playoffoptics = 1; 
        }
      })
      .error( function(edata) {
          rv = "Err"; 
      }); 

    } 

    init();
    function init() {
        $scope.imagePath = $scope.$parent.imagePath;
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        
        $scope.current.clinchedteams = {};
        $scope.current.huntteams = {};
        $scope.current.bubbleteams = {};
        $scope.current.eliminatedteams = {};

        teamsFactory.getCurrentSeasonWeek()
            .success( function(data) {
                $scope.current.season = data.season; 
                $scope.current.week = data.week;

                buildplayoffstatus();
            })
            .error( function(edata) {
                alert(edata);
            }); 
    };

    
}