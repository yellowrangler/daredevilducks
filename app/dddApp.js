var dddApp = angular.module ('dddApp', ['ngRoute', 'ngAnimate', 'ngTouch', 'ui.grid', 'ui.grid.selection', 'dropzone']);

// define routes for app
dddApp.config(function ($routeProvider) {
    $routeProvider
        .when('/home',
            {
                controller: 'homeController',
                templateUrl: 'app/partials/home.html'
            })  
        .when('/pickgames',
            {
                controller: 'pickgamesController',
                templateUrl: 'app/partials/pickgames.html'
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
        .when('/teamstats',
            {
                controller: 'teamstatsController',
                templateUrl: 'app/partials/teamstats.html'
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

        .when('/teamdiscovery',
            {
                controller: 'teamdiscoveryController',
                templateUrl: 'app/partials/teamdiscovery.html'
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

       .when('/addavatar',
            {
                controller: 'addavatarController',
                templateUrl: 'app/partials/addavatar.html'
            }) 

       .when('/sendplayeremail',
            {
                controller: 'sendplayeremailController',
                templateUrl: 'app/partials/sendplayeremail.html'
            }) 

        .when('/updatemember',
            {
                controller: 'updatememberController',
                templateUrl: 'app/partials/updatemember.html'
            })

        .when('/weeklybuilds',
            {
                controller: 'weeklybuildsController',
                templateUrl: 'app/partials/weeklybuilds.html'
            })

        .when('/login',
            {
                controller: 'loginController',
                templateUrl: 'app/partials/login.html'
            }) 

        .otherwise({redirectTo: '/home' });
});