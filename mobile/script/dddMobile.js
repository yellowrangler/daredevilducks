$(document).ready( function(){

	
});  

function isEmpty(elementvalue) {
	var retvalue = false;

	switch (elementvalue)
	{
		case "undefined":
		case undefined:
		case "":
		case null:
			retvalue = true;
			break;
	}

  	return retvalue;
}


function objectCopy(src) {
  let target = {};
  for (let prop in src) {
    if (src.hasOwnProperty(prop)) {
      target[prop] = src[prop];
    }
  }
  return target;
}

function objectArraySize(obj) {
  	var size = 0, key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
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

function decodeHtmlString(str) {
	var decodedStr = $("<div/>").html(str).text();

	return decodedStr;
}

function windowDimentions() {
	var w = window.innerWidth;
	var h = window.innerHeight;

	return { width: w, height: h };
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

function makeSnowAnimation(options, targetElement)
{
    var $flake1          = $('<div id="flake" />').css({'position': 'absolute', 'top': '-50px'}).html('&#10052;'),
        documentHeight  = $(targetElement).height(),
        documentWidth   = $(targetElement).width(),
        defaults        = {
                            minSize     : 10,
                            maxSize     : 20,
                            newOn       : 500,
                            flakeColor1  : "#FFFFFF",
                            flakeColor2  : "black"
                        },
        options         = $.extend({}, defaults, options);

    var $flake2          = $('<div id="flake" />').css({'position': 'absolute', 'top': '-50px'}).html('&#10053;');
        // documentHeight  = $(targetElement).height(),
        // documentWidth   = $(targetElement).width(),
        // defaults        = {
        //                     minSize     : 10,
        //                     maxSize     : 20,
        //                     newOn       : 500,
        //                     flakeColor  : "#FFFFFF"
        //                 },
        // options2         = $.extend({}, defaults, options2);    
        
    var intervalVariable        = 
        setInterval( function(){
            var startPositionLeftFlake1   = Math.random() * documentWidth - 100,
            	startPositionLeftFlake2   = Math.random() * documentWidth - 10,
                startOpacity        = 0.5 + Math.random(),
                sizeFlake           = options.minSize + Math.random() * options.maxSize,
                endPositionTopFlake1      = documentHeight - 20,
                endPositionTopFlake2      = documentHeight - 50,
                endPositionLeftFlake1     = startPositionLeftFlake1 - 100 + Math.random() * 200,
                endPositionLeftFlake2     = startPositionLeftFlake2 - 10 + Math.random() * 40,
                durationFall        = documentHeight * 10 + Math.random() * 5000;
            $flake1
                .clone()
                .appendTo(targetElement)
                .css(
                    {
                        left: startPositionLeftFlake1,
                        opacity: startOpacity,
                        'font-size': sizeFlake,
                        color: options.flakeColor1
                    }
                )
                .animate(
                    {
                        top: endPositionTopFlake1,
                        left: endPositionLeftFlake1,
                        opacity: 0.2
                    },
                    durationFall,
                    'linear',
                    function() {
                        $(this).remove()
                    }
                );

            $flake2
                .clone()
                .appendTo(targetElement)
                .css(
                    {
                        left: startPositionLeftFlake2,
                        opacity: startOpacity,
                        'font-size': sizeFlake,
                        color: options.flakeColor2
                    }
                )
                .animate(
                    {
                        top: endPositionTopFlake2,
                        left: endPositionLeftFlake2,
                        opacity: 0.2
                    },
                    durationFall,
                    'linear',
                    function() {
                        $(this).remove()
                    }
                );  
        }, options.newOn);

    return(intervalVariable);
}






