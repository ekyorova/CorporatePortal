(function() {
	var po = document.createElement('script');
	po.type = 'text/javascript';
	po.async = true;
	po.src = 'https://apis.google.com/js/client:plusone.js';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(po, s);
})();

function signinCallback(authResult) {
	if (authResult['status']['signed_in']) {
		document.getElementById('signinButton').setAttribute('style',
				'display: none');
	} else {
		// Update the app to reflect a signed out user
		// Possible error values:
		//   "user_signed_out" - User is signed-out
		//   "access_denied" - User denied access to your app
		//   "immediate_failed" - Could not automatically log in the user
		console.log('Sign-in state: ' + authResult['error']);
	}
}

function disconnectUser(access_token) {
  var revokeUrl = 'https://accounts.google.com/o/oauth2/revoke?token=' +
      access_token;

  // Perform an asynchronous GET request.
  $.ajax({
    type: 'GET',
    url: revokeUrl,
    async: false,
    contentType: "application/json",
    dataType: 'jsonp',
    success: function(nullResponse) {
      // Do something now that user is disconnected
      // The response is always undefined.
    },
    error: function(e) {
      // Handle the error
      // console.log(e);
      // You could point users to manually disconnect if unsuccessful
      // https://plus.google.com/apps
    }
  });
}


function signout() {
	$('#revokeButton').click(disconnectUser);
}

