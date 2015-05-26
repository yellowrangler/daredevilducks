// define controllers for app
var controllers = {};
controllers.dddParentController = function ($scope, $http, $window, $route, $location, loginService, nflteamsFactory, nflTeamsService) {
    $("#adminselect").hide();

    function checkRole() {
        var role = loginService.getUserRole();
        if (role == "admin")
        {
            $("#adminselect").show();
        }
        else
        {
            $("#adminselect").hide();
        }  
    }

    init();
    function init() {
        var route = loginService.setLoginLogoffLabel("menubarlogin",0);

        // preload nfl team data
        nflteamsFactory.getNFLTeams()
            .success( function(data) {
                nflTeamsService.setNFLTeams(data); 
            })
            .error( function(edata) {
                alert(edata);
            });

        checkRole();  
    };         

    $scope.loginlogoff = function () {
        var route = loginService.setLoginLogoffLabel("menubarlogin",1);
        checkRole();
        if (route != "")
        {
            $location.path(route);
        }
    }
}

controllers.loginController = function ($scope, $http, $location, loginService, msgService, loginFactory) {
    $scope.login = loginService.getEmptyLogin();
    $scope.msg = msgService.getEmptyMsg();
     
    init();
    function init() {
        
    };

    $scope.sendLoginForm = function() {
        var data = "username="+$scope.login.username+"&passwd="+$scope.login.passwd;

        loginFactory.loginPassword(data)
            .success( function(login) {
                if (login.rc == "1")
                {
                    loginService.addLogin(login);

                    // flip the label
                    var route = loginService.setLoginLogoffLabel("menubarlogin",0);
                    
                    $('#iformationDialogModalTitle').text("Success");
                    $('#iformationDialogModalLabelBody').text(login.text);
                    $('#iformationDialogModal').modal();
                }
                else
                {
                    $('#iformationDialogModalTitle').text("Error");
                    $('#iformationDialogModalLabelBody').text(login.text);
                    $('#iformationDialogModal').modal();
                }   
            })
            .error( function(edata) {
                $('#iformationDialogModalTitle').text("Success");
                $('#iformationDialogModalLabelBody').text("Syetem Error", edata);
                $('#iformationDialogModal').modal();
            });
    }

    $scope.closeModalCleanUp = function () {
        var role = loginService.getUserRole();
        if (role == "admin")
        {
            $("#adminselect").show();
        }
        else
        {
            $("#adminselect").hide();
        }
        
        $location.path("/home");
    }
        
}

controllers.homeController = function ($scope, $http, $location, $route, loginService) {

    init();
    function init() {
        var loggedIn = loginService.isLoggedIn();
        if (loggedIn)
            $("#loginHomeButton").hide();
        else
            $("#loginHomeButton").show();
      
    };

    $scope.homepagelogin = function () {
        $scope.$parent.loginlogoff();

        // $route.reload();
    }
}

controllers.chooseController = function ($scope, $http, $location, nflTeamsService) {
    
    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.teamstandingsController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.leaderboardController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.halloffameController = function ($scope, $http, $location, nflTeamsService) {

    init();
    function init() {
        $scope.teams = nflTeamsService.getNFLTeams(); 
    };
}

controllers.teaminfoController = function ($scope, $http, $log, $location, uiGridConstants, nflteamsFactory) {
    $scope.current = {};

    init();
    function init() {
       $scope.gridOptionsTeams = {
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
                        // if row is seleted ad information to current team
                        $scope.current.name = row.entity["name"]; 
                        $scope.current.league = row.entity["league"];      
                        $scope.current.conference = row.entity["conference"];                
                        $scope.current.division = row.entity["division"];

                        // fill in data from hidden fields
                        $scope.current.id = row.entity["id"];
                        $scope.current.teamiconname = row.entity["teamiconname"];
                        $scope.current.teamorder = row.entity["teamorder"];  
                        $scope.current.teamurl = row.entity["teamurl"];   
                        $scope.current.status = row.entity["status"];  
                    }
                    else
                    {
                        // if row is unseleted remove from current team
                        $scope.current.name = ""; 
                        $scope.current.league = ""; 
                        $scope.current.conference = ""; 
                        $scope.current.division = ""; 

                        // clear data from hidden fields
                        $scope.current.id = ""; 
                        $scope.current.teamiconname = ""; 
                        $scope.current.teamorder = "";  
                        $scope.current.teamurl = "";    
                        $scope.current.status = "";  
                    }

                    //
                    // check to see if both inbox and request have been selected
                    // If yes then show link button
                    //
                    // showLinkButtonCheck();
            
                })
            },
            columnDefs: [
                // default
                { field: "name", width: '40%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "league", width: '20%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "conference", width: '20%', headerCellClass: $scope.highlightFilteredHeader },
                { field: "division", width: '20%', headerCellClass: $scope.highlightFilteredHeader }
            ]
        }

        nflteamsFactory.getNFLTeams()
            .success( function(data) {
                $scope.nflteam = data; 
                $scope.gridOptionsTeams.data = data;
            })
            .error( function(edata) {
                alert(edata);
            });

    };

    $scope.updateTeamInfoRequest = function () {
        alert("You be submitting update request");
    }

    $scope.newTeamInfo = function () {
        alert("You be submitting new request");
    }

    $scope.Delete = function () {
        alert("You be submitting delete request");
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
