<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//메시지 온거 있는지 확인해주는 함수
function getUnread() {
	$.ajax({
		type: "POST",
		url: "./ChatUnreadServlet",
		data: {
			userID: encodeURIComponent('${userID}'),
		},
		success: function (result) {
			if(result >= 1){
				showUnread(result);
			} else {
				showUnread('');
			}
		}
	});
}

//4초마다 메시지 왔는지 책크
function getInfiniteUnread() {
	setInterval(function () {
		getUnread();	
	}, 4000);
}

function showUnread(result) {
	$('#unread').html(result);
}

$(document).ready(function () {
	getUnread();
	getInfiniteUnread();
});

function logout(){
	//자식창 로그아웃 기능 넣어야함
	var dummy= window.open("chat/chat.j	p","Chat","");
	dummy.close();
	location.href='UserLogoutC';
}

</script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./"> 
			<img src="resources/images/peterpet_logo.png">
			</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="MapC">편의시설</a></li>
				<li><a href="DiseaseC">질병사전</a></li>
				<li><a href="TourHomeC">관광지</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown">게시판<span class="caret	"></span>
					</a>	
					<ul class="dropdown-menu">
						<li><a href="BoardListC?type=free">자랑하기</a></li>
						<li><a href="BoardListC?type=QA">Q & A</a></li>
						<li><a href="BoardListC?type=tip">팁과 노하우</a></li>
						<li><a href="BoardListC?type=share">나눠봐요</a></li>
						<li><a href="BoardListC?type=temp">임시보호</a></li>
						<li><a href="BoardListC?type=other">다른 동물</a></li>
					</ul>
				</li>
				<!--  채팅 관련
				<li><a href="find.jsp">친구찾기</a></li>
				<li><a href="box.jsp">메세지함<span id="unread" class="label label-info"></span></a></li>
				-->
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="UserInfoC">회원정보</a></li>
						<li><a href="ChatBox">채팅 <span id="unread" class="label label-info"></a></li>
						<li><a onclick="logout();">로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
</body>
</html>