$(document).ready( function(){
    
});  

//
// on click functionality
//
function addMember(id) {
    //  get the current count of non primary members
    var nbr = $("#member-count").val();

    // count starts at 0 so increment 
    nbr = (nbr * 1) + 1;

    // now set count to one for next member
    $("#member-count").val(nbr);

    // append new for group for new member
    var str = '<div id="formgroup'+nbr+'" class="form-group">';
    str = str + '<label for="member" class="col-md-2 control-label">Member</label>';
    str = str + '<div class="col-md-5"><input id="member'+nbr+'" name="member" type="text" class="form-control" placeholder="Member to use account"></div>';
    str = str + '<div class="col-md-1"><button onclick="deleteMember('+nbr+')" type="button" class="btn btn-danger btn-sm">Delete</button></div>';
    str = str + '<div class="col-md-1"><button onclick="getMedical('+nbr+')" type="button" class="btn btn-primary btn-sm">Medical Info</button></div>';
    str = str + '<div class="col-md-5"></div></div> <!-- end of form-group -->';
    
    $("#"+id).append( str );
}

// these should be added to directives but for now thy are here
function deleteMember(nbr) {
        // first we remove the offending member
        var memberid = "#formgroup"+nbr;
        $(memberid).remove();

        // now we must renumber the remaining (if any) members
        // var i = 1;
        // $("[id^='formgroup']").each(function () {
        //     var str = 'formgroup' + i;
        //     $(this).attr('id', str);
        //     i = i + 1;
        // });
}

function getMedical(nbr) {
    $('#medicalModal').modal('show');
}