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

    var emptyList = [
        {   }
    ];

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
            title :  "Team Offense Stats All Weeks - Bar",
            id : "4"
        },
        {  
            title :  "Team Defense Stats All Weeks - Bar",
            id : "5"
        },
        {  
            title :  "Two Teams Offense Defense Stats Game Week - Bar",
            id : "6"
        },
        {  
            title :  "Two Teams Offense Defense Stats Game Week - Line",
            id : "7"
        },
        {  
            title :  "Team Offense Defense Stats All Weeks - Bar",
            id : "8"
        },
    ];

});