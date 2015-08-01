var dddApp = angular.module ('dddApp', ['ngRoute', 'ngAnimate', 'ngTouch', 'ui.grid', 'ui.grid.selection']);

// define routes for app
dddApp.config(function ($routeProvider) {
    $routeProvider
        .when('/home',
            {
                controller: 'homeController',
                templateUrl: 'app/partials/home.html'
            })  
        .when('/choosegames',
            {
                controller: 'choosegamesController',
                templateUrl: 'app/partials/choosegames.html'
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

        .when('/teaminfo',
            {
                controller: 'teaminfoController',
                templateUrl: 'app/partials/teaminfo.html'
            })

        .when('/gameinfo',
            {
                controller: 'gameinfoController',
                templateUrl: 'app/partials/gameinfo.html'
            })

        .when('/addmember',
            {
                controller: 'addmemberController',
                templateUrl: 'app/partials/addmember.html'
            })

        .when('/login',
            {
                controller: 'loginController',
                templateUrl: 'app/partials/login.html'
            }) 

        .otherwise({redirectTo: '/home' });
});