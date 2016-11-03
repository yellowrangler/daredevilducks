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
            title :  "Compare Power Rankings",
            id : "1"
        },
        {  
            title :  "Power Rankings",
            id : "2"
        },
    ];

});