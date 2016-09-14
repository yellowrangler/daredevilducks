var dddAppMobile = angular.module ('dddAppMobile', [
    'ngRoute', 
    'ngAnimate', 
    'ngTouch', 
    'ngSanitize']);

// define routes for app
dddAppMobile.config(function ($routeProvider) {
    $routeProvider
        .when('/home',
            {
                controller: 'homeController',
                templateUrl: 'app/partials/home.html'
            })       
        .when('/pickgames',
            {
                controller: 'pickgames2Controller',
                templateUrl: 'app/partials/pickgames2.html'
            })      
        .when('/viewselectpickgames',
            {
                controller: 'viewselectpickgamesController',
                templateUrl: 'app/partials/viewselectpickgames.html'
            }) 
        .when('/viewtotalpickgames',
            {
                controller: 'viewtotalpickgamesController',
                templateUrl: 'app/partials/viewtotalpickgames.html'
            }) 
        .when('/leaderboard',
            {
                controller: 'leaderboardController',
                templateUrl: 'app/partials/leaderboard.html'
            }) 
        .when('/memberweekly',
            {
                controller: 'memberweeklyController',
                templateUrl: 'app/partials/memberweekly.html'
            }) 
        .when('/teamstandings',
            {
                controller: 'teamstandingsController',
                templateUrl: 'app/partials/teamstandings.html'
            })
        .when('/nflnews',
            {
                controller: 'nflnewsController',
                templateUrl: 'app/partials/nflnews.html'
            })
        .when('/nflnews-test',
            {
                controller: 'nflnewsController',
                templateUrl: 'app/partials/nflnews-new.html'
            })
        .when('/teamweeklyranking',
            {
                controller: 'teamweeklyrankingController',
                templateUrl: 'app/partials/teamweeklyranking.html'
            })        
        .when('/halloffame',
            {
                controller: 'halloffameController',
                templateUrl: 'app/partials/halloffame.html'
            })
        .when('/teamdiscovery',
            {
                controller: 'teamdiscoveryController',
                templateUrl: 'app/partials/teamdiscovery.html'
            })
        .when('/memberupdatemember',
            {
                controller: 'memberupdatememberController',
                templateUrl: 'app/partials/memberupdatemember.html'
            })
        .when('/login',
            {
                controller: 'loginController',
                templateUrl: 'app/partials/login.html'
            }) 

        .otherwise({redirectTo: '/home' });
});