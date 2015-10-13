$(document).ready( function(){

	$( window ).resize(function() {
	  setviewpadding()
	});

	setviewpadding();
});  

function setviewpadding()
{
	var viewoffset = $("#navbarCollapse").height() + 10;

  $("#ddd-view").css("padding-top", viewoffset);
}

function convertMySQLdate2mdy(mysqlDate)
{
	//
	// split date into its component parts
	//
	var t = mysqlDate.split(/[- :]/);

	//
	// convert to english mdy
	//
	var d = new Date(t[0], t[1]-1, t[2], t[3], t[4], t[5]);

	//
	// split english mdy for readability
	//
	var hd = d.split(" ");

	//
	// return mdy as June 2 2015 eg
	//
	var dateStr = hd[0] + " " + hd[1] + ", " + hd[2];

	return dateStr;
}

function getCurrentDateTimeStr()
{
	//
	// get current date
	//
	var today = new Date();

	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();

	var ss = today.getSeconds();
	var min = today.getMinutes();
	var hh = today.getHours();

	if(dd<10) {
	    dd='0'+dd
	} 

	if(mm<10) {
	    mm='0'+mm
	} 

	var todayStr = mm.toString()+dd.toString()+yyyy.toString()+hh.toString()+min.toString()+ss.toString();

	return todayStr;
}

function compareScores(venue, homescore, awayscore)
{
    var result = false;

    var homescoreNbr = parseInt(homescore);
    var awayscoreNbr = parseInt(awayscore);

    if (venue == "home")
    {
        if (homescoreNbr > awayscoreNbr)
        {
            result = true;
        }
    }
    else if (venue == "away")
    {
        if (awayscoreNbr > homescoreNbr)
        {
            result = true;
        }

    }
    else
    {
        alert ("No venue");
    }

    return result;
}
