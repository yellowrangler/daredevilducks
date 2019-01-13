//
// validate Login form
//

function validateLoginForm()
{
	var err = "";

	err = simpleNumberValidation($("#walletsize"),$("#alert_msg"), "Please select size", 1);
	if (err) return err;

	err = simpleNumberValidation($("#walletqty"),$("#alert_msg"), "Please select quantity", 1);
	if (err) return err;

	return 0;
}

function fieldIsEmpty(field) 
{
	if (field === undefined || field === null)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

function simpleValidation(obj,alert,msg,lth_min,lth_max)
{
	var test = obj.val();

	if (test.length < lth_min || test.length > lth_max )
	{
		$(alert).html('<div class="alert alert-danger"><a class="close" data-dismiss="alert">×</a><span>'+msg+'</span></div>');
		obj.focus();
		var t=setTimeout(function(){closeAlert(alert)},3000);

		return 1;
	}

	return 0;
}

function simpleNumberValidation(obj,alert,msg,smallnbr)
{
	var test = obj.val();

	if (isNaN(test))
	{
		$(alert).html('<div class="alert alert-danger"><a class="close" data-dismiss="alert">×</a><span>'+msg+'</span></div>')
		obj.focus();
		var t=setTimeout(function(){closeAlert(alert)},3000);

		return 1;
	}

	if (test < smallnbr)
	{
		$(alert).html('<div class="alert alert-danger"><a class="close" data-dismiss="alert">×</a><span>'+msg+'</span></div>')
		obj.focus();
		var t=setTimeout(function(){closeAlert(alert)},3000);

		return 1;
	}

	return 0;
}

function simplePhoneValidation(obj,alert,msg)
{
	var test = obj.val();
	var err = 0;

	if (isNaN(test))
	{
		//
		// if not all number must have dashes
		//
		if (test.length != 12)
		{
			err = 1;
		}

		for (var i = 0; i < test.length; i++)
		{
			switch(i)
			{
				case 0:
				case 1:
				case 2:
				case 4:
				case 5:
				case 6:
				case 8:
				case 9:
				case 10:
				case 11:
					if (isNaN(test[i]) )
					{
						err = 1;
					}
					break;

				case 3:
				case 7:
					if (test[i] != "-")
					{
						err = 1;
					}
				break;	
			}

		}
	}
	else
	{
		if (test.length != 10)
		{
			err = 1;
		}
		else
		{
			var formattedStr = test.slice(0,3)+"-"+test.slice(3,6)+"-"+test.slice(6);
			obj.val(formattedStr);
			var t=setTimeout(function(){closeAlert(alert)},3000);
		}
	}

	if (err)
	{
		$(alert).html('<div class="alert alert-danger"><a class="close" data-dismiss="alert">×</a><span>'+msg+'</span></div>')
		obj.focus();
		var t=setTimeout(function(){closeAlert(alert)},3000);

		return 1;
	}

	return 0;
}

//
// utility scripts
//
function closeAlert(alert)
{
	$(alert).html('');
	// $(alert).alert('close');
}