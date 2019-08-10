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

    function getResponcePercent(votes)
    {
        var percent = 0;

        percent = ($scope.current.questioncount / votes) * 100;

        return percent;
    }

    function getMemberSurveyComments(questionid) 
    {
        var returnStr = "";
        var count = 0;

        returnStr = returnStr + "<table class='table pickGameTable' >";
        returnStr = returnStr + "<tr class='tableTitle'>";
        returnStr = returnStr + "<th>Member</th>";
        returnStr = returnStr + "<th>Comments</th>";                        
        returnStr = returnStr + "</tr>";

        $.each($scope.current.membercomments, function(key, value) {

            if (value.surveyquestionid != questionid)
            {
                return;
            }

            returnStr = returnStr + "<tr>";
            returnStr = returnStr + "<td class='center-column-text'>";
            returnStr = returnStr + "<img align='center' height='75' src='../img/avatars/"; 
            returnStr = returnStr + value.avatar; 
            returnStr = returnStr + "'>";             
            returnStr = returnStr + "</td>";
            returnStr = returnStr + "<td class='left-column-text'>";
            returnStr = returnStr + "<span style='color:#b57f7f;font-weight:700;' class='surveyQuestionResponeItems'>";
            returnStr = returnStr + value.surveyquestionanswercomment;
            returnStr = returnStr + "</span>";
            returnStr = returnStr + "</td>";     
            returnStr = returnStr + "</tr>";

            count = count + 1;
        });

        returnStr = returnStr + "</table>";

        $('#memberSurveyCommentsDialogModalTitle').text("Members Survey Commentsy");
        $('#memberSurveyCommentsDialogModalBody').html(returnStr);  
        $('#memberSurveyCommentsDialogModal').modal();
    }

    function getMemberSurveyList(surveytype)
    {

        switch (surveytype)
        {
            case 'members':
                var returnStr = "";
                var count = 0;
                
                returnStr = returnStr + "<table style='width:95%;' class='table' >";
                returnStr = returnStr + "<tr >";

                returnStr = returnStr + "<td style='font-weight:bold;padding-left:5%;'>";
                returnStr = returnStr + "<div style='text-align:center;'>";
                returnStr = returnStr + "<img align='center' height='75' src='../img/buttons/Button-DareDevilWebsite-Survey.png'>";
                returnStr = returnStr + "</div>";
                returnStr = returnStr + "</td>";                   
                returnStr = returnStr + "<td style='font-weight:bold;font-size:40px;padding-top:20px;'>All Members</td>" 
                returnStr = returnStr + "</tr>";    
                returnStr = returnStr + "</table>";  
   
                $.each($scope.current.members, function(key, value) {
                    returnStr = returnStr + "<table style='width:95%;padding-top:55px;' class='table' >";
                    returnStr = returnStr + "<tr >";    
                    returnStr = returnStr + "<td style='padding-left:15%;'>";
                    returnStr = returnStr + "<div style='text-align:center;'>";
                    returnStr = returnStr + "<img align='right' height='75' src='../img/avatars/"; 
                    returnStr = returnStr + value.avatar; 
                    returnStr = returnStr + "'>"; 
                    returnStr = returnStr + "</div>";
                    returnStr = returnStr + "</td>";  
                    returnStr = returnStr + "<td style='font-weight:bold;padding-top:20px;width:45%'>"; 
                    returnStr = returnStr + value.screenname;; 
                    returnStr = returnStr + "</td>";                   
                    returnStr = returnStr + "</tr>";
  
                    count = count + 1;
                });

                returnStr = returnStr + "</table>";

                $('#memberSurveyListDialogModalTitle').text("Members who should take Survey!");
                $('#memberSurveyListDialogModalBody').html(returnStr);  
                $('#memberSurveyListDialogModal').modal();
                break;

            case 'started':
                var returnStr = "";
                var count = 0;
                
                returnStr = returnStr + "<table style='width:95%;' class='table' >";
                returnStr = returnStr + "<tr >";

                returnStr = returnStr + "<td style='font-weight:bold;padding-left:5%;'>";
                returnStr = returnStr + "<div style='text-align:center;'>";
                returnStr = returnStr + "<img align='center' height='75' src='../img/buttons/Button-DareDevilWebsite-Survey.png'>";
                returnStr = returnStr + "</div>";
                returnStr = returnStr + "</td>";                   
                returnStr = returnStr + "<td style='font-weight:bold;font-size:40px;padding-top:20px;'>Started</td>" 
                returnStr = returnStr + "</tr>";    
                returnStr = returnStr + "</table>";  
   
                $.each($scope.current.memberswhostarted, function(key, value) {
                    returnStr = returnStr + "<table style='width:95%;padding-top:55px;' class='table' >";
                    returnStr = returnStr + "<tr >";    
                    returnStr = returnStr + "<td style='padding-left:15%;'>";
                    returnStr = returnStr + "<div style='text-align:center;'>";
                    returnStr = returnStr + "<img align='right' height='75' src='../img/avatars/"; 
                    returnStr = returnStr + value.avatar; 
                    returnStr = returnStr + "'>"; 
                    returnStr = returnStr + "</div>";
                    returnStr = returnStr + "</td>";  
                    returnStr = returnStr + "<td style='font-weight:bold;padding-top:20px;width:45%'>"; 
                    returnStr = returnStr + value.screenname;; 
                    returnStr = returnStr + "</td>";                   
                    returnStr = returnStr + "</tr>";
  
                    count = count + 1;
                });

                returnStr = returnStr + "</table>";

                $('#memberSurveyListDialogModalTitle').text("Members who started Survey");
                $('#memberSurveyListDialogModalBody').html(returnStr);  
                $('#memberSurveyListDialogModal').modal();
                break; 

            case 'finished':
                var returnStr = "";
                var count = 0;
                
                returnStr = returnStr + "<table style='width:95%;' class='table' >";
                returnStr = returnStr + "<tr >";

                returnStr = returnStr + "<td style='font-weight:bold;padding-left:5%;'>";
                returnStr = returnStr + "<div style='text-align:center;'>";
                returnStr = returnStr + "<img align='center' height='75' src='../img/buttons/Button-DareDevilWebsite-Survey.png'>";
                returnStr = returnStr + "</div>";
                returnStr = returnStr + "</td>";                   
                returnStr = returnStr + "<td style='font-weight:bold;font-size:40px;padding-top:20px;'>Finished</td>" 
                returnStr = returnStr + "</tr>";    
                returnStr = returnStr + "</table>";  
   
                $.each($scope.current.memberswhofinished, function(key, value) {
                    returnStr = returnStr + "<table style='width:95%;padding-top:55px;' class='table' >";
                    returnStr = returnStr + "<tr >";    
                    returnStr = returnStr + "<td style='padding-left:15%;'>";
                    returnStr = returnStr + "<div style='text-align:center;'>";
                    returnStr = returnStr + "<img align='right' height='75' src='../img/avatars/"; 
                    returnStr = returnStr + value.avatar; 
                    returnStr = returnStr + "'>"; 
                    returnStr = returnStr + "</div>";
                    returnStr = returnStr + "</td>";  
                    returnStr = returnStr + "<td style='font-weight:bold;padding-top:20px;width:45%'>"; 
                    returnStr = returnStr + value.screenname;; 
                    returnStr = returnStr + "</td>";                   
                    returnStr = returnStr + "</tr>";
  
                    count = count + 1;
                });

                returnStr = returnStr + "</table>";

                $('#memberSurveyListDialogModalTitle').text("Members who finished Survey");
                $('#memberSurveyListDialogModalBody').html(returnStr);  
                $('#memberSurveyListDialogModal').modal();
                break; 

            case 'active':
                var returnStr = "";
                var count = 0;
                
                returnStr = returnStr + "<table style='width:95%;' class='table' >";
                returnStr = returnStr + "<tr >";

                returnStr = returnStr + "<td style='font-weight:bold;padding-left:5%;'>";
                returnStr = returnStr + "<div style='text-align:center;'>";
                returnStr = returnStr + "<img align='center' height='75' src='../img/buttons/Button-DareDevilWebsite-Survey.png'>";
                returnStr = returnStr + "</div>";
                returnStr = returnStr + "</td>";                   
                returnStr = returnStr + "<td style='font-weight:bold;font-size:40px;padding-top:20px;'>Active</td>" 
                returnStr = returnStr + "</tr>";    
                returnStr = returnStr + "</table>";  
   
                $.each($scope.current.memberswhostillactive, function(key, value) {
                    returnStr = returnStr + "<table style='width:95%;padding-top:55px;' class='table' >";
                    returnStr = returnStr + "<tr >";    
                    returnStr = returnStr + "<td style='padding-left:15%;'>";
                    returnStr = returnStr + "<div style='text-align:center;'>";
                    returnStr = returnStr + "<img align='right' height='75' src='../img/avatars/"; 
                    returnStr = returnStr + value.avatar; 
                    returnStr = returnStr + "'>"; 
                    returnStr = returnStr + "</div>";
                    returnStr = returnStr + "</td>";  
                    returnStr = returnStr + "<td style='font-weight:bold;padding-top:20px;width:45%'>"; 
                    returnStr = returnStr + value.screenname;; 
                    returnStr = returnStr + "</td>";                   
                    returnStr = returnStr + "</tr>";
  
                    count = count + 1;
                });

                returnStr = returnStr + "</table>";

                $('#memberSurveyListDialogModalTitle').text("Members with active Survey");
                $('#memberSurveyListDialogModalBody').html(returnStr);  
                $('#memberSurveyListDialogModal').modal();
                break;      

            case 'nottaken':
                var returnStr = "";
                var count = 0;
                
                returnStr = returnStr + "<table style='width:95%;' class='table' >";
                returnStr = returnStr + "<tr >";

                returnStr = returnStr + "<td style='font-weight:bold;padding-left:5%;'>";
                returnStr = returnStr + "<div style='text-align:center;'>";
                returnStr = returnStr + "<img align='center' height='75' src='../img/buttons/Button-DareDevilWebsite-Survey.png'>";
                returnStr = returnStr + "</div>";
                returnStr = returnStr + "</td>";                   
                returnStr = returnStr + "<td style='font-weight:bold;font-size:40px;padding-top:20px;'>Not Started</td>" 
                returnStr = returnStr + "</tr>";    
                returnStr = returnStr + "</table>";  
   
                $.each($scope.current.memberswhohavenottaken, function(key, value) {
                    returnStr = returnStr + "<table style='width:95%;padding-top:55px;' class='table' >";
                    returnStr = returnStr + "<tr >";    
                    returnStr = returnStr + "<td style='padding-left:15%;'>";
                    returnStr = returnStr + "<div style='text-align:center;'>";
                    returnStr = returnStr + "<img align='right' height='75' src='../img/avatars/"; 
                    returnStr = returnStr + value.avatar; 
                    returnStr = returnStr + "'>"; 
                    returnStr = returnStr + "</div>";
                    returnStr = returnStr + "</td>";  
                    returnStr = returnStr + "<td style='font-weight:bold;padding-top:20px;width:45%'>"; 
                    returnStr = returnStr + value.screenname;; 
                    returnStr = returnStr + "</td>";                   
                    returnStr = returnStr + "</tr>";
  
                    count = count + 1;
                });

                returnStr = returnStr + "</table>";

                $('#memberSurveyListDialogModalTitle').text("Members who have not started Survey");
                $('#memberSurveyListDialogModalBody').html(returnStr);  
                $('#memberSurveyListDialogModal').modal();
                break;              
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

        surveyFactory.getCurrentSurveyData()
            .success( function(data) {
                $scope.current.survey = data; 

                var q = "surveyid="+$scope.current.survey.surveyid;
                surveyFactory.getSurveyResultsMemberQuestionSummarydata(q)
                .success( function(data) {
                    $scope.getSurveyResultsMemberQuestionSummary = data; 

                    $scope.current.memberswhostartedsurveycount = data['memberswhostartedsurveycount'];
                    $scope.current.memberswhostarted = data['memberswhostarted'];

                    $scope.current.memberswhofinishedsurveycount = data['memberswhofinishedsurveycount'];                    
                    $scope.current.memberswhofinished = data['memberswhofinished'];

                    $scope.current.memberswhostillactivesurveycount = data['memberswhostillactivesurveycount'];
                    $scope.current.memberswhostillactive = data['memberswhostillactive'];

                    $scope.current.memberswhohavenottakensurveycount = data['memberswhohavenottakensurveycount'];
                    $scope.current.memberswhohavenottaken = data['memberswhohavenottaken'];

                    $scope.current.membercomments = data['membercomments'];
                    $scope.current.membercommentscount = data['membercommentscount'];

                    $scope.current.members = data['members'];
                    $scope.current.membercount = data['membercount'];

                    $scope.current.questioncount = data['questioncount'];

                    surveyFactory.getCurrentSurveyData()
                    .success( function(data) {
                        $scope.current.survey = data; 

                        var q = "surveyid="+$scope.current.survey.surveyid;
                        surveyFactory.getSurveyResultsMemberQuestionDetaildata(q)
                        .success( function(data) {
                            $scope.getSurveyResultsMemberQuestionDetails = data; 

                            
                        })
                        .error( function(edata) {
                            alert(edata);
                        }); 

                    })
                    .error( function(edata) {
                        alert(edata);
                    }); 
                })
                .error( function(edata) {
                    alert(edata);
                }); 

            })
            .error( function(edata) {
                alert(edata);
            }); 
    };

    $scope.getResponcePercent = function (votes) {
        getResponcePercent(votes);
    }

    $scope.getMemberSurveyList = function (surveytype) {
        getMemberSurveyList(surveytype);
    }

    $scope.getMemberSurveyComments = function (questionid) {
        getMemberSurveyComments(questionid);
    }

}
