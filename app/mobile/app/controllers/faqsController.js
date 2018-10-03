controllers.faqsController = function ($scope, $http, $location, $window) {
   
    init();
    function init() {
        $window.scrollTo(0, 0);

        var faqInfoItems = $('#faqInfoItems');
        faqInfoItems.on('show.bs.collapse','.collapse', function() {
                faqInfoItems.find('.collapse.in').collapse('hide');
            });

    };
}
