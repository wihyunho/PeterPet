<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 가입</title>
<script type="text/javascript">
function quit() {
    if (!confirm("탈퇴하시겠습니까?\r\n여태 작성한 게시물, 댓글, 채팅의 내용이 삭제됩니다.")) {
    	//아니요를 눌렀을 때 작동	
        return;
    } else {
    	//예를 눌렀을 경우
    	location.href="UserDeleteC";	
    }
} 


</script>
</head>
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
							<img src="${User.userProfile }" width="300px">
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
							<input class="btn btn-primary" onclick="location.href='UserInfoUpdateC?type=profile'" type="button"value="프로필사진 변경">
							<input class="btn btn-primary" onclick="location.href='UserInfoUpdateC?type=nickname'" type="button"value="닉네임 변경"> 
							<c:if test="${User.loginType eq 'PeterPet'}">
								<input class="btn btn-primary" onclick="location.href='UserInfoUpdateC?type=password'" type="button"value="비밀번호 변경">
							</c:if>
							<input class="btn btn-primary" onclick="quit();" type="button"value="회원 탈퇴">
						</td>
					</tr>
								
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>