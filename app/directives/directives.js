dddApp.directive('stateListDisplay', function () {
    return {
        restrict: 'E',
        scope: {
            nameid: '@'
        },
        templateUrl: 'app/directives/templates/statelistdisplay.html',
        replace: true,
        transclude: false,
        link: function (scope, elements, attrs, controllers) { 
            var nameid = attrs.nameid;
            
        }
    }

});

dddApp.directive('yesNoListDisplay', function () {
    return {
        restrict: 'E',
        scope: {
            nameid: '@',
            prefix: '@',
            yesnoList: '=yesnolist'
        },
        templateUrl: 'app/directives/templates/yesnolistdisplay.html',
        replace: true,
        transclude: false,
        link: function (scope, elements, attrs, controllers) { 
            var i = 0;
        }
    }
});

dddApp.directive('phoneNumberDisplay', function () {
    return {
        restrict: 'E',
        scope: {
            nameid: '@',
            classname: '@'
        },
        template: "<input class='{{classname}}' style='width:170px;' type='text' id='{{nameid}}' name='{{nameid}}'  placeholder='Enter your phone number' required>",
        replace: true,
        transclude: false,
        link: function (scope, elements, attrs, controllers) { 
            // var nameid = "#"+attrs.nameid;

            elements.bind("keydown keypress", function(e) {
                if (e.keyCode == 8 || e.keyCode == 46)
                {
                    return false;
                }

                if (e.keyCode < 47 || e.keyCode > 57)
                {
                    e.preventDefault();

                    return false;
                }

                var test = this.value;
                if (test.length == 2 || test.length == 6)
                {
                    this.value = test + String.fromCharCode(e.keyCode) + "-";
                    e.preventDefault();

                    return false;
                }
            });
            
        }
    }
});