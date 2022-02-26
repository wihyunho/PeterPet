<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구토</title>
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
							document.getElementById("titleID").innerHTML = "급성위염(반려묘)";
							document.getElementById("prID").innerHTML = "급성위염은 갑자기 구토를 일으키며, 여러 차례 심하게 나타난다. 상한 읍식을 섭취했을 경우 나타나며 치료방법으로는 음식출 섭취를 제한하고, 탈수 증상이 있을 경우 수액을 공급합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_1.jpg";

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
								<label><span>구토를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "만성위염(반려묘)";
							document.getElementById("prID").innerHTML = "만성위염은 원인은 시중에서 판매하는 고양이사료의 첨가물 성분, 화화적 화합물, 약물, 입을 통해 들어갈 수 있는 모든 물질에 의해 나타나며, 치료방법으로는 수의사 처방대로 사료를 변경 급여하여 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_2.jpg";

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
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>식욕이 불안정하다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "위궤양";
							document.getElementById("prID").innerHTML = "질병 치료를 위해 내복약을 장기간 복용하고 있거나, 만성위염 또는 신부전이 있는 경우에 위 점막을 손상시켜 궤양을 일으키고 출혈이 나타납니다. 치료방법으로는 출혈을 동반하기 때문에 빈혈 검사와 위산 분비를 억제하고 위점막의 회복을 촉진하는 약이나 위 점막을 보호하는 약 등을 투여한다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_3.jpg";

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
								<label><span>새빨간 피를 토해낸다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>피가 섞인 노란색 위액을 토해낸다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>몸을 웅크린 자세를 취한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "이물질 섭취";
							document.getElementById("prID").innerHTML = "고양이 장난감이나 굴러다니는 단추 같은 삼키기 쉬운 이물질을 섭취할 때 구토가 일어납니다. 치료방법으로는 이물질이 구토나 변으로 자연스럽게 배설되거나 배설되지 않을 경우 외과수술로 절제합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_4.jpg";

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
								<label><span>간헐적인 구토를 한다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>침이 많이 나온다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>입맛을 다신다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>음식물을 삼키는 행동을 반복한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "우문협착";
							document.getElementById("prID").innerHTML = "유문협착은 우의 출구인 유문 부분에 협착이 있거나 유문이 정상적으로 열리지 않는 유문기능부전이면, 식도로 들어간 음식물이 위 속으로 들어가고 그 내용물이 위에서 다시 십이지장으로 흘러 나가는 과정이 원활하게 이루워지지 않습니다. 치료방법으로는 외과수술을 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_5.jpg";

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
								<label><span>만성구토가 있다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>구토를 심하게 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function F() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "위종양";
							document.getElementById("prID").innerHTML = "위종양은 위에 악성종양이 있는 질병으로 림프육종이 원인입니다. 치료방법으로는 외과수술 또는 화학요법 등을 진행합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_6.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>F</b>증상
							</dt>
							<dd onclick="F();" class="name">
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>체중이 감소 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function G() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "염증성 위염";
							document.getElementById("prID").innerHTML = "염증성 세포인 림프구, 호산구, 산성 색소에 잘 물드는 거칠고 큰 과립을 많이 가진 백혈구, 호중구 등이 소화관 점막에 침투하여 생기는 장염입니다. 치료방법으로는 내과적인 약물 투약 후 증상이 개선되면 수의사의 지도 아래 식이요법을 진행합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_7.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>G</b>증상
							</dt>
							<dd onclick="G();" class="name">
								<label><span>만성구토가 있다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>자주 토를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function H() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "범백혈구 감소증";
							document.getElementById("prID").innerHTML = "범백혈구 감소증은 고양이의 파보바이러스 입니다. 파보바이러스는 고양이의 대변과 소변으로 다량 배설되며, 바이러스가 들어 있는 변을 입으로 섭취했을 때 감염되는 것으로 알려져 있습니다. 치료방법으로는 수액으로 체액과 전해질을 보정하고 2차 감염을 예방합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_8.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>H</b>증상
							</dt>
							<dd onclick="H();" class="name">
								<label><span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>자주 토를 한다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>발열증상이 나타난다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>설사를 시작한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function I() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "변비";
							document.getElementById("prID").innerHTML = "사료의 내용물, 고양이 화장실의 오염, 고양이 화장실의 부적절한 위치 이외에 신경장애 같은 병적인 원인 등이 있습니다. 치료방법으로는 관장을 하거나 사료를 변경 급여하여 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_9.jpg";
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>I</b>증상
							</dt>
							<dd onclick="I();" class="name">
								<label><span>배변을 보며 구토를 한다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>먹고 토하는 것을 반복한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function J() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "지방간증";
							document.getElementById("prID").innerHTML = "지질대사의 이상으로 간세포에 중성지방이 쌀입니다. 비만 고양이, 비만이었던 고양이, 그리고 영양부족으로 야윈 고양이도 걸릴 수도 있습니다. 치료방법으로는 간 기능을 회복시키는 약제를 투여합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_10.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>J</b>증상
							</dt>
							<dd onclick="J();" class="name">
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="J();" class="name">
								<label><span>식욕이 불안정하다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function K() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "천식";
							document.getElementById("prID").innerHTML = "원인으로는 담배, 스프레이. 먼지, 식사 등으로 발생합니다. 치료방법으로는 내과 치료를 하며, 약으로 관리 가능합니다. 그리고 고양이가 있는 곳에서 담배를 피우지 않고, 공기정화를 자주 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/stom/stom_1_11.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>K</b>증상
							</dt>
							<dd onclick="K();" class="name">
								<label><span>기침을 한다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>거품 같은 액체를 토한다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>털이 섞인 위액을 토한다</span></label>
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