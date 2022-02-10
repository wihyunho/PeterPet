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
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

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
							name="userPassword" maxlength="30" placeholder="비밀번호를 입력하세요.">
						</td>
					</tr>
					<tr>
						<td style="text-align: left;" colspan="2">	
							<input style="width: 120px;height: 36px" class="btn btn-primary pull-right" type="submit" value="로그인">
						</td>
					</tr>
				</tbody>
			</table>
		</form>

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

		<!-- 카카오 로그인 API -->
		<div style="width: 120px; height: 36px; background-color: yellow; text-align: center;"> 
		<a onclick="kakaoLogin();" href="javascript:void(0)">
				<img src="resources/images/kakao_login_medium.png" width="70px;">
		</a>
		</div>
		<!-- 카카오 스크립트 -->
		<script>
			Kakao.init('70cdb1b1167ec9404d51259e89f44bce'); //발급받은 키 중 javascript키를 사용해준다.
			console.log(Kakao.isInitialized()); // sdk초기화여부판단
			//카카오로그인
			function kakaoLogin() {
				Kakao.Auth.login({
					success : function(response) {
						Kakao.API.request({
							url : '/v2/user/me',
							success : function(response) {
								console.log(response)
								var k = document.myForm
								k.userID.value = response.id;
								k.userPassword.value = "kakao";
								k.loginType.value = "Kakao";

								kakaoLogout();

								k.submit();
							},
							fail : function(error) {
								console.log(error)
							},
						})
					},
					fail : function(error) {
						console.log(error)
					},
				})
			}
			//카카오로그아웃  
			function kakaoLogout() {
				if (Kakao.Auth.getAccessToken()) {
					Kakao.API.request({
						url : '/v1/user/unlink',
						success : function(response) {
							console.log(response)
						},
						fail : function(error) {
							console.log(error)
						},
					})
					Kakao.Auth.setAccessToken(undefined)
				}
			}
		</script>
	</div>
</body>
</html>