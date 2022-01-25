<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
	
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>

<script type="text/javascript">
	function autoClosingAlert(selector, delay) {
		var alert =$(selector).alert();
		alert.show();
		window.setTimeout(function() { alert.hide() }, delay)
	}
	
	function submitFunction() {
		var fromID = '${userID.userID}';
		var toID = '${toID.userID}';
		var chatContent = $( '#chatContent').val();
		
		$.ajax({
				type: "POST",
				url: "./ChatSubmitServlet",
				data: {
					fromID: encodeURIComponent(fromID),
					toID: encodeURIComponent(toID),
					chatContent: encodeURIComponent(chatContent)
				},
				success: function (result) {
					if(result == 1) {
						autoClosingAlert('#successMessage', 2000);
					} else if (result == 0) {
						autoClosingAlert('#dangerMessage', 2000);
					} else {
						autoClosingAlert('#warningMessage', 2000);
					}
				}
		});
		//챗 쓰고나서 빈칸으로 만들어 줌
		$('#chatContent').val('');
	}
	
	var lastID =0;
	function chatListFunction(type){
		var fromID = '${userID.userID}';
		var toID = '${toID.userID}';
		$.ajax({
			type : "POST",
			url : "./ChatListServlet",
			data : {
				fromID : encodeURIComponent(fromID),
				toID : encodeURIComponent(toID),
				listType : type
			},
			success : function(data) {
				if (data == "")
					return;
				var parsed = JSON.parse(data);
				var result = parsed.result;
				for (var i = 0; i < result.length; i++) {
					if (result[i][0].value == fromID) {
						result[i][0].value = '나';
						addChat2(result[i][0].value, result[i][2].value,
								result[i][3].value)
					}else{
						addChat(result[i][0].value, result[i][2].value,
								result[i][3].value)
					}
				}
				lastID = Number(parsed.last);
			}
		});
	}


	//상대가 보내는
	function addChat(chatName, chatContent, chatTime) {
		$('#chatList').append(
						'<div class="d-flex justify-content-start mb-4">'
							+ '<div class="img_cont_msg">'
								+ '<img src="resources/images/${toID.userProfile}" class="rounded-circle user_img_msg">'
							+ '</div>'
						+ '<div class="msg_cotainer">' + chatContent
							+ '<span class="msg_time">' + chatTime + '</span>' 
						+ '</div>'
					+ '</div>');
		$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
	}
	

	//내가 보내는
	function addChat2(chatName, chatContent, chatTime) {
		$('#chatList').append(
						'<div class="d-flex justify-content-end mb-4">'
						+ '<div class="msg_cotainer_send">'
							+ chatContent 
							+ '<span class="msg_time_send">' + chatTime + '</span>'
						+ '</div>'
						+ '<div class="img_cont_msg">'
							+ '<img src="resources/images/${userID.userProfile}" class="rounded-circle user_img_msg">'
						+ '</div>'
						+'</div>');
		$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
	}

	function getInfiniteChat() {
		setInterval(function() {
			chatListFunction(lastID);
		}, 3000);
	}
	
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
	//a태그를 post 방식으로 전송
   	function mySubmit(val){
	  var f = document.myForm;
	  f.contentPage.value = val;
	  f.submit();
	}
	
   	$(document).ready(function() {
		$('#action_menu_btn').click(function() {
			$('.action_menu').toggle();
		});
	});
