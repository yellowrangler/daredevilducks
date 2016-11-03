dddAppMobile.service('selectListService', function () {

    this.getList = function(listName) {
        var thisList = emptyList;

        switch (listName) 
        {
            case 'emt':
                thisList = emtList;
                break;

        }

        return thisList;
    }

    var emptyList = [
        {   }
    ];

    var emtList = [ 
        {  
            title :  "Welcome",
            url : "welcome-email.html"
        },
        {  
            title :  "New Avatar",
            url : "avatar-change-email.html"
        },
        {  
            title :  "New Avatar and Login",
            url : "avatar-login-change-email.html"
        },
        {  
            title :  "New Login",
            url : "login-change-email.html"
        },
        {  
            title :  "New Season",
            url : "welcome-new-season-email.html"
        },
        {  
            title :  "Game week",
            url : "gameweek-email.html"
        },
        {  
            title :  "Team Weekly Rankings",
            url : "teamweeklyrankings-email.html"
        },
        {  
            title :  "Late Picks",
            url : "latepicks-email.html"
        }, 
        {  
            title :  "Late Picks Day Of",
            url : "latepicksdayof-email.html"
        }, 
        {  
            title :  "Ooops Moment",
            url : "oops-email.html"
        }, 
        {  
            title :  "Site Problems",
            url : "siteproblems-email.html"
        },  
        {  
            title :  "Site Down",
            url : "sitedown-email.html"
        }
    ];

});