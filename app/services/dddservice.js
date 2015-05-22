dddApp.service('dddAppService', function () {

});

dddApp.service('msgService', function () {

    this.getEmptyMsg = function() {
        var msg = emptyMsg;

        return msg;
    }

    this.createMsgforModal = function(title, body) {
        var msgStr = '[ { "title":"' + title + '" , "body":"'+body+'" } ]';
        var msg = JSON.parse(msgStr);

        return msg;
    }

    var emptyMsg = [
        {  }
    ];

});

dddApp.service('registerService', function () {

    this.getEmptyRegister = function() {
        var register = emptyRegister;

        return register;
    }

    var emptyRegister = [
        {  }
    ];

});

dddApp.service('temploginService', function () {

    this.getEmptyTemplogin = function() {
        var templogin = emptyTemplogin;

        return templogin;
    }

    var emptyTemplogin = [
        {  }
    ];

});

dddApp.service('loginService', function () {
    this.setLoginLogoffLabel = function(labelid, action) {
        var login = this.getLogin();

        // get the text for login title
        var logintext = this.getLoginLogoffLabels();

        var location = "";

        if (login == null)
        {
            $("#"+labelid).text(logintext.login.text);
            if (action)
                location = "/dddlogin";
        }
        else
        {
            
            if (action)
            {
                this.removeLogin();
                $("#"+labelid).text(logintext.login.text);
            }
            else
            {
                $("#"+labelid).text(login.clientname+" "+logintext.logoff.text);
            }
        } 

        return location;
    }

    this.getLoginLogoffLabels = function() {
        var labels = loginLogoffService;

        return labels;
    }

    this.getEmptyLogin = function() {
        var login = emptyLogin;

        return login;
    }

    this.getLogin = function() {
        var loginStr = this.retreiveLogin();
        var login = JSON.parse(loginStr);

        return login;
    }

    this.addLogin = function(login) {
        // var login ="";

        var loginStr = JSON.stringify(login);
        this.saveLogin(loginStr);

        return login;
    }

    this.saveLogin = function (loginStr) {
        localStorage.removeItem("dddLogin");
        localStorage.setItem("dddLogin", loginStr);
    }

    this.retreiveLogin = function () {
        var loginStr = localStorage.getItem("dddLogin");

        return loginStr;
    }

    this.removeLogin = function () {
        localStorage.removeItem("dddLogin");
    }

    var emptyLogin = [
        {  }
    ];

    var loginLogoffService = 
        {
            "login" : 
                {
                    "text": "Login"
                }, 
            "logoff" : 
                {
                    "text": "Logoff"
                }   
        };
});

