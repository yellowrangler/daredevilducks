controllers.halloffameController = function ($scope, $http, $location, loginService) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        alert ("You must login!")
        $location.path("#home");
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //


        $( "#hf2014" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/MomKissCup.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/MomVictor.png");
                });

        $( "#hf2015" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/SabrinaDisapointment.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/SabrinaWinner.png");
                });    
        
        $( "#hfdefault" )
            .mouseover(function() {
                $(this).attr("src", "../img/halloffame/HallofFameAngryDonald.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/HallofFamePicture2.png");
                }); 
        
    };
}