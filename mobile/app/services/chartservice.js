dddAppMobile.service('chartService', function () {

    this.getChartList = function(listName) {
        var thisList = emptyList;

        switch (listName) 
        {
            case 'teamCharts':
                thisList = teamChartList;
                break;
        }

        return thisList;
    }

    this.getChartColorsList = function() {
        return rgbaColors;
    }

    var emptyList = [
        {   }
    ];

    var rgbaColors = {
        brightblue : "rgba(99, 192, 242, 1)", 
        brightgreen : "rgba(11, 239, 39, 1)",
        brightred : "rgba(251, 19, 39, 1)", 
        brightyellow : "rgba(251, 249, 39, 1)",
        darkgreen : "rgba(51, 137, 27, 1)", 
        darkpurple : "rgba(107, 120, 240, 1)",
        lightpurple :"rgba(208, 135, 216, 1)", 
        brightorange :"rgba(255, 156, 26, 1"
        };

    var teamChartList = [ 
        {  
            title :  "Two Teams Power Rankings All Weeks - Line",
            id : "1"
        },
        {  
            title :  "Team Offense Defense Stats All Weeks - Line",
            id : "2"
        },
        {  
            title :  "Two Teams Power Rankings All Weeks - Bar",
            id : "3"
        },
        {  
            title :  "Two Teams Offense Defense Stats Game Week - Bar",
            id : "6"
        },
        {  
            title :  "Team Offense Stats All Weeks - Line",
            id : "9"
        },
        {  
            title :  "Team Defense Stats All Weeks - Line",
            id : "10"
        },
    ];

});