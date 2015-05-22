// define controllers for app
var controllers = {};
controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService) {
   
    init();
    function init() {
        var route = loginService.setLoginLogoffLabel("menubarlogin",0);
    };         

    $scope.loginlogoff = function () {
        var route = loginService.setLoginLogoffLabel("menubarlogin",1);
        if (route != "")
        {
            $location.path(route);
        }
    }
}


controllers.homeController = function ($scope, $http, $location) {

    init();
    function init() {
      
    };
}


controllers.chooseController = function ($scope, $http, $location) {

    init();
    function init() {
      
    };
}

controllers.statisticsController = function ($scope, $http, $location) {

    init();
    function init() {
      
    };
}

controllers.inboxController = function ($scope, $http, $log, $location, metaDataService, languageService, inboxFactory, requestsFactory, uiGridConstants) {
    $scope.inboxMetaData = "";

    $scope.current = {};
    $scope.current.inBox = {};
    $scope.current.HARequest = {};    
    $scope.current.inBox.filename = "";
    $scope.current.HARequest.requestid = "";

    $scope.language = languageService.getLanguage();

    //
    // check to see if need to showo link button
    //
    function showLinkButtonCheck()
    {
        if ($scope.current.inBox.filename != "" && $scope.current.HARequest.requestid != "")
        {
            $("#linkButton").show();
        }
        else
        {
            $("#linkButton").hide();
        }
    }

    init();
    function init() {
        $scope.inboxMetaData = metaDataService.getInboxMetaData($scope.language);
      
        $("#linkButton").hide();

        $scope.gridOptionsInBox = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableRowSelection: true,
            enableRowHeaderSelection: false,
            multiSelect: false,
            modifierKeysToMultiSelect: false,
            noUnselect: false,
            // minRowsToShow: 3,
            onRegisterApi: function( gridApi ) {
                $scope.gridApi = gridApi;

                gridApi.selection.on.rowSelectionChanged($scope, function(row) {
                    // var msg = "row seleted" + row.isSelected;
                    // $log.log(msg);

                    if (row.isSelected)
                    {
                        // if row is seleted ad information to current inbox
                        $scope.current.inBox.filename = row.entity[$scope.inboxMetaData.inBox.gridHdr.filename.text]; 
                        $scope.current.inBox.filenameurl = "inbox/"+row.entity[$scope.inboxMetaData.inBox.gridHdr.filename.text];      
                        $scope.current.inBox.type = row.entity[$scope.inboxMetaData.inBox.gridHdr.type.text];                
                        $scope.current.inBox.datetime = row.entity[$scope.inboxMetaData.inBox.gridHdr.datetime.text];
                    }
                    else
                    {
                        // if row is unseleted remove from current inbox
                        $scope.current.inBox.filename = "";      
                        $scope.current.inBox.type = "";                
                        $scope.current.inBox.datetime = "";
                    }

                    //
                    // check to see if both inbox and request have been selected
                    // If yes then show link button
                    //
                    showLinkButtonCheck();
            
                })
            },
            columnDefs: [
                // default
                { field: $scope.inboxMetaData.inBox.gridHdr.filename.text, width: '45%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.inboxMetaData.inBox.gridHdr.type.text, width: '15%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.inboxMetaData.inBox.gridHdr.datetime.text, width: '40%', headerCellClass: $scope.highlightFilteredHeader }
            ]
        }

        $scope.gridOptionsRequest = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableRowSelection: true,
            enableRowHeaderSelection: false,
            multiSelect: false,
            modifierKeysToMultiSelect: false,
            noUnselect: false,
            onRegisterApi: function( gridApi ) {
                $scope.gridApi = gridApi;

                gridApi.selection.on.rowSelectionChanged($scope, function(row) {
                    // var msg = "row seleted" + row.isSelected;
                    // $log.log(msg);

                    if (row.isSelected)
                    {
                        // if row is seleted ad information to current inbox
                        $scope.current.HARequest.requestid = row.entity[$scope.inboxMetaData.HARequest.gridHdr.requestid.text]; 
                        $scope.current.HARequest.patient = row.entity[$scope.inboxMetaData.HARequest.gridHdr.patient.text];       
                        $scope.current.HARequest.provider = row.entity[$scope.inboxMetaData.HARequest.gridHdr.provider.text];               
                        $scope.current.HARequest.eventdate = row.entity[$scope.inboxMetaData.HARequest.gridHdr.eventdate.text];
                    }
                    else
                    {
                        // if row is unseleted remove from current inbox
                        $scope.current.HARequest.requestid = "";  
                        $scope.current.HARequest.patient = "";      
                        $scope.current.HARequest.provider = "";                
                        $scope.current.HARequest.eventdate = "";
                    }

                    //
                    // check to see if both inbox and request have been selected
                    // If yes then show link button
                    //
                    showLinkButtonCheck();
                })
            },
            columnDefs: [
                // default
                { field: $scope.inboxMetaData.HARequest.gridHdr.requestid.text, width: '30%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.inboxMetaData.HARequest.gridHdr.patient.text, width: '25%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.inboxMetaData.HARequest.gridHdr.provider.text, width: '25%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.inboxMetaData.HARequest.gridHdr.eventdate.text, width: '20%', headerCellClass: $scope.highlightFilteredHeader }
            
            ]
        }

        inboxFactory.getInBoxItems()
            .success( function(data) {
                $scope.inboxItemsList = data; 
                $scope.gridOptionsInBox.data = data;
            })
            .error( function(edata) {
                alert(edata);
            });

        requestsFactory.getRequestItems()
            .success( function(data) {
                $scope.requestItemsList = data; 
                $scope.gridOptionsRequest.data = data;
            })
            .error( function(edata) {
                alert(edata);
            });    
    };

    $scope.linkInboxRequestRecords = function () {

        alert("You have linked the records");
    }

}

