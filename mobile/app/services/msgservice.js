dddAppMobile.service('msgService', function () {

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
