<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호흡곤란</title>
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
							document.getElementById("titleID").innerHTML = "기흉 (반려묘)";
							document.getElementById("prID").innerHTML = "흉강 안에 공기가 저류합니다. 교통사고나 낙하사고로 흉부에 생긴 외상이 원인입니다. 저단백혈증인 고양이는 가슴에 물이 차기도 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/breathe/breathe_1_1.jpg";

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
								<label><span>호흡곤란 증세를 보인다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>가슴에 물이 찬다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "천식";
							document.getElementById("prID").innerHTML = "천식은 먼지나 알 수 없는 특정 물질에 대한 알레르기로 일어납니다. 기관지가 수축되어 기도가 폐쇄됩니다. 이런 상황에서는 폐에서 공기를 배출하기 힘들어지며, 천식 발작이 일어나면 기도 안에서 점액 분비가 항진되어 점액이 기도를 막는데, 이 상태가 지속되면 호흡이 불가능하여 질식사합니다. 치료방법은 약으로 조절할 수 있으며, 완치를 기대하기는 어렵습니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/breathe/breathe_1_2.jpg";

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
								<label><span>기침을 한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>재채기를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "고양이 면역부전 바이러스감염증 (고양이에이즈)";
							document.getElementById("prID").innerHTML = "에이즈에 걸린 고양이의 빈혈은 중증이며, 특히 골수성빈혈은 골수 기능의 장애로 피가 만들어지지 않습니다. 전신증상이 악화된 빈혈은 치료 방법이 없습니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/breathe/breathe_1_3.jpg";

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
								<label> <span>체중이 감소한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label> <span>호흡기질환이 나타난다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label> <span>구내염이 생긴다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "비대성 심근병증(HCM)";
							document.getElementById("prID").innerHTML = "심장의 근육이 두꺼워지는 질환으로, 심장 근육이 두꺼워지면서 심장 내강이 좁아져 혈액 유입이나 심장 박출에 장애를 줍니다.  본 질환의 원인은 아직 명확하게 규명되어 있지는 않지만  메인쿤, 랙돌, 페르시안, 아메리카 숏헤어 등의 품종에 대해 유적적인 요인은 확인되어 있습니다. 약물치료 등을 통해 치료할 수 있으나 무증상을 보이다가 급격히 악화되는 경우가 많으니 건강검진을 통해 미연에 방지하는 것이 최선입니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/breathe/breathe_1_4.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>D</b>증상
							</dt>
							<dd onclick="D();" class="name">
								<label> <span>호흡곤란 증세를 보인다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>안정 시에도 빠른 호흡을 보인다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>개구 호흡 증세를 보인다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>청색증이 나타난다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>뒷다리 마비 증세를 보인다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>호흡곤란 증세를 보인다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>안정 시에도 빠른 호흡을 보인다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>개구 호흡 증세를 보인다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>청색증이 나타난다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>뒷다리 마비 증세를 보인다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "심장사상충";
							document.getElementById("prID").innerHTML = "강아지보다 감염 자체도 낮고 감염된 성충도 아주 적은 수만이 성충으로 성장하지만 폐동맥에서 심장사상충에 의해 생기는 면역반응이 심각하게 나타납니다. 이 증상은 매우 심각해서 감염된 성충 1~2마리만으로도 심한 호흡기 증상으로 죽을 수 있어  정기적인 심장사상충 예방이 필요합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/breathe/breathe_1_5.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>E</b>증상
							</dt>
							<dd onclick="E();" class="name">
								<label> <span>폐렴 증세가 보인다</span></label>
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