controllers.keyrequestsController = function ($scope, $http, $log, $location, metaDataService, languageService, keyrequestsFactory, uiGridConstants) {
    $scope.keyrequestsMetaData = "";
    $scope.current = {};
    $scope.current.keyRequests = {};
    $scope.current.requestid = "00000918818-001";  // this should be generated by date/tame/patientid

    $scope.language = languageService.getLanguage();

    //
    // check to see if need to show link button
    //
    function requestSendMethodButtonCheck()
    {
        if ($scope.current.keyRequests.emailstatus == "Y")
        {
            $("#emailButton").prop('disabled', false);
        }
        else
        {
            $("#emailButton").prop('disabled', true);
        }

        if ($scope.current.keyRequests.faxstatus == "Y")
        {
            $("#faxButton").prop('disabled', false);
        }
        else
        {
            $("#faxButton").prop('disabled', true);
        }

        if ($scope.current.keyRequests.uspsmailstatus == "Y")
        {
            $("#uspsmailButton").prop('disabled', false);
        }
        else
        {
            $("#uspsmailButton").prop('disabled', true);
        }
    }

    //
    // hide/show SendDetailPanels
    //
    function showHideSendDetailPanel(showPanel) {

        switch (showPanel) 
        {
            case "":
                $("#emailSendDetail").hide();
                $("#faxSendDetail").hide();
                $("#uspsmailSendDetail").hide(); 
                $("#defaultSendDetail").show();                 
                break;

            case "email":
                $("#defaultSendDetail").hide();
                $("#faxSendDetail").hide(); 
                $("#uspsmailSendDetail").hide(); 
                $("#emailSendDetail").show();               
                break;  

            case "uspsmail":
                $("#defaultSendDetail").hide();
                $("#emailSendDetail").hide();
                $("#faxSendDetail").hide();    
                $("#uspsmailSendDetail").show();             
                break;
                
            case "fax":
                $("#defaultSendDetail").hide();
                $("#emailSendDetail").hide(); 
                $("#uspsmailSendDetail").hide();
                $("#faxSendDetail").show();
                break;                      
        }
    }

    //
    // disable PatientRequestDetailButtons
    //
    function disablePatientRequestDetailButtons() {
        $("#emailButton").prop('disabled', true);
        $("#faxButton").prop('disabled', true);
        $("#uspsmailButton").prop('disabled', true);
    }

    init();
    function init() {
        $scope.corporate = metaDataService.getCorporateMetaData($scope.language);
        $scope.keyrequestsMetaData = metaDataService.getKeyRequestsMetaData($scope.language);
      
        disablePatientRequestDetailButtons();

        showHideSendDetailPanel("");

        $scope.gridOptionskeyRequests = {
            showGridFooter: true,
            // showColumnFooter: true,
            enableFiltering: true,
            enableRowSelection: true,
            enableRowHeaderSelection: false,
            multiSelect: false,
            modifierKeysToMultiSelect: false,
            noUnselect: false,
            // minRowsToShow: 3,
            onRegisterApi: function( gridApi ) {
                $scope.gridApi = gridApi;

                gridApi.selection.on.rowSelectionChanged($scope, function(row) {
                    // var msg = "row seleted" + row.isSelected;
                    // $log.log(msg);

                    if (row.isSelected)
                    {
                        // if row is seleted ad information to current inbox
                        $scope.current.keyRequests.patient = row.entity[$scope.keyrequestsMetaData.keyRequests.gridHdr.patient.text]; 
                        $scope.current.keyRequests.provider = row.entity[$scope.keyrequestsMetaData.keyRequests.gridHdr.provider.text];      
                        $scope.current.keyRequests.providernpi = row.entity[$scope.keyrequestsMetaData.keyRequests.gridHdr.providernpi.text];                
                        $scope.current.keyRequests.eventdate = row.entity[$scope.keyrequestsMetaData.keyRequests.gridHdr.eventdate.text];
                        $scope.current.keyRequests.requestdate = row.entity[$scope.keyrequestsMetaData.keyRequests.gridHdr.requestdate.text];
                        $scope.current.keyRequests.status = row.entity[$scope.keyrequestsMetaData.keyRequests.gridHdr.status.text]; 

                        // fill in data from hidden fields
                        $scope.current.keyRequests.event = row.entity["Event"];
                        $scope.current.keyRequests.emailstatus = row.entity["eMailStatus"];
                        $scope.current.keyRequests.emailaddress = row.entity["eMail Address"];  
                        $scope.current.keyRequests.faxstatus = row.entity["FaxStatus"];  
                        $scope.current.keyRequests.faxnumber = row.entity["Fax Number"];  
                        $scope.current.keyRequests.uspsmailstatus = row.entity["MailStatus"];  
                        $scope.current.keyRequests.phonenumber = row.entity["Phone Number"];  
                        $scope.current.keyRequests.address1 = row.entity["Address1"];  
                        $scope.current.keyRequests.address2 = row.entity["Address2"]; 

                        $scope.current.keyRequests.address = $scope.current.keyRequests.address1;
                        if ($scope.current.keyRequests.address2 != "")
                        {
                            $scope.current.keyRequests.address += '\n' + $scope.current.keyRequests.address2;
                        }

                        $scope.current.keyRequests.city = row.entity["City"];  
                        $scope.current.keyRequests.state = row.entity["State"];  
                        $scope.current.keyRequests.zip = row.entity["ZIP"];                  
                    }
                    else
                    {
                        // if row is unseleted remove from current inbox
                        $scope.current.keyRequests.event = "";
                        $scope.current.keyRequests.patient = "";
                        $scope.current.keyRequests.provider = "";
                        $scope.current.keyRequests.providernpi = "";
                        $scope.current.keyRequests.eventdate = "";
                        $scope.current.keyRequests.requestdate = "";
                        $scope.current.keyRequests.status = "";
                        $scope.current.keyRequests.emailstatus = "";
                    }

                    //
                    // check to see if both inbox and request have been selected
                    // If yes then show link button
                    //
                    requestSendMethodButtonCheck();
            
                })
            },
            columnDefs: [
                // default
                { field: $scope.keyrequestsMetaData.keyRequests.gridHdr.patient.text, width: '20%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.keyrequestsMetaData.keyRequests.gridHdr.provider.text, width: '20%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.keyrequestsMetaData.keyRequests.gridHdr.providernpi.text, width: '15%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.keyrequestsMetaData.keyRequests.gridHdr.eventdate.text, width: '10%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.keyrequestsMetaData.keyRequests.gridHdr.requestdate.text, width: '10%', headerCellClass: $scope.highlightFilteredHeader },
                { field: $scope.keyrequestsMetaData.keyRequests.gridHdr.daysinqueue.text, width: '10%', headerCellClass: $scope.highlightFilteredHeader },                
                { field: $scope.keyrequestsMetaData.keyRequests.gridHdr.status.text, width: '15%', headerCellClass: $scope.highlightFilteredHeader },

                // hidden fields
                { field: "Event", visible: false },
                { field: "eMailStatus", visible: false },
                { field: "eMail Address", visible: false },
                { field: "FaxStatus", visible: false },
                { field: "Fax Number", visible: false },
                { field: "MailStatus", visible: false },
                { field: "Phone Number", visible: false },
                { field: "Address1", visible: false },
                { field: "Address2", visible: false },
                { field: "City", visible: false },
                { field: "State", visible: false },
                { field: "ZIP", visible: false }
            ]
        }

        keyrequestsFactory.getkeyrequestItems()
            .success( function(data) {
                $scope.keyrequestsItemsList = data; 
                $scope.gridOptionskeyRequests.data = data;
            })
            .error( function(edata) {
                alert(edata);
            }); 
    };

    //
    // setup callbacks for request choice buttons
    //
    $scope.emailKeyRequest = function () {
        showHideSendDetailPanel("email"); 
    }

    $scope.faxKeyRequest = function () {

        showHideSendDetailPanel("fax"); 
    }

    $scope.uspsmailButtonKeyRequest = function () {

        showHideSendDetailPanel("uspsmail"); 
    }

    //
    // setup callbacks for request submit
    //
    $scope.submiteMailRequest = function () {
        alert("You be submitting email request");
    }

    $scope.submitFAXRequest = function () {
        alert("You be submitting fax request");
    }

    $scope.submituspsMailRequest = function () {
        alert("You be submitting usps mail request");
    }

}

dddApp.controller(controllers); 
