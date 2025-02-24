dddApp.factory('membersFactory', function($q, $http) {
    var factory = {};

    factory.getMembers = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmembers.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getMemberStatus = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmemberstatus.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getMemberInfo = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmemberinfo.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getMemberProfileDialog = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getmemberprofiledialog.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllMembersAdmin = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallmembersadmin.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllMemberAdmin = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallmemberadmin.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllMembers = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallmembers.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallmember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addmember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addMemberGroup = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addmembergroup.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllMemberGroups = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallmembergroups.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllMemberGroup = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallmembergroup.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateMemberGroup = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updatemembergroup.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.deleteMemberGroup = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/deletemembergroup.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.deleteMemberGroupMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/deletemembergroupmember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllMemberGroupMembers = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallmembergroupmembers.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.buildeMailTemplate = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/buildemail.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updatemember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.memberUpdateMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/memberupdatemember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.deleteMember = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/deletemember.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.saveMemberAvatar = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/savememberavatar.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addMemberGameTeamPick = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addmembergameteampick.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.sendeMail2Members = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/sendemail2members.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getLatePickMembers = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getlatepickmembers.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getLatePickDayOfMembers = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getlatepickdayofmembers.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getLatePickDayBeforeMembers = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getlatepickbeforemembers.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllHallofFame = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallhalloffame.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateHallofFame = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updatehalloffame.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addHallofFame = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addhalloffame.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getAllHallofMemory = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getallhallofmemory.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateHallofMemory = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updatehallofmemory.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addHallofMemory = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addhallofmemory.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.track = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/track.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});