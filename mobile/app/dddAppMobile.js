var dddAppMobile = angular.module ('dddAppMobile', [
    'ngRoute', 
    'ngAnimate', 
    'ngTouch', 
    'ui.grid', 
    'ui.grid.selection', 
    'dropzone', 
    'ngSanitize',
    'chart.js']);

// define routes for app
dddAppMobile.config(function ($routeProvider) {
    $routeProvider
        .when('/home',
            {
                controller: 'homeController',
                templateUrl: 'app/partials/home.html'
            })
        .when('/takesurvey',
            {
                controller: 'takesurveyController',
                templateUrl: 'app/partials/takesurvey.html'
            }) 
        .when('/surveyresults',
            {
                controller: 'surveyresultsController',
                templateUrl: 'app/partials/surveyresults.html'
            }) 
        .when('/faqs',
            {
                controller: 'faqsController',
                templateUrl: 'app/partials/faqs.html'
            })  
        .when('/fireworks',
            {
                controller: 'fireworksController',
                templateUrl: 'app/partials/fireworks.html'
            })  
        .when('/spooky',
            {
                controller: 'spookyController',
                templateUrl: 'app/partials/spooky.html'
            }) 
        .when ('/newsopinion', 
            {
                controller: 'newsopinionController',
                templateUrl: 'app/partials/newsopinion.html'
            })
        .when('/happyholidays',
            {
                controller: 'happyholidaysController',
                templateUrl: 'app/partials/happyholidays.html'
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
        .when('/playerstatstotalwins',
            {
                controller: 'playerstatstotalwinsController',
                templateUrl: 'app/partials/playerstatstotalwins.html'
            }) 
        .when('/playerstatstotalpercentage',
            {
                controller: 'playerstatstotalpercentageController',
                templateUrl: 'app/partials/playerstatstotalpercentage.html'
            }) 
        .when('/playerstatsmemberweekly',
            {
                controller: 'playerstatsmemberweeklyController',
                templateUrl: 'app/partials/playerstatsmemberweekly.html'
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
        .when('/teamweeklyranking',
            {
                controller: 'teamweeklyrankingController',
                templateUrl: 'app/partials/teamweeklyranking.html'
            })
        .when('/teamstatscharts',
            {
                controller: 'teamstatschartsController',
                templateUrl: 'app/partials/teamstatscharts.html'
            })         
        .when('/halloffame',
            {
                controller: 'halloffameController',
                templateUrl: 'app/partials/halloffame.html'
            })
        .when('/hallofmemory',
            {
                controller: 'hallofmemoryController',
                templateUrl: 'app/partials/hallofmemory.html'
            })
        .when('/teamdiscovery',
            {
                controller: 'teamdiscoveryController',
                templateUrl: 'app/partials/teamdiscovery.html'
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
        .when('/gameinfo',
            {
                controller: 'gameinfoController',
                templateUrl: 'app/partials/gameinfo.html'
            })
        .when('/gamenetworkinfo',
            {
                controller: 'gamenetworkinfoController',
                templateUrl: 'app/partials/gamenetworkinfo.html'
            })
        .when('/gameteamscoresinfo',
            {
                controller: 'gameteamscoresinfoController',
                templateUrl: 'app/partials/gameteamscoresinfo.html'
            })
        .when('/teamsbracketsinfo',
            {
                controller: 'teamsbracketsinfoController',
                templateUrl: 'app/partials/teamsbracketsinfo.html'
            })
        .when('/gameteamdatetimeinfo',
            {
                controller: 'gameteamdatetimeinfoController',
                templateUrl: 'app/partials/gameteamdatetimeinfo.html'
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
        .when('/addmembergroup',
            {
                controller: 'addmembergroupController',
                templateUrl: 'app/partials/addmembergroup.html'
            })
        .when('/updatemembergroup',
            {
                controller: 'updatemembergroupController',
                templateUrl: 'app/partials/updatemembergroup.html'
            })
        .when('/weeklyscripts',
            {
                controller: 'weeklyscriptsController',
                templateUrl: 'app/partials/weeklyscripts.html'
            })
        .when('/managehalloffame',
            {
                controller: 'managehalloffameController',
                templateUrl: 'app/partials/managehalloffame.html'
            })
        .when('/managehallofmemory',
            {
                controller: 'managehallofmemoryController',
                templateUrl: 'app/partials/managehallofmemory.html'
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
