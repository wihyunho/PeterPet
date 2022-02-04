<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 가입</title>
</head>
<script type="text/javascript">
function popup(toNickname) {
	url='./Chat?toNickname='+toNickname;
	window.open(url, 'Chat', 'top=10, left=10, width=628, height=800, status=no, menubar=no, toolbar=no, resizable=no, location=no');
}
</script>
<body>
	<!-- 회원가입 양식 -->
	<div class="container">
		<form method="post" enctype="multipart/form-data" action="UserRegisterC" onSubmit="return finalCheck();">
			<table class="table table-bordered table-hover"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 정보</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="3">
							<img src="resources/images/${User.userProfile }" width="300px">
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td colspan="2">${User.userID }</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td colspan="2">${User.userName }</td>
					</tr>				
					<tr>
						<td style="width: 110px;"><h5>닉네임</h5></td>
						<td colspan="2">${User.userNickname} </td>
					</tr>
					<tr>
						<td colspan="3">
							<input class="btn btn-primary" onclick="popup('${User.userNickname}');" type="button"value="메세지 보내기">
						</td>
					</tr>
								
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>