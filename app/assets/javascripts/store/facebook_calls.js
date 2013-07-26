////////////////////////////////////////////////////////////////////////////////////
// WEEKLY DRAWING
function weeklyPick(uri, cartCopy, description, url, image, sweepstake_id, auth) {
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

							weeklyPickEnter(token, uri, cartCopy, description, url, image, sweepstake_id, auth);

						} else {
							$('#weeklyPickCopy').addClass('alert alert-warning')
							$('#weeklyPickCopy').html("<strong>Warning/strong> Please sign in via Facebook so we may enter you in the weekly drawing.", msg.statusText);
						}
					}, {
						scope : 'email,user_birthday,publish_actions'
					});

				} else {
					// PERMISSIONS VALID
					weeklyPickEnter(token, uri, cartCopy, description, url, image, sweepstake_id, auth);
				}

			});

		} else {

			FB.login(function(response) {
				if (response.authResponse) {

					weeklyPickEnter(response.authResponse.accessToken, uri, cartCopy, description, url, image, sweepstake_id, auth);

				} else {
					$('#weeklyPickCopy').addClass('alert alert-warning')
					$('#weeklyPickCopy').html("<strong>Warning/strong> Please sign in via Facebook so we may enter you in the weekly drawing.", msg.statusText);
				}
			}, {
				scope : 'email,user_birthday,publish_actions'
			});

		}
	});
}

function weeklyPickEnter(accessToken, uri, cartCopy, description, url, image, sweepstake_id, auth) {

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
			request.setRequestHeader("X-Spree-Token", auth);
		},
		data : "accessToken=" + accessToken + "&sweepstake_id = " + sweepstake_id,
		error : function(msg) {
			$('#weeklyPickCopy').addClass('alert alert-error')
			$('#weeklyPickCopy').html("<strong>There was an error</strong> Error: ", msg.statusText);
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
					$('#weeklyPickCopy').addClass('alert alert-error')
					$('#weeklyPickCopy').html("<strong>There was an error</strong> Error: ", response.error);
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

	$('#statusMessage').css('bottom', '0');
	$('#statusMessage').html(msg);

	$("#statusMessage").animate({
		bottom : '75px',
		opacity : 'show'
	}, 500).delay(timer).animate({
		bottom : '150px',
		opacity : 'toggle'
	}, 500);

}