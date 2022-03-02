<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>토하려는 기색이 있고, 입을 핥거나 침을 흘린다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="main-preview">
		<h3 class="recruit__header">질병 사전</h3>
		<div class="recruit-content" align="center">
			<div class="container">
				<ul class="grid">
				<script type="text/javascript">
						function A() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="급성 간염";
							document.getElementById("prID").innerHTML ="바이러스 감염이나 중독 등에 의해 간장이 장해를 받아 발생하는 질환입니다. 치료방법은 수액을 맞히거나 해독제를 투여해서 응급처지를 한 후 충분한 휴식과 영양을 공급해 간 기능 회복을 촉진시킵니다. 평소 고지방 식단을 피하고 양질의 단백질로 구성된 처방식을 주는 것이 좋습니다.";
							document.getElementById("imgId").src = "#";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>배에 복수가 차거나 마른다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>경련이나 근력이 떨어져 비틀거린다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>눈, 입, 피부색이 노랗게 되는 황달증상이 나타난다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>식욕이나 기운이 없어진다</span></label>
							</dd>
						</dl></li>
				</ul>
				<div class="disease-container" style="display: none;">
					<div class="disease-block">
						<span id="titleID" class="title">test</span>
						<p id="prID" class="pr">test2</p>
						<div class="disease-img">
							<img id="imgId" src="" alt="이미지">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>