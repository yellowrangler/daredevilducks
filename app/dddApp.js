var dddApp = angular.module ('dddApp', ['ngRoute', 'ngAnimate', 'ngTouch', 'ui.grid', 'ui.grid.selection', 'dropzone', 'ngSanitize']);

// define routes for app
dddApp.config(function ($routeProvider) {
    $routeProvider
        .when('/home',
            {
                controller: 'homeController',
                templateUrl: 'app/partials/home.html'
            }) 
        .when('/editorial',
            {
                controller: 'editorialController',
                templateUrl: 'app/partials/editorial.html'
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
        .when('/playoffstandings',
            {
                controller: 'playoffstandingsController',
                templateUrl: 'app/partials/playoffstandings.html'
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

        .when('/teaminfo',
            {
                controller: 'teaminfoController',
                templateUrl: 'app/partials/teaminfo.html'
            })

        .when('/teamseasoninfo',
            {
                controller: 'teamseasoninfoController',
                templateUrl: 'app/partials/teamseasoninfo.html'
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

        .when('/gameranking',
            {
                controller: 'gamerankingController',
                templateUrl: 'app/partials/gameranking.html'
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

        .when('/weeklyscripts',
            {
                controller: 'weeklyscriptsController',
                templateUrl: 'app/partials/weeklyscripts.html'
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