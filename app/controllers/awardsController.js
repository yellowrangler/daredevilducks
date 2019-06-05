controllers.halloffameController = function ($scope, $http, $location, loginService) {
    var loggedIn = loginService.isLoggedIn();
    if (!loggedIn)
    {
        // new code
        $scope.$parent.showAlert("Whoops!", "You must login in order to continue!");
         
        // alert ("You must login in order to continue!")
        $location.path("#home");
    }

    init();
    function init() {
        //
        // this is not getting called at right time for definig top offset 
        // in jquery ready. So adding it here
        //
        setviewpadding();

        $( "#hf2014" )
            .mouseover(function() {
                 $(this).attr("src", "img/halloffame/MomKissCup.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/MomVictor.png");
                });

        $( "#hf2015" )
            .mouseover(function() {
                 $(this).attr("src", "img/halloffame/SabrinaDisapointment.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/SabrinaWinner.png");
                });       

        $( "#hf2016" )
            .mouseover(function() {
                 $(this).attr("src", "img/halloffame/Sabrina2ndWin5Crop.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/Sabrina2ndWinCrop.png");
                });       

        $( "#hf2017" )
            .mouseover(function() {
                 $(this).attr("src", "img/halloffame/PaulaBishopDDDWin7BScreenShot.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/PaulaBishopDDDWin8AFix.png");
                }); 

        $( "#hf2018" )
            .mouseover(function() {
                 $(this).attr("src", "img/halloffame/donomalleyhof-2018-2.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/donomalleyhof-2018.png");
                });                    
        
        $( "#hfdefault" )
            .mouseover(function() {
                $(this).attr("src", "img/halloffame/HallofFameAngryDonald.png");
                })
            .mouseout(function() {
                $(this).attr("src", "img/halloffame/HallofFamePicture2.png");
                }); 
        
    };
}