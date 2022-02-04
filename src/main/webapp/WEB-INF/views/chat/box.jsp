<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>LIO 채팅 서비스</title>
	<script type="text/javascript">	
		function chatBoxFunction() {
			var userID = '${userID}'
			$.ajax({
				type: "POST",
				url: "./ChatBoxServlet",
				data: {
					userID: encodeURIComponent(userID),
				},
				success: function (data) {
					if(data == "") return;
					$('#boxTable').html('');
					var parsed =JSON.parse(data);
					var result = parsed.result;
					for(var i = 0; i < result.length; i++){
						if(result[i][0].value == userID){
							result[i][0].value = result[i][1].value;
						}else{
							result[i][1].value = result[i][0].value;
						}
						addBox(result[i][0].value, result[i][1].value, result[i][2].value, result[i][3].value, result[i][4].value , result[i][5].value);
					}
				}
			});
		}
		
		//메세지함 출력
		function addBox(lastID, toID, chatContent, chatTime , unread, toNickname) {		
			$('#boxTable').append(
					//'<tr onclick="location.href=\'Chat?toID='+encodeURIComponent(toID) + '\'">' +
					'<tr onclick="popup(\''+ toID +'\');">' +
					'<td style="width: 150px;"><h5>' + toNickname + '</h5></td>'+
					'<td>' +
					'<h5>' + chatContent +
					'<span class="label label-info">' + unread + '</span></h5>' +
					'<div class="pull-right">' +chatTime + '</div>' +
					'</td>' +
					'</tr>');
		}
		// 특정 시간마다 메세지함 확인
		function getInfiniteBox() {
			setInterval(function(){
				chatBoxFunction();
			}, 3000);
		}
		
		//a태그를 post 방식으로 전송
	   	function mySubmit(val){
		  var f = document.myForm;
		  f.contentPage.value = val;
		  f.submit();
		}	
		
	 	function popup(toID) {
	 		url='./Chat?toID='+toID;
	   		var chat = window.open(url, 'Chat', 'top=10, left=10, width=628, height=800, status=no, menubar=no, toolbar=no, resizable=no, location=no, resizable=no');
	   	}
	 	
	 	$(document).ready(function () {
			chatBoxFunction();
			getInfiniteBox();
		});
	</script>
</head>
<body>
	<!-- 트렌드 분석 a 태그 안에 post 전송 및 값 전달을 위한 hidden form -->
	<form action="dataTrend" name="myForm" method="POST">
		<input type="hidden" name="contentPage" value="">	
	</form>
	
	<!-- 체팅 박스 -->
	<div class="container">
		<table class="table" style="margin: 0 auto">
			<thead>
				<tr>
					<th><h4>주고받은 메시지 목록</h4></th>
				</tr>
			</thead>
			<div style="overflow-y: auto; width: 100%; max-height: 450px;">
				<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd; margin: 0 auto;">
					<tbody id="boxTable">
					</tbody>
				</table>
			</div> 
		</table>
	</div>

	<!-- head부분의 javaScript에서 실행되고, 아이디 사용 유무의 결과를 보여준다. -->
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							확인 메시지
						</h4>
					</div>
					<div id="checkMessage" class="modal-body">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>