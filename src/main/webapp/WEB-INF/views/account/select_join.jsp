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
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

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
					<td align="center"><input
						style="width: 240px; height: 50px; font-size: 16px;"
						onclick='location.href="UserRegisterC"' class="btn btn-primary"
						type="submit" value="PeterPet으로 가입"></td>
				</tr>
				<tr>
					<td align="center">
						<!-- 구글 로그인 API -->
						<div id="my-signin2"></div>
					</td>
				</tr>
				<tr>
					<td align="center">
						<!-- 카카오 로그인 API -->
						<a onclick="kakaoLogin();" href="javascript:void(0)">
							<img src="resources/images/kakao_login_large_narrow.png" style="width: 240px; height: 50px;">
						</a>
					</td>
				</tr>
				<tr>
					<td align="center">
						<!-- 네이버 로그인 API -->
						<a id="naverIdLogin_loginButton" href="javascript:void(0)">
							<img src="resources/images/btnG_완성형.png" style="width: 240px; height: 50px;">
						</a>
					</td>
				</tr>
			</tbody>
		</table>

		<form action="kakaoRegister" method="post" name="kakaoRegister">
			<input type="hidden" name="kakao_ID"> <input type="hidden"
				name="kakao_profile">
		</form>

		<!-- 카카오 스크립트 -->
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
		<script>
			Kakao.init('70cdb1b1167ec9404d51259e89f44bce'); //발급받은 키 중 javascript키를 사용해준다.
			console.log(Kakao.isInitialized()); // sdk초기화여부판단
			//카카오로그인
			function kakaoLogin() {
				Kakao.Auth
						.login({
							success : function(response) {
								Kakao.API
										.request({
											url : '/v2/user/me',
											success : function(response) {
												console.log(response)
												var k = document.kakaoRegister;
												
												k.kakao_ID.value = response.id;
												k.kakao_profile.value = response.kakao_account.profile.profile_image_url;

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
		<form action="googleRegister" method="post" name="googleRegister">
			 <input type="hidden" name="google_ID"> 
			 <input type="hidden" name="google_Password"> 
			 <input type="hidden" name="google_Name"> 
			 <input type="hidden" name="google_profile"> 
		</form>

		<script>
			function onSuccess(googleUser) {
				var profile = googleUser.getBasicProfile();

				var g = document.googleRegister
				g.google_ID.value = profile.getEmail();
				g.google_Password.value = profile.getId();
				g.google_Name.value = profile.getName();
				g.google_profile.value = profile.getImageUrl();

				gapi.auth2.getAuthInstance().disconnect();

				g.submit();
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
			
		<form action="naverRegister" method="post" name="naverRegister">
			 <input type="hidden" name="naver_ID"> 
			 <input type="hidden" name="naver_Password"> 
			 <input type="hidden" name="naver_Name"> 
			 <input type="hidden" name="naver_profile"> 
		</form>
		
		<!-- 네이버 스크립트 -->
		<script>
		
			var n = document.naverRegister;
			var naverLogin = new naver.LoginWithNaverId({
				clientId : "NFHnma7HGbCOhFpJzepE", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
				callbackUrl : "http://localhost/peterpet/SelectRegisterC", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
				isPopup : false,
				callbackHandle : true
			});

			naverLogin.init();

			window.addEventListener('load', function() {
				naverLogin.getLoginStatus(function(status) {
					if (status) {
						var id = naverLogin.user.getId(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
						var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
						var name = naverLogin.user.getName();
						var profile = naverLogin.user.getProfileImage();
						
						n.naver_ID.value = naverLogin.user.getEmail();
						n.naver_Password.value = naverLogin.user.getId();
						n.naver_Name.value = naverLogin.user.getName();
						n.naver_profile.value = naverLogin.user.getProfileImage();
				
						naverLogin.logout();
	
						n.submit();
					}
				});
			});
			
		</script>
	</div>
</body>
</html>