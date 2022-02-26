<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Neucha' rel='stylesheet' type='text/css'>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/home.js" defer="defer"></script>
</head>
<body>
	<div id="wrapper">
		<div id="slider-wrap">
			<ul id="slider">
				<li onclick="location.href='MapC'" >
					<div>
						<h3>편의 시설 찾기</h3>
						여러분들의 주변에 반려동물들이 필요한 장소들을 보여드릴게요.<br> <span><b>병원, 공원, 애견카페</b></span>등의
						장소들을 맵으로 확인해보세요.
					</div> 
					<img src="resources/images/park.png">
				</li>

				<li onclick="location.href='TourHomeC'">
					<div>
						<h3>관광지 찾기</h3>
						반려동물과 함께할 <span><b>관광지</b></span>를 찾아 드릴게요.<br>
						같이 추억을 만들어 봐요.
					</div> 
					<img src="resources/images/travle.jpg">
				</li>
				
				<li onclick="location.href='DiseaseC'">
					<div>
						<h3>질병 사전</h3>
						어디가 아픈지 스스로 찾아봐요.<br>
						<span><b>질병에 관한 정보</b></span>를 알려드릴게요.
					</div> 
					<img src="resources/images/doctor2.jpg">
				</li>

				<li onclick="location.href='BoardListC?type=free'">
					<div>
						<h3>사용자 게시판</h3>
						내 반려동물이 너무 귀여워!<br>
						게시판을 통하여 <span><b>자랑</b></span>을 해보아요.<br>
					</div> 
					<img src="resources/images/cummunication.jpg">
				</li>

				<li onclick="location.href='https://dmanimal.co.kr/'">
					<div>
						<h3>유기견 보호소</h3>
						<span>과연 버려진 아이들이 나쁜걸까요? </span>
						
					</div> 
					<img src="resources/images/poor.jpg">
				</li>

				<li onclick="location.href='https://www.animal.go.kr/'">
					<div>
						<h3>동물등록</h3>
						<span>가족의 인연이 더욱 강력하게!</span><br>
						반려동물을 잃어버렸을 때 <span><b>동물보호관리시스템(www.animal.go.kr)</b></span> 상 동물등록정보를 통해 소유자를 쉽게 찾을 수 있습니다.
					</div> 
					<img src="resources/images/redline.jpg">
				</li>
			</ul>
			<!--controls-->
			<div class="btns" id="next">
				<i class="fa fa-arrow-right"></i>
			</div>
			<div class="btns" id="previous">
				<i class="fa fa-arrow-left"></i>
			</div>
			<div id="counter"></div>

			<div id="pagination-wrap">
				<ul>
				</ul>
			</div>
			<!--controls-->
		</div>
	</div>
	
	<div class="main-preview">
		<hr>
		<!-- 컨텐트 표시 -->
		<h1 style="color: #F15F5F;">자랑하기</h1>
		<ul class="card-group">
			<c:forEach var="free" items="${freeBoards}">
				<!-- start card -->
				<li onclick="location.href='BoardViewC?no=${free.b_no}&type${free.b_type}'" class="card-item">
					<div class="card-ly1" style=" background-image: url(${free.b_thumbnail});"></div>
					<a href="#" class="card card_big">
						<h3 class="card__head fs_28">${free.b_title }</h3> 
						<span class="card__date">작성자: ${free.b_writer}</span><br>
						<span class="card__date">작성일: ${free.b_date}</span>
					</a>
				</li>
			</c:forEach>
		</ul>
		
		<hr>
		<h1 style="color:  #F29661;">나눠봐요</h1>
		<ul class="card-group">
			<c:forEach var="free" items="${shareBoards}">
				<!-- start card -->
				<li onclick="location.href='BoardViewC?no=${free.b_no}&type${free.b_type}'" class="card-item">
					<div class="card-ly1" style=" background-image: url(${free.b_thumbnail});"></div>
					<a href="#" class="card card_big">
						<h3 class="card__head fs_28">${free.b_title }</h3> 
						<span class="card__date">작성자: ${free.b_writer}</span><br>
						<span class="card__date">작성일: ${free.b_date}</span>
					</a>
				</li>
			</c:forEach>
		</ul>
		
		<hr>
		<h1 style="color: #F2CB61;">Q & A</h1>
		<table class="table">
			<thead>
				<tr>
					<th>제목</th>
					<th id="smallhidden2">작성자</th>
					<th id="smallhidden">날짜</th>
				</tr>
			</thead>
			<c:forEach var="b" items="${QABoards }">
				<tbody>
					<tr class="boardList" onclick="location.href='BoardViewC?no=${b.b_no}&type=${b.b_type}'">
						<td><b>Q&A : </b>&nbsp; ${b.b_title }</td>
						<td id="smallhidden2" align="center">${b.b_writer }</td>
						<td id="smallhidden" align="center">
							<fmt:formatDate value="${b.b_date }" type="both" dateStyle="short" timeStyle="short"/><br>
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>