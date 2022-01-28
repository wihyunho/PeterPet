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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
<link rel="stylesheet" href="resources/css/chat.css">
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
   	
	$(document).ready(function() {
		chatListFunction('0');
		getInfiniteChat();
	});
</script>


<title>PeterPet Chat</title>
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
</body>
</html>