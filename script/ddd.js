$(document).ready( function(){

	$( window ).resize(function() {
		adjustNavbarImages();
		setviewpadding();	
	});

	setviewpadding();
	adjustNavbarImages();
});  

function setviewpadding()
{	
	// var navTypeMobile = isMobile();
	// var navTypeSmall = isSmall();

	window.scrollTo(0, 0);
	
	// var viewoffset = 0;

	// var wd = windowDimentions();
	// var navHeight = $("#navBarHeader").height();	

	// var tallNavDisplay = $("#nav-bar-menu-bar-tall").css('display');
	// if (tallNavDisplay == 'block')
	// {
	// 	var navHeightNormal = 170;
	// 	var navHeight = $("#nav-bar-menu-bar-tall").height();
	// }
	// else
	// {
	// 	var navHeightNormal = 65;
	// 	var navHeight = $("#nav-bar-menu-bar-short").height();
	// }

	// // var navHeight = $("#nav-bar-menu-bar").height();

	// if (navHeight  > navHeightNormal) 
	// {
	//  	viewoffset = navHeight - navHeightNormal;
	// }
	// else
	// {
	// 	viewoffset = navHeight;
	// }

	// viewoffset = navHeight;

	// setTimeout(function() { 
	// 	// $('html,body').animate({
	// 	// 	scrollTop: $('#ddd-view').position().top + viewoffset
	// 	// }, 1000);
	// 	// $('#ddd-view').animate({
	// 	// 	scrollTop: $('#ddd-view').offset().top + viewoffset
	// 	// }, 1000);
 //  		$( "#ddd-view" ).animate({paddingTop: viewoffset}, 1000);
	// }, 1000);

	// window.scrollTo(0,400);
}

function getUserAgent()
{
	var deviceName = "MainStream";
	var deviceType = "Computer";

	var useragent = navigator.userAgent.toLowerCase();
	if (useragent.search("iphone") > -1)
	{
		deviceName = "iPhone";
		deviceType = "Mobile";
	}
	else if (useragent.search("android") > -1)
	{
		deviceName = "Android";
		deviceType = "Mobile";
	}
	else if (useragent.search("ipad") > -1)
	{
		deviceName = "iPad";
		deviceType = "Mobile";
	}
	else if (useragent.search("blackberry") > -1)
	{
		deviceName = "BlackBerry";
		deviceType = "Mobile";
	}
	else if (useragent.search("iemobile") > -1)
	{
		deviceName = "Windows";
		deviceType = "Mobile";
	}


	return { deviceName: deviceName, deviceType: deviceType };
}

function isMobile() {
	var rval = 0;

	var ua = getUserAgent();

	// alert("User Agent:"+ ua.deviceName + " " + ua.deviceType);
        
    if (ua.deviceType == "Mobile" && ua.deviceName != "iPad")
    {
        rval = 1;
    }

    return rval;
}

function isSmall() {
	var rval = 0;

	var w = window.innerWidth;
	if (w < 750)
	{
		rval = 1;
	}

	var m = isMobile();
	if (m)
	{
		rval = 1;
	}

    return rval;
}

function decodeHtmlString(str) {
	var decodedStr = $("<div/>").html(str).text();

	return decodedStr;
}

function windowDimentions() {
	var w = window.innerWidth;
	var h = window.innerHeight;

	return { width: w, height: h };
}

function adjustNavbarImages() 
{
 	var r = isSmall();
	// alert(w);
	if (r)
	{
		$("#nav-bar-menu-bar").removeClass("fixed");

		$("#teamnavimg").addClass("imgButtonNavSmall").removeClass("imgButtonNav").removeClass("img-responsive");
		$("#playernavimg").addClass("imgButtonNavSmall").removeClass("imgButtonNav").removeClass("img-responsive");
		$("#gamenavimg").addClass("imgButtonNavSmall").removeClass("imgButtonNav").removeClass("img-responsive");
		$("#halloffamenavimg").addClass("imgButtonNavSmall").removeClass("imgButtonNav").removeClass("img-responsive");
		$("#adminnavimg").addClass("imgButtonNavSmall").removeClass("imgButtonNav").removeClass("img-responsive");
		$("#avatarnavimg").addClass("imgAvatarNavSmall").removeClass("imgAvatarNav").removeClass("img-responsive");

		$(".collapsableNavbar").click(function(event) {
          $(".navbar-collapse").collapse('hide');
          setviewpadding();
        });
	}
	else
	{
		$("#nav-bar-menu-bar").addClass("fixed");

		$("#teamnavimg").addClass("imgButtonNav").removeClass("imgButtonNavSmall");
	    $("#playernavimg").addClass("imgButtonNav").removeClass("imgButtonNavSmall");
	    $("#gamenavimg").addClass("imgButtonNav").removeClass("imgButtonNavSmall");
	    $("#halloffamenavimg").addClass("imgButtonNav").removeClass("imgButtonNavSmall");
	    $("#adminnavimg").addClass("imgButtonNav").removeClass("imgButtonNavSmall");
	    $("#avatarnavimg").addClass("imgAvatarNav").removeClass("imgAvatarNavSmall");
	}
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


//
// prototypes
//
function stopWatch() {
	this.startdate = "";
	this.stopdate = "";
	this.diffdate = "";

	function setdatediff (start, stop) {
		return stop - start;
	}

	this.start = function () {
		this.startdate = new Date();

		this.stopdate = "";
		this.diffdate = "";
	}

	this.stop = function () {
		this.stopdate = new Date();
		this.diffdate = setdatediff(this.startdate, this.stopdate);
	}

	this.getLocalTimeStart = function() {
		return this.startdate.toLocaleTimeString();
	};

	this.getLocalTimeStop = function() {
		return this.stopdate.toLocaleTimeString();
	};

	this.getMinutesDiff = function() {
		return Math.round(((this.diffdate % 86400000) % 3600000) / 60000); // minutes
	};

	this.getSecondsDiff = function() {
		return Math.round(this.diffdate / 1000); // seconds
	};

}

function AnimateTextColor(elmID, textStr, colorText, timeMS) 
{
	var jqElem = $('#'+elmID);
	var letters = textStr.split('');
	var lettersLength = textStr.length;	

	// clear out the field
	$(jqElem).text('');

	// build the span 

	$.each(letters, function(idx, value) {	
    	var letterStr = "<span id='anim" + idx + "''>" + value + "</span>";
    	$(jqElem).append(letterStr);
	});

	var index = 0;
	doAnimation(index, colorText, timeMS);
}

function doAnimation(index, colorText, timeMS) 
{
	
	setTimeout(
		function()
		{
			$('#anim'+index).animate(
				{ 
					'color': colorText 
				}, 
				timeMS, 
				"linear", 
				function()
				{ 
					index++; 
					doAnimation(index, colorText, timeMS);
				}
			);
		}, 50);
}







