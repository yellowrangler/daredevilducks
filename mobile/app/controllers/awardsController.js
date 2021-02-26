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

        $( "#hf2016" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/Sabrina2ndWin5Crop.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/Sabrina2ndWinCrop.png");
                });   

        $( "#hf2017" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/paulabishophof-2017-2.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/paulabishophof-2017.png");
                }); 

        $( "#hf2018" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/donomalleyhof-2018-2.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/donomalleyhof-2018.png");
                });    

        $( "#hf2019" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/HallofFamePicture2.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/HallofFamePicture2.png");
                }); 

        $( "#hf2020" )
            .mouseover(function() {
                 $(this).attr("src", "../img/halloffame/Tanya-Temp-Hall-of-Fame-Pic.png");
                })
            .mouseout(function() {
                $(this).attr("src", "../img/halloffame/Tanya-Temp-Hall-of-Fame-Pic.png");
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