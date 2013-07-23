////////////////////////////////////////////////////////////////////////////////////
// WEEKLY DRAWING

var
token;
// Additional JS functions here
window.fbAsyncInit = function() {
	FB.init({
		appId : 173776702803375, // App ID
		status : true, // check login status
		cookie : true, // enable cookies to allow the server to access the session
		xfbml : true // parse page for xfbml or html5 social plugins like login button below
	});

	// Put additional init code here
};

// Load the SDK Asynchronously
( function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/en_US/all.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

function weeklyPick(uri, cartCopy, description, url, image, sweepstake_id) {
	FB.getLoginStatus(function(response) {
		if (response.status === 'connected') {

			token = response.authResponse.accessToken;

			// TEST PERMISSION
			FB.api('/me/permissions', function(response) {

				var permsNeeded = ['email', 'user_birthday', 'publish_actions'];
				var permsArray = response.data[0];

				var permsToPrompt = [];
				for (var i in permsNeeded) {
					if (permsArray[permsNeeded[i]] == null) {
						permsToPrompt.push(permsNeeded[i]);
					}
				}

				if (permsToPrompt.length > 0) {
					// PERMISSIONS INVALID
					// LOG IN
					FB.login(function(response) {
						if (response.authResponse) {

							weeklyPickEnter(token, uri, cartCopy, description, url, image, sweepstake_id);

						} else {
							statusMessage("Please sign in via Facebook so we may enter you in the weekly drawing.", 0, 1);
							debug(uri, "Weekly Drawing", "Error: Login", "", "", "");
						}
					}, {
						scope : 'email,user_birthday,publish_actions'
					});

				} else {
					// PERMISSIONS VALID
					weeklyPickEnter(token, uri, cartCopy, description, url, image, sweepstake_id);
				}

			});

		} else {

			FB.login(function(response) {
				if (response.authResponse) {

					weeklyPickEnter(response.authResponse.accessToken, uri, cartCopy, description, url, image, sweepstake_id);

				} else {

					statusMessage("Please sign in via Facebook so we may enter you in the weekly drawing.", 0, 1);
					debug(uri, "weekly Drawing", "Error: Post", "", "", "");

				}
			}, {
				scope : 'email,user_birthday,publish_actions'
			});

		}
	});
}

function weeklyPickEnter(accessToken, uri, cartCopy, description, url, image, sweepstake_id) {

	var fbQuote;

	if ($("[name=weeklyPickQuote]:checked").val() == "other") {
		fbQuote = ($("[name=weeklyPickQuoteOther]").val());
	} else {
		fbQuote = ($("[name=weeklyPickQuote]:checked").val());
	}

	$.ajax({
		type : "POST",
		url : "/api/sweepstakes_entry",
		beforeSend : function(request) {
			request.setRequestHeader("X-Spree-Token", "73181f1a72d145b1a4570eb577e2f461f2a0424bcf7aecbc");
		},
		data : "accessToken=" + accessToken + "&sweepstake_id = " + sweepstake_id,
		error : function(msg) {
			//statusMessage(msg);
			debug(uri, "weekly Drawing", "Error: Misc", msg.statusText, "", "");
		},
		success : function(msg) {

			var params = {};
			params['message'] = 'I have entered a drawing to win ' + cartCopy + '. ' + fbQuote + '.';
			params['name'] = cartCopy;
			params['description'] = description;
			params['link'] = url;
			params['picture'] = image;
			params['caption'] = 'from UniqTeas';

			FB.api('/me/feed', 'post', params, function(response) {
				if (!response || response.error) {
					//statusMessage("Please sign in via Facebook so we may enter you in the weekly drawing.", 0, 1);
					debug(uri, "weekly Drawing", "Error: Post", "", "", "");
				} else {
					//statusMessage(results[1], 0, 0);
					$('#weeklyPickCopy').addClass('alert alert-success')
					$('#weeklyPickCopy').html("<strong>You're in!</strong>  Good luck and thank you for entering.");
				}
			});

		}
	});

}

function statusMessage(msg, timer, warning) {

	if (timer == 0) {
		timer = msg.length * 50;
	}

	if (warning) {
		$("#statusMessage").addClass("statusMessageWarning");
	} else {
		$("#statusMessage").removeClass("statusMessageWarning");
	}
	
	$('#statusMessage').css('bottom','0');
	$('#statusMessage').html(msg);
	
	$( "#statusMessage" )
		.animate({ bottom: '75px', opacity: 'show' }, 500 )
		.delay(timer)
		.animate({ bottom: '150px', opacity: 'toggle' }, 500 );

}