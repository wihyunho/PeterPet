<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="main-preview">
		<h3 class="recruit__header">관광지 정보</h3>
		<div class="pull-right" style="margin: 10px">
					<button onclick="back();">목록페이지</button>
				</div>
		<div class="recruit-content">
			<div class="recruit-content__btn2-group2">


				
				
				<div>
					<ul>
						<c:forEach var="p" items="${pet}">
							<li><img src='${p.p_img}' style="width:100%"><hr></li>
							
							<li><b>제목 </b><br>: ${p.p_name}<hr></li>
							<li><b>주소 </b><br>: ${p.p_address}<hr></li>
							<li><b>문의(연락처) </b><br>: ${p.p_tell}<hr></li>
							<li><b>내용 </b><br>: ${p.p_des}<hr></li>
						</c:forEach>
					</ul>
					
					
				</div>



			</div>
		</div>
	</div>

<script type="text/javascript">
function back() {
	history.back();
}

</script>

</body>
</html>