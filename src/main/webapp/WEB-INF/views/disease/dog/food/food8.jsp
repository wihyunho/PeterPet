<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물을 마시는 양도 늘었다, 배가 부어있다</title>
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
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "당뇨병";
							document.getElementById("prID").innerHTML = "당뇨병은 췌장에서 인슐린이 제대로 분비되지 않아 발생하는 질병으로, 과식 또는 유전적인 요인과 노화로 인해 발생합니다. 치료방법은 사람과 매우 유사하게 식단관리, 인슐린 치료와 매일 정해진 시간대 운동, 정기적 검사를 통한 보호자의 꾸준한 혈당관리로 개선될 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food8_A.jpg";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>식욕이 증가한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>체중이 감소한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>소변량이 증가한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "쿠싱증후군";
							document.getElementById("prID").innerHTML = "쿠싱증후근은 공팥 위에 있는 부신이라는 기관이 호르몬을 분비하는데, 이 호르몬이 과다 분비되어 발생하는 질병입니다. 종양이나 종종 멍이드는 것도 관찰될 수 있으먀, 스테로이드 약물 복용으로도 발병할 수 있으며, 정확한 검사를 통해 수술이나 약물로 치료할 수 있습니다. ";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food8_B.jpg";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>탈모가 양쪽으로 일어난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>목 주변 및 복부에 살이 찐다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>소변량이 증가한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>피부에 멍이 든다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>잠을 잘 자지 못하고 불안해 한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>숨을 자주 헐떡인다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>식욕이 증가한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "요붕증";
							document.getElementById("prID").innerHTML = "소변의 과다배출을 막는 호르몬에 이상이 생기거나 신장에 문제가 있기 때문에 물을 많이 먹고 소변을 많이 보는 다음다뇨가 되는 질병이다. 치료방법은 약물로 치료할 수 있다. 치료를 계속하면 탈수증상을 일으키지 않도록 음수량을 조절해야 한다";
							document.getElementById("imgId").src = "#";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label><span>다음다뇨 증상이 보인다</span></label>
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