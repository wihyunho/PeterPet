<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호흡을 괴로워한다</title>
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
							
							document.getElementById("titleID").innerHTML = "열사병";
							document.getElementById("prID").innerHTML = "열사병은 반려견이 땀으로 체온을 조절하기 어려운 신체구조를 갖고 있기 때문에 생깁니다. 뜨겁고 환기가잘 안되는 공간에서 걸릴 확률이 높으며 몸의 온도를 내리기 위해 물을 뿌려주거나 적신 타월을 감싸주고 물을 최대한 많이 공급해 주어야 증상을 완화시킬 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe3_A.jpg";
		
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
								<label><span>호흡이 이상하게 빠르다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>콧구멍이 실룩거린다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>고열로 인해 몸이 뜨겁다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>심박 수가 증가한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>더운 여름에 밀폐된 방이나 외부에 있어서 축 늘어져 있다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "종양";
							document.getElementById("prID").innerHTML = "반려견에게 발병하는 주요 종양은, 가장 흔희 생기는 유선종양, 말랑말랑한 혹 덩어리가 생기는 지방종, 피부종양인 비만세포종, 혈관 내비 세포의 악성 종양인 혈관 육종, 림프절이 확장하는 림프종 등 그 종류가 매우 다양합니다. 종양의 종류와 시기에 따라 수술과 꾸준한 항암치료로 상태가 호전될 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe3_B.jpg";
		
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
								<label><span>호흡이 이상하게 빠르다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>콧구멍이 실룩거린다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>누렇고 탁한 콧물이 난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>식욕이 감소한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>숨소리에 큰 잡음이 들린다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "기흉";
							document.getElementById("prID").innerHTML = "상처 등으로 폐나 흉벽에 구멍이 뚫려 흉강에 공기가 차는 질환이다. 그 결과 폐가 위축되면서 폐활량이 저하된다. 심해지면 생명에 지장을 주기도 한다. 치료방법으로 흉강에 쌓인 공기를 빼거나 산소를 흡입시킨다. 중증인 경우에는 개흉수술이 필요한 경우도 있다.";
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
								<label><span>호흡이 이상하게 빠르다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>콧구멍이 실룩거린다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>배로 숨을 쉬고 눕기를 싫어한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>운동도 싫어하고 앞다리를 버티고 움직이는 것을 피한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>혀나 입술이 보라색이 되는 청색증 증상이 나타난다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>주저 앉는다, 턱을 들고 숨쉰다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>눕지 못한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "폐렴";
							document.getElementById("prID").innerHTML = "폐 조직에 염증이 일어나는 것이 폐렴이다. 기관지염이나 인두염이 병발해 있는 경우도 많고, 심한 발열이나 호흡곤란으로 쓰러지거나, 간혹 사망에 이르기도 하는 중대한 질병이다. 치료방법으로는 항생물질 외에 진핵제, 거담제, 소염제 등을 투여한다. 중증인 경우에는 산소흡입이 필요하다. 가정에서는 안정을 유지시키고, 공기의 환기나 온도에 신경쓴다.";
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
								<label><span>호흡이 이상하게 빠르다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>콧구멍이 실룩거린다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>기침이 자주 나온다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>하악거리는 괴로운 숨소리를 낸다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>가슴에 귀를 대면 힘들게 쌔액쌔액거리는 건조한 소리가 들린다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>고열이 나고, 호흡이 얕고 빠르게 진행되어 호흡곤란 증상이 보인다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "기관지염";
							document.getElementById("prID").innerHTML = "기관지염은 바이러스나 세균, 진균 등에 감염되어 발생하는 질병으로 항생제와 흡입요법으로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe3_E.jpg";
		
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
								<label><span>호흡이 이상하게 빠르다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>콧구멍이 실룩거린다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>건조한 기침이 나온다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>뭔가가 목을 막고 있거나 걸려 있어 토할 듯한 모습을 보인다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>콧물이나 열이 난다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>식욕이 감퇴한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>기침이 심해지면 거품상태의 점액을 구토한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>입을 벌리고 뻐끔거린다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>쌕쌕 소리가 난다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function F() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "폐수종";
							document.getElementById("prID").innerHTML = "폐수종은 폐 속에 액체가 차서 공기가 제대로 순환하지 못해 호흡 곤란을 유발하는 질병으로, 폐렴이나 심장질환 등이 원인이며, 세균 감염이나 극도의 스트레스, 급격한 운동 등으로 발병합니다. 뚜렷한 예방법이 없기 때문에 주기적인 검사를 통해 예방하셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe3_F.jpg";
		
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
								<label><span>호흡이 이상하게 빠르다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>콧구멍이 실룩거린다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>기침이 밤새 멈추지 않는다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>물과 같은 콧물이 나온다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>콧물에 피가 섞여 나온다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>혀나 잇몸이 보라색이 되는 청색증이 나타난다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>목에 정맥에 튀어나와 보인다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>선 채로 있거나 계속 앉은 자세로 눕기를 싫어한다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>입을 벌리고 뻐끔거린다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>주저앉는다, 턱을 들고 숨쉰다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function G() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "식도 내 이물";
							document.getElementById("prID").innerHTML = "잘못해서 이물질을 삼켜 식도가 막힌 상태이다. 때로는 완전히 막혀서 음식물을 위로 보낼 수 없게 되는 경우도 있다. 치료방법으로는 이물질을 제거한다. 내시경을 삽입해 끄집어낸다. 식도절개는 가슴을 개복해야하는 힘든 수술이므로 이물질을 위 속으로 밀어 넣을 수 있다면 위를 절개해서 꺼내는 방법을 선택한다. 특히 새끼 때에는 급여하는 내용물에 신경 써야 한다.";
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
								<b>G</b>증상
							</dt>
							<dd onclick="G();" class="name">
								<label><span>입을 벌리고 뻐끔거린다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>기운이 없어진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function H() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "횡격막 헤르니아";
							document.getElementById("prID").innerHTML = "횡경막은 흉강과 복강의 경계에 있는 근육질의 막으로, 호흡운동에 중요한 작용을 한다. 사고 등으로 횡격막이 눌리면서 구멍이 뚫려 장기가 가슴 안으로 쏟아지는 질환이 횡격막 헤르니아이다. 치료방법으로 증상이 심한 경우에는 신속하게 수술하여 파열부를 개복해야 한다. 개복하지 않는 경우에도 최종적으로는 수술로 치료하는 것이 일반적이다.";
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
								<b>H</b>증상
							</dt>
							<dd onclick="H();" class="name">
								<label><span>주저앉는다, 턱을 들고 숨쉰다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>눕지 못한다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>운동을 싫어하거나 호흡이 거칠다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>호흡곤란이 오고 쇼크상태에 빠진다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>새끼 때 구토나, 설사, 기침, 빠른 호흡 증상이 나타난다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function I() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "심근증";
							document.getElementById("prID").innerHTML = "심장 근육이 정상적으로 작용하지 않게 되어 발생하는 질병이다. 심근이 얇아지고 탄력이 없어지는 확장형, 심근이 비대한 비대형이 있으며 개에게는 확장형이 대부분을 차지한다. 치료방법으로 혈관확장제나 이뇨제 등으로 질병을 완하시키는 치료를 한다. 내복약은 장기적으로 복용해야 하는데 부작용을 걱정할 필요는 없다. 식이요법을 통해 질병의 잔행을 억제시킨다.";
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
								<b>I</b>증상
							</dt>
							<dd onclick="I();" class="name">
								<label><span>주저앉는다, 턱을 들고 숨쉰다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>눕지 못한다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>배에 복수가 차서 부풀어 오른다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>맥박이 흐트러지거나 사지의 부종 등 증상이 나타난다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function J() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "기관허탈";
							document.getElementById("prID").innerHTML = "4단계로 나뉘는 기관 허탈은 기관의 원형 구조가 편평해지는 것으로  기관에서 가슴으로 들어가는 입구 부분과 기관지 부분이 편평해지는 경향이 높습니다.  편평해져 공기의 흐름이 줄어들면 산소가 충분히 공급되지 못해 쇼크사를 일으킬 수 있는 무서운 질병입니다. 비만인 경우 노령인 경우 발병할 확률이 높기 때문에 주의하셔야 합니다. 약물치료, 기관 보철물을 넣는 수술을 통해 치료 가능합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe3_J.jpg";
		
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
								<label><span>거위 울음처럼 뻐억뻐억 소리가 들린다</span></label>
							</dd>
							<dd onclick="J();" class="name">
								<label><span>혀 또는 잇몸이 퍼렇게 변한다</span></label>
							</dd>
							<dd onclick="J();" class="name">
								<label><span>숨소리에 쌕쌕거리는 소리가 들린다</span></label>
							</dd>
							<dd onclick="J();" class="name">
								<label><span>숨을 쉬기 힘들어한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function K() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "연구개과장증";
							document.getElementById("prID").innerHTML = "퍼그나 시츄 등 코가 납작한 단두종에서 흔히 나타납니다.  목의 인후두부에 있는 덮개가 보통의 강아지보다 늘어져서 기도로 공기를 보내는 것을 방해하는 것이 원인입니다. 일상생활에 지장을 주지 않으면 크게 걱정하지 않아도 되지만 혀가 보라색이 되고 호흡곤란이 반복적으로 일어나는 경우 절제 수술을 필요로 합니다. 기침을 동반한다면 심장 질환일 수 있으니 정확한 검진을 받아보셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe3_K.jpg";
		
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
								<label><span>거위 울음처럼 뻐억뻐억 소리가 들린다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>항상 코를 곤다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>입을 크게 벌려 호흡한다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>호흡곤란을 일으킨다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>무호흡 증상이 나타난다</span></label>
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