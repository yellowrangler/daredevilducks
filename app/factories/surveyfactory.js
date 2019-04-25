dddApp.factory('surveyFactory', function($q, $http) {
    var factory = {};

    factory.getCurrentSurveyData = function () {
        return $http({
            method: 'POST',
            url: "app/ajax/getcurrentsurveydata.php",
            // data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getSurveyQuestionData = function (data) {
        return $http({
            method: 'POST', 
            url: "app/ajax/getsurveyquestiondata.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getSurveyMemberData = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/getsurveymemberdata.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getSurveyMemberQuestionData = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/getsurveymemberquestiondata.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateSurveyMemberData = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/updatesurveymemberdata.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateSurveyQuestionMemberData = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/updatesurveyquestionmemberdata.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});
