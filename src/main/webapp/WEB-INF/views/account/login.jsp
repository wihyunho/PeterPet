<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>로그인</title>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" 
content="99323380118-93dou793k0bhub4437omhgpdadnm36gp.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>

</head>
<body>
	<!-- 로그인 창 구현 -->
	<div class="container">
		<form method="post" action="UserLoginC" name="myForm">
			<input type="hidden" name="loginType" value="PeterPet">
			<table class="table table-bordered table-hover"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2"><h4>Login</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" name="userID"
							maxlength="20" placeholder="아이디를 입력하세요."></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>페스워드</h5></td>
						<td><input class="form-control" type="password"
							name="userPassword" maxlength="20" placeholder="비밀번호를 입력하세요.">
						</td>
					</tr>
					<tr>
						<td style="text-align: left;" colspan="2"><input
							class="btn btn-primary pull-right" type="submit" value="로그인">
						</td>
					</tr>
				</tbody>
			</table>
		</form>		
		<!-- 구글 로그인 API -->
		<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>	

		<script>
			function onSignIn(googleUser) {		
				// Useful data for your client-side scripts:
				var profile = googleUser.getBasicProfile();
				
				var f = document.myForm
				f.userID.value = profile.getEmail(); 
				f.userPassword.value = profile.getId();
				f.loginType.value = "Google";
				
				gapi.auth2.getAuthInstance().disconnect();
				
				f.submit();
			}
		</script>
	</div>
</body>
</html>