</script>
<style type="text/css">
	body, html {
	background: #7F7FD5;
	background: -webkit-linear-gradient(to right, #91EAE4, #86A8E7, #7F7FD5);
	background: linear-gradient(to right, #91EAE4, #86A8E7, #7F7FD5);
}

.chat {
	margin-top: 10px;
	margin-bottom: 10px;
}

.card {
	width: 100%;
	height: 97vh;
	border-radius: 15px !important;
	background-color: rgba(0, 0, 0, 0.4) !important;
}

.contacts_body {
	padding: 0.75rem 0 !important;
	overflow-y: auto;
	white-space: nowrap;
}

.msg_card_body {
	overflow-y: auto;
}

.card-header {
	border-radius: 15px 15px 0 0 !important;
	border-bottom: 0 !important;
}

.card-footer {
	border-radius: 0 0 15px 15px !important;
	border-top: 0 !important;
}

.container {
	align-content: center;
}

.search {
	border-radius: 15px 0 0 15px !important;
	background-color: rgba(0, 0, 0, 0.3) !important;
	border: 0 !important;
	color: white !important;
}

.search:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.type_msg {
	background-color: rgba(0, 0, 0, 0.3) !important;
	border: 0 !important;
	color: white !important;
	height: 60px !important;
	overflow-y: auto;
}

.type_msg:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.attach_btn {
	border-radius: 15px 0 0 15px !important;
	background-color: rgba(0, 0, 0, 0.3) !important;
	border: 0 !important;
	color: white !important;
	cursor: pointer;
}

.send_btn {
	border-radius: 0 15px 15px 0 !important;
	background-color: rgba(0, 0, 0, 0.3) !important;
	border: 0 !important;
	color: white !important;
	cursor: pointer;
}

.search_btn {
	border-radius: 0 15px 15px 0 !important;
	background-color: rgba(0, 0, 0, 0.3) !important;
	border: 0 !important;
	color: white !important;
	cursor: pointer;
}

.contacts {
	list-style: none;
	padding: 0;
}

.contacts li {
	width: 100% !important;
	padding: 5px 10px;
	margin-bottom: 15px !important;
}

.active {
	background-color: rgba(0, 0, 0, 0.3);
}

.user_img {
	height: 70px;
	width: 70px;
	border: 1.5px solid #f5f6fa;
}

.user_img_msg {
	height: 40px;
	width: 40px;
	border: 1.5px solid #f5f6fa;
}

.img_cont {
	position: relative;
	height: 70px;
	width: 70px;
}

.img_cont_msg {
	height: 40px;
	width: 40px;
}

.online_icon {
	position: absolute;
	height: 15px;
	width: 15px;
	background-color: #4cd137;
	border-radius: 50%;
	bottom: 0.2em;
	right: 0.4em;
	border: 1.5px solid white;
}

.offline {
	background-color: #c23616 !important;
}

.user_info {
	margin-top: auto;
	margin-bottom: auto;
	margin-left: 15px;
}

.user_info span {
	font-size: 20px;
	color: white;
}

.user_info p {
	font-size: 10px;
	color: rgba(255, 255, 255, 0.6);
}

.video_cam {
	margin-left: 50px;
	margin-top: 5px;
}

.video_cam span {
	color: white;
	font-size: 20px;
	cursor: pointer;
	margin-right: 20px;
}

.msg_cotainer {
	margin-top: auto;
	margin-bottom: auto;
	margin-left: 10px;
	border-radius: 25px;
	background-color: #82ccdd;
	padding: 10px;
	position: relative;
}

.msg_cotainer_send {
	margin-top: auto;
	margin-bottom: auto;
	margin-right: 10px;
	border-radius: 25px;
	background-color: #78e08f;
	padding: 10px;
	position: relative;
}

.msg_time {
	position: absolute;
	left: 0;
	bottom: -15px;
	color: rgba(255, 255, 255, 0.5);
	font-size: 10px;
	white-space:nowrap;
}

.msg_time_send {
	position: absolute;
	right: 0;
	bottom: -15px;
	color: rgba(255, 255, 255, 0.5);
	font-size: 10px;
	white-space:nowrap;
}

.msg_head {
	position: relative;
}

#action_menu_btn {
	position: absolute;
	right: 10px;
	top: 10px;
	color: white;
	cursor: pointer;
	font-size: 20px;
}

.action_menu {
	z-index: 1;
	position: absolute;
	padding: 15px 0;
	background-color: rgba(0, 0, 0, 0.5);
	color: white;
	border-radius: 15px;
	top: 30px;
	right: 15px;
	display: none;
}

.action_menu ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.action_menu ul li {
	width: 100%;
	padding: 10px 15px;
	margin-bottom: 5px;
}

.action_menu ul li i {
	padding-right: 10px;
}

.action_menu ul li:hover {
	cursor: pointer;
	background-color: rgba(0, 0, 0, 0.2);
}

@media ( max-width : 576px) {
	.contacts_card {
		margin-bottom: 15px !important;
	}
}
</style>

<title>LIO 채팅 서비스</title>
</head>
<body>
	<!-- 트렌드 분석 a 태그 안에 post 전송 및 값 전달을 위한 hidden form -->
	<form action="dataTrend" name="myForm" method="POST">
		<input type="hidden" name="contentPage" value="">	
	</form>

	<div class="col-md-8 col-xl-6 chat">
		<div class="card">
			<div class="card-header msg_head">
				<div class="d-flex bd-highlight">
					<div class="img_cont">
						<img
							src="resources/images/${toID.userProfile}"
							class="rounded-circle user_img">
					</div>
					<div class="user_info">
						<span>${toID.userNickname}</span>
					</div>
				</div>
				<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
				<div class="action_menu">
					<ul>
						<li><i class="fas fa-user-circle"></i>프로필 보기</li>
						<li><i class="fas fa-ban"></i>대화 나가기</li>
					</ul>
				</div>
			</div>
			
			<div id="chatList" class="card-body msg_card_body">
					
			</div>
			<div class="card-footer">
				<div class="input-group">
					<div class="input-group-append">
					</div>
					<textarea id="chatContent" class="form-control type_msg"
						placeholder="Type your message..."></textarea>
					<div class="input-group-append" onclick="submitFunction();">
						<span class="input-group-text send_btn"><i
							class="fas fa-location-arrow"></i></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="alert alert-success" id="successMessage"
		style="display: none;">
		<strong>메시지 전송에 성공했습니다.</strong>
	</div>
	<div class="alert alert-danger" id="dangerMessage"
		style="display: none;">
		<strong>이름과 내용을 모두 입력해주세요.</strong>
	</div>
	<div class="alert alert-warning" id="warningMessage"
		style="display: none;">
		<strong>데이터베이스 오류가 발생했습니다</strong>
	</div>


	<script type="text/javascript">
		$(document).ready(function() {
			getUnread();
			chatListFunction('0');
			getInfiniteChat();
			getInfiniteUnread();
		});
	</script>
</body>
</html>