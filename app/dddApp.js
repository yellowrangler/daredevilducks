var dddApp = angular.module ('dddApp', ['ngRoute', 'ngAnimate', 'ngTouch', 'ui.grid', 'ui.grid.selection']);

// define routes for app
dddApp.config(function ($routeProvider) {
    $routeProvider
        .when('/home',
            {
                controller: 'homeController',
                templateUrl: 'app/partials/home.html'
            })  
        .when('/choose',
            {
                controller: 'chooseController',
                templateUrl: 'app/partials/choose.html'
            })   
        .when('/leaderboard',
            {
                controller: 'leaderboardController',
                templateUrl: 'app/partials/leaderboard.html'
            }) 
        .when('/teamstandings',
            {
                controller: 'teamstandingsController',
                templateUrl: 'app/partials/teamstandings.html'
            })    
        .when('/halloffame',
            {
                controller: 'halloffameController',
                templateUrl: 'app/partials/halloffame.html'
            })
                                        
        .otherwise({redirectTo: '/home' });
});