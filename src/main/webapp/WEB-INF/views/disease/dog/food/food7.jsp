<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>먹는 양, 횟수가 증가한다</title>
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
							
							document.getElementById("titleID").innerHTML = "췌외분비부전";
							document.getElementById("prID").innerHTML = "췌장에서 소화효소가 충분히 분비되지 않기 때문에 식욕이 왕성한데도 소화불량을 일으키고, 영양을 흡수하지 못해 체중이 감소하는 질병이다. 치료방법으로는 소화효소를 투여해서 보급하고 비타민 보충제 등으로 영양의 밸런스를 맞춰준다. 항생물질이나 스테로이드제를 처방하는 경우도 있다. 식사는 저지방으로 소화하기 쉬운 것을 조금씩 급여하도록 한다. 개가 과식을 하지 않도록 신경 쓴다.";
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
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>먹는 양은 늘었는데도 마른다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>설사나 무른 변이 만성적으로 계속된다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>변에 벌레가 있다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>악취가 나는 지방성 변을 다량으로 본다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "자궁 축농증";
							document.getElementById("prID").innerHTML = "자궁 축농증은 세균 감염으로 자궁에 농이 차는 질환으로자궁과 난소를 제거하는 수술로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food7_B.jpg";
		
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
								<label><span>암컷이며 호흡이 거칠고 구토와 배가 부어오르는 등의 증상을 동반한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>식욕이 없다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>물을 많이 마신다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>열이 난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>우울증을 보인다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>소변량이 증가한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>음부에서 불쾌한 냄새가 나는 고름이나 혈농 등의 분비물이 나온다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "당뇨병";
							document.getElementById("prID").innerHTML = "당뇨병은 췌장에서 인슐린이 제대로 분비되지 않아 발생하는 질병으로, 과식 또는 유전적인 요인과 노화로 인해 발생합니다. 치료방법은 사람과 매우 유사하게 식단관리, 인슐린 치료와 매일 정해진 시간대 운동, 정기적 검사를 통한 보호자의 꾸준한 혈당관리로 개선될 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food7_C.jpg";
		
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
								<label><span>식욕이 없다, 말랐다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>소변량이 증가한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "요붕증";
							document.getElementById("prID").innerHTML = "소변의 과다배출을 막는 호르몬에 이상이 생기거나 신장에 문제가 있기 때문에 물을 많이 먹고 소변을 많이 보는 다음다뇨가 되는 질병이다. 치료방법은 약물로 치료할 수 있다. 치료를 계속하면 탈수증상을 일으키지 않도록 음수량을 조절해야 한다.";
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
								<b>D</b>증상
							</dt>
							<dd onclick="D();" class="name">
								<label><span>식욕이 없다, 말랐다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "만성 신부전";
							document.getElementById("prID").innerHTML = "급성 신부전과 마찬가지로 신장의 기능을 75% 이상 상실한 상태이다. 수축되어 딱딱해져 있는 경우가 많고, 나이를 먹은 개일수록 발생률이 높아지고 안타깝게도 기능회복은 기대할 수 없다. 치료방법은 일단 나빠진 신장의 기능은 다시 회복되지 않고 계속 악화되기 때문에 치료는 최대한 증상을 완화시키는 것이 목적이다. 증상에 맞게 식사요법이나 약물 투여, 수액 등의 치료가 진행된다. 인공투석이나 신장이식은 특별한 시설에서만 가능하고 아직 일반적이지 않다. 장관 내에서 독소를 흡수하는 작용을 하는 카본계 내복약이나 신장병 전용 치료식을 주거나, 단백질이나 인, 나트륨을 삼간 식사요법을 통해 진행을 늦추고 좋은 상태를 유지시키는 예도 적지 않다.";
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
								<b>E</b>증상
							</dt>
							<dd onclick="E();" class="name">
								<label><span>식욕이 없다, 말랐다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>색이 옅은 소변을 다량으로 본다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>수분을 보충하기 위해서 다량의 물을 마신다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>식욕이 저하되고 모질이 나빠지며 마른다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>구토를 하거나 빈혈을 일으킨다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>나른해 보이고 기운이 없어보인다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>경련이나 혼수상태 증상이 나타난다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function F() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "상피소체 기능항진증.저하증";
							document.getElementById("prID").innerHTML = "상피소체 호르몬의 일종이 과다하게 분비되거나 부족하면 칼슘 대사에 장애가 생긴다. 분비량이 증가하는 것을 상피소체 항진증, 감소하는 것을 상피소체 저하증이라고 한다. 치료방법으로는 항진증은 상피소체를 수술로 절제한다. 원인에 따라서는 칼슘제의 투여나 식사요법을 실시한다. 저하증의 치료에는 칼슘제나 비타민 D를 투여한다.";
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
								<b>F</b>증상
							</dt>
							<dd onclick="F();" class="name">
								<label><span>식욕이 없다, 말랐다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>다음다뇨 증상이 나타난다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>불안, 초조해지고 신경질적이 된다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>몸의 근육이 뻣뻣하거나 걷는 모습이 이상해지거나 경련을 일으킨다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>뼈가 약해져 쉽게 골절된다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function G() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "쿠싱증후군";
							document.getElementById("prID").innerHTML = "쿠싱증후근은 공팥 위에 있는 부신이라는 기관이 호르몬을 분비하는데, 이 호르몬이 과다 분비되어 발생하는 질병입니다. 종양이나 종종 멍이드는 것도 관찰될 수 있으먀, 스테로이드 약물 복용으로도 발병할 수 있으며, 정확한 검사를 통해 수술이나 약물로 치료할 수 있습니다. ";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food7_G.jpg";
		
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
								<label><span>털이 빠진다, 배가 부풀어 있다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>피부에 멍이 든다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>잠을 잘 자지 못하고 불안해 한다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>목 주변 및 복부에 살이 찐다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>소변량이 증가한다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>탈모가 양쪽으로 일어난다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>숨을 자주 헐떡인다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>식욕이 증가한다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>목이 말라서 물을 많이 마신다, 소변 횟수나 양이 증가한다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>털이 버석거리며 윤기를 잃는다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>복부가 늘어지고 다리 힘이 약해진다</span></label>
							</dd>
						</dl></li>
				</ul>
				<div class="disease-container" style="display: none;">
					<div class="disease-block">
						<span id="titleID" class="title">test</span>
						<p id="prID" class="pr">test2</p>
						<div class="disease-img">
							<img id="imgId" src="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>