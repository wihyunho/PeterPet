<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 가입</title>
<!--Ajax를 위해서 공식사이트 에서 제공하는 jquery를 가져온다.  -->
<script src="resources/js/join.js"></script>
<meta name="google-signin-client_id"
	content="YOUR_CLIENT_ID.apps.googleusercontent.com">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="99323380118-93dou793k0bhub4437omhgpdadnm36gp.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
	<!-- 회원가입 양식 -->
	<div class="container">
		<table class="table table-bordered table-hover"
			style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3"><h4>회원 정보</h4></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td align="center">
						<input style="width: 240px; height: 50px; font-size: 16px;" onclick='location.href="UserRegisterC"' class="btn btn-primary" type="submit" value="PeterPet으로 가입">
					</td>
				</tr>
				<tr>
					<td align="center">
						<!-- 구글 로그인 API -->
						<div id="my-signin2"></div>
					</td>

				</tr>
			</tbody>
		</table>



		<form action="googleRegister" method="post" name="googleRegister">
			<input type="hidden" name="userID2"> 
			<input type="hidden" name="userPassword2"> 
			<input type="hidden" name="userName2">
			<input type="hidden" name="profile2">
		</form>
		
		<script>
			function onSuccess(googleUser) {
				var profile = googleUser.getBasicProfile();

				var f = document.googleRegister
				f.userID2.value = profile.getEmail();
				f.userPassword2.value = profile.getId();
				f.userName2.value = profile.getName();
				f.profile2.value = profile.getImageUrl();

				gapi.auth2.getAuthInstance().disconnect();

				f.submit();
			}

			function onFailure(error) {
				console.log(error);
			}

			function renderButton() {
				gapi.signin2.render('my-signin2', {
					'scope' : 'profile email',
					'width' : 240,
					'height' : 50,
					'longtitle' : true,
					'theme' : 'dark',
					'onsuccess' : onSuccess,
					'onfailure' : onFailure
				});
			}
		</script>
		<script
			src="https://apis.google.com/js/platform.js?onload=renderButton"
			async defer></script>
	</div>
</body>
</html>