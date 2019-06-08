controllers.takesurveyController = function ($scope, $http, $location, $window, membersFactory, surveyFactory, loginService) {
	$scope.current = {};

    function getMemberSurveyInformation(idx) {
        $scope.current.survey.questionnbr = $scope.surveyquestions[idx].surveyquestionid;

        $scope.current.survey.questiontext = $scope.surveyquestions[idx].questiontext;
        $scope.current.survey.questiontip = $scope.surveyquestions[idx].questiontip;
        $scope.current.survey.questionpicurl = $scope.surveyquestions[idx].questionpicurl;

        // check if memmber has already answred this question - if yes put their answers in
        var q = "surveyid="+$scope.current.survey.surveyid+"&memberid="+$scope.current.memberid+"&questionid="+$scope.current.survey.questionnbr;
        surveyFactory.getSurveyMemberData(q)
        .success( function(data) {
            if (data == '""')
            {
                $scope.current.survey.answercomment = "";
                $scope.current.survey.answeryesno = "";
            }
            else
            {
                $scope.current.survey.answercomment = data.surveyquestionanswercomment;
                $scope.current.survey.answeryesno = data.surveyquestionanswerresponce;
            }
        })
        .error( function(edata) {
            alert(edata);
        }); 
        
    }

	function startSurveyButton() {
		$scope.current.firsttime = 0;

        getMemberSurveyInformation(0);

        $window.scrollTo(0, 0);
	}

	function prevSurveyButton() {
		if ($scope.current.survey.questionnbr > 1)
		{
			var idx = $scope.current.survey.questionnbr - 2;
            getMemberSurveyInformation(idx);

            $window.scrollTo(0, 0);
		}
	}

	function nextSurveyButton() {
		if ($scope.current.survey.questionnbr < $scope.current.survey.totalquestions)
		{
            if ($scope.current.survey.answeryesno.length == 0)
            {
                alert("Required Data Missing!", "You must answer the survey question by selecting a 'Yes' or 'No'!");

            }
            else
            {
                // Save the current question data
                var q = "surveyid="+$scope.current.survey.surveyid+"&memberid="+$scope.current.memberid+"&questionid="+$scope.current.survey.questionnbr+"&answeryesno="+$scope.current.survey.answeryesno+"&answercomment="+$scope.current.survey.answercomment;
                surveyFactory.updateSurveyMemberData(q)
                .success( function(data) {
                    if (data == "ok")
                    {
                        var idx = $scope.current.survey.questionnbr;
                        getMemberSurveyInformation(idx);

                        $window.scrollTo(0, 0);
                    }
                    else
                    {
                        alert("Error saving your answer!", data);
                    }
                })
                .error( function(edata) {
                    alert(edata);
                });
            }
			
		}
	}

    function finishSurveyButton() {
        if ($scope.current.survey.answeryesno.length == 0)
        {
            alert("Required Data Missing!", "You must answer the survey question by selecting a 'Yes' or 'No'!");

        }
        else
        {
            // Save the current question data
            var q = "surveyid="+$scope.current.survey.surveyid+"&memberid="+$scope.current.memberid+"&questionid="+$scope.current.survey.questionnbr+"&answeryesno="+$scope.current.survey.answeryesno+"&answercomment="+$scope.current.survey.answercomment;
            surveyFactory.updateSurveyMemberData(q)
            .success( function(data) {
                if (data == "ok")
                {
                    alert("Survey Finished!", "Thank you for participating in our Dare Devil Ducks survey!");

                    $location.path("#home");
                }
                else
                {
                    alert("Error saving your answer!", data);
                }
            })
            .error( function(edata) {
                alert(edata);
            });
        }
            
        }

    init();
    function init() {
        $window.scrollTo(0, 0);

        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
           alert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.current.memberlogin = loginService.getLogin();
        $scope.current.memberid = $scope.current.memberlogin.memberid;

        $scope.current.survey = {};
        $scope.surveyquestions = {};

        $scope.current.firsttime = 1;

        surveyFactory.getCurrentSurveyData()
            .success( function(data) {
                $scope.current.survey = data; 

                var q = "surveyid="+$scope.current.survey.surveyid;
                surveyFactory.getSurveyQuestionData(q)
                .success( function(data) {
                    $scope.surveyquestions = data; 

                    $scope.current.survey.totalquestions = objectArraySize($scope.surveyquestions);
                    $scope.current.survey.questionnbr = 0;
                })
                .error( function(edata) {
                    alert(edata);
                }); 

            })
            .error( function(edata) {
                alert(edata);
            }); 

    };

    $scope.startSurveyButton = function() {
        startSurveyButton();
    }

    $scope.prevSurveyButton = function() {
        prevSurveyButton();
    }

    $scope.nextSurveyButton = function() {
        nextSurveyButton();
    }

    $scope.finishSurveyButton = function() {
        finishSurveyButton();
    }
}


controllers.surveyresultsController = function ($scope, $http, $location, $window, membersFactory, surveyFactory, loginService) {
    $scope.current = {};

    init();
    function init() {
        $window.scrollTo(0, 0);

        var loggedIn = loginService.isLoggedIn();
        if (!loggedIn)
        {
            // new code
            alert("Whoops!", "You must login in order to continue!");
             
            // alert ("You must login in order to continue!")
            $location.path("#home");
        }

        $scope.current.memberlogin = loginService.getLogin();
        $scope.current.memberid = $scope.current.memberlogin.memberid;
    };

}
