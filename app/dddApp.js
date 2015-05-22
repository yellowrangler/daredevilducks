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
        .when('/statistics',
            {
                controller: 'statisticsController',
                templateUrl: 'app/partials/statistics.html'
            })                             
        .otherwise({redirectTo: '/home' });
});