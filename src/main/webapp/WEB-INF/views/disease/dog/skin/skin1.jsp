<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피부가 노랗다</title>
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
							$('.disease-img').css('display', 'none');
							
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
								<label><span>구토나 설사가 나온다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>식욕이나 기운이 없어진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>경련 또는 근력이 떨어져 비틀거린다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>의식이 혼탁해지거나 혼수상태가 발생한다</span></label>
							</dd>
						</dl></li>		
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML ="빈혈(반려견)";
							document.getElementById("prID").innerHTML ="적혈구의 수치가 줄어드는 빈혈은 용혈성 빈혈, 면역매개성 빈혈, 철결핍성 빈혈이 있으며  혈액검사를 통해 확인 가능합니다. 약물치료, 처방식, 수혈 등과 같은 치료를 필요로 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/skin/skin_1.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>				
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>쉽게 피곤해진다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>식욕이 없어진다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>운동을 싫어하게 된다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>안구 점막이나 잇몸 색이 살짝 하애진다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>소변 색이 옅어지거나 간혹 피가 섞인 듯 적갈색이 된다</span></label>
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