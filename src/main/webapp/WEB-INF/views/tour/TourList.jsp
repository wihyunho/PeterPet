<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/tour.css">
</head>

<body>
<div class="main-preview">
		<h3 class="recruit__header">관광지 정보</h3>
		<div class="recruit-content">
			<div class="recruit-content__btn2-group2">

	<div id="menu">

		<div class="item">
			<label for="select">서울</label> 
			<select id="area" class="select">
				<option selected="selected">서울</option>
				<option>경기도</option>
				<option>인천</option>
				<option>강원도</option>
				<option>세종</option>
				<option>대전</option>
				<option>대구</option>
				<option>부산</option>
				<option>광주</option>
				<option>제주도</option>
				<option>충청북도</option>
				<option>충청남도</option>
				<option>경상북도</option>
				<option>경상남도</option>
				<option>전라북도</option>
				<option>전라남도</option>

			</select>
		</div>
		<div class="item">
			<label for="select">전체</label> <select id="type" class="select" onchange="result();">
				<option selected="selected" value="0">전체</option>
				<option value="자연">관광지</option>
				<option value="인문(문화/예술/역사)">문화시설</option>
				<option value="레포츠">레포츠</option>
				<option value="쇼핑">쇼핑</option>
				<option value="음식">음식</option>
				<option value="숙박">숙박</option>
			</select>
		</div>
		
		
			<div class="btnIn">
				<div id="result" class="btn2">
					<a>검색하기</a>
				</div>

				<div id="update" class="btn2">
					<a>정보 업데이트</a>
				</div>
			</div>
		
	</div>



	<!-- 컨텐트 표시 -->
	<ul class="card-group">
		<c:forEach var="p" items="${pet}">
			<!-- start card -->
			<li onclick='tour_info();' class='card-item'>
				<div class='card-ly1' style='background-image: url(${p.p_img });'></div>
				<a href="TourView?code=${p.p_code }" class="card card_big">
					<h3 class="card__head fs_28">${p.p_name }</h3> <span
					class="card__date">${p.p_address }</span><br>
			</a>
			</li>
		</c:forEach>
	</ul>
	
	<div id="page"></div>

	<!-- 페이징 처리 -->
			<ul class="pagination" style="display: table; margin-left: auto; margin-right: auto;">
				<!-- 페이지 화살표 -->
				<c:choose>
					<c:when test="${curPageNo == 1 or curPageNo == null}">
						<li class="page-item disabled"><a class="page-link" href="#">◀</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="TourPageC?p=${curPageNo -1}">◀</a></li>
					</c:otherwise>
				</c:choose>
				
				<!-- 초기 페이지 표시 -->
				<c:if test="${(curPageNo - 1) > 0 }">
					<li class="page-item"><a class="page-link" href="TourPageC?p=1">1</a></li>
				</c:if>
				
				<!-- 현재페이지보다 -2 했을때 3보다 크면 ...을 표시 -->
				<c:if test="${(curPageNo - 2) > 2 }">
					<li class="page-item disabled"><a class="page-link" href="#">...</a></li>
				</c:if>
				
				<!-- 현재페이지보다 -2 했을때 2보다 크면 페이지 표시 -->
				<c:if test="${(curPageNo - 2) > 1 }">
					<li class="page-item"><a class="page-link" href="TourPageC?p=${curPageNo-2 }">${curPageNo-2 }</a></li>
				</c:if>
				
				<!-- 현재페이지보다 -1 했을때 2보다 크면 페이지 표시 -->
				<c:if test="${(curPageNo - 1) > 1 }">
					<li class="page-item"><a class="page-link" href="TourPageC?p=${curPageNo-1 }">${curPageNo-1 }</a></li>
				</c:if>
				
				
				
				<!-- 현재페이지 -->
				<li class="page-item active"><a class="page-link" href="TourPageC?p=${curPageNo }">${curPageNo }</a></li>
				
				<!-- 현재페이지보다 +1 했을때 막페이지-1 보다크면 -->
				<c:if test="${(pageCount - 1) - (curPageNo + 1) > -1 }">
					<li class="page-item"><a class="page-link" href="TourPageC?p=${curPageNo+1 }">${curPageNo+1}</a></li>
				</c:if>
				
				<!-- 현재페이지보다 +2 했을때 막페이지-1 보다크면 -->
				<c:if test="${(pageCount - 1)- (curPageNo + 2) > -1 }">
					<li class="page-item"><a class="page-link" href="TourPageC?p=${curPageNo+2}">${curPageNo+2}</a></li>
				</c:if>
				
				<!-- 현재페이지보다 -2 했을때 막페이지-2 보다크면  -->
				<c:if test="${(pageCount - 2) - (curPageNo + 2) > -1}">
					<li class="page-item disabled"><a class="page-link" href="#">...</a></li>
				</c:if>
				
				<!-- 마지막 페이지 표시 -->
				<c:if test="${(pageCount - curPageNo) > 0 }">
					<li class="page-item"><a class="page-link" href="TourPageC?p=${pageCount }">${pageCount}</a></li>
				</c:if>
				
				<!-- 화살표 페이지 표시 -->
				<c:choose>
					<c:when test="${curPageNo == pageCount }">
						<li class="page-item disabled"><a class="page-link" href="#">▶</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="TourPageC?p=${curPageNo +1}">▶</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
	
	
</div></div></div>

	<script type="text/javascript">
		$(document).ready(function() {
			
			
			$('#result').click(function() {
				result();
				//pagetest();
				
				console.log("체크 : "+check+" area : " + area + " // type : " + type);
				
				if(check == "0"){
					alert("지역을 선택하세요");
					
				}else{
					location.href = "TourMain?area="+area+"&type="+type;
				}
				
			})
			
		});
		
		
		var check;
		var area;
		var type;

		var select = $("select.select");

		select.change(function() {
			var select_name = $(this).children("option:selected").text();
			$(this).siblings("label").text(select_name);
		});

		$('#update').click(function() {
			location.href = "TourUpdate";
		});

		
		
		
		function result() {
			
			check = $('#area option:selected').val();
			area = $('#area option:selected').text();
			type = $('#type option:selected').val();
			return area, type;
		}

	</script>
</body>
</html>