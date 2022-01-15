<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Ajax를 위해서 공식사이트 에서 제공하는 jquery를 가져온다.  -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script type="text/javascript">
	function autoClosingAlert(selector, delay) {
		var alert =$(selector).alert();
		alert.show();
		window.setTimeout(function() { alert.hide() }, delay)
	}
	
	function submitFunction() {
		var fromID = '${userID}';
		var toID = '${toID}';
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
		var fromID = '${userID}';
		var toID = '${toID}';
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


	function addChat(chatName, chatContent, chatTime) {
		$('#chatList').append(
						'<div class="row">'
								+ '<div class="col-lg-12">'
								+ '<div class="media">'
								+ '<a class="pull-left" href="#">'
								+ '<img class="media-object img-circle" style="width: 30px; height: 30px;" src="resources/images/icon.png" alt="">'
								+ '</a>' + '<div class="media-body">'
								+ '<h4 class="media-heading">' + chatName
								+ '<span class="small pull-right">' + chatTime
								+ '</span>' + '</h4>' + '<p style="width: 50%;">' + chatContent
								+ '</p>' + '</div>' + '</div>' + '</div>'
								+ '</div>' + '<hr>');
		$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
	}
	
	function addChat2(chatName, chatContent, chatTime) {
		$('#chatList').append(
						'<div class="row">'
								+ '<div class="col-lg-12">'
								+ '<div class="media">'
								+ '<span class="small">' + chatTime
								+ '</span>'
								+ '<a class="pull-right" href="#">'
								+ '<img class="media-object img-circle" style="width: 30px; height: 30px;" src="resources/images/icon.png" alt="">'
								+ '</a>'
								+ '<h4 class="media-heading pull-right">' + chatName
								+ '</h4>' 
							 	+ '<div class="media-body">'
								+ '<p class="pull-right" style="width: 50%">' + chatContent
								+ '</p>' + '</div>' + '</div>' + '</div>'
								+ '</div>' + '<hr>');
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
</script>
<title>LIO 채팅 서비스</title>
</head>
<body>
	<!-- 트렌드 분석 a 태그 안에 post 전송 및 값 전달을 위한 hidden form -->
	<form action="dataTrend" name="myForm" method="POST">
		<input type="hidden" name="contentPage" value="">	
	</form>


	<!-- 실시간 채팅창 -->
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-xs-12">
				<div class="portlet portlet-default">
					<div class="portlet-heading">
						<div class="portlet-title">
							<h4>
								<i class="fa fa-circle text-green"></i>실시간 채팅창
							</h4>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="chat" class="panel-collapse collapse in">
						<div id="chatList" class="portlet-body chat-widget"
							style="overflow-y: auto; width: auto; height: 600px"></div>
						<div class="portlet-footer">
							<div class="row" style="height: 90px;">
								<div class="form-group col-xs-10">
									<textarea style="height: 80px;" id="chatContent"
										class="form-control" placeholder="메시지를 입력하세요." maxlength="100"></textarea>
								</div>
								<div class="form-group col-xs-2">
									<button type="button" class="btn btn-default pull-right"
										onclick="submitFunction();">전송</button>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
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