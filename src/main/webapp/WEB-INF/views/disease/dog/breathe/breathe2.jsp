<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨소리가 달라진다</title>
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
							
							document.getElementById("titleID").innerHTML = "기관지염";
							document.getElementById("prID").innerHTML = "기관지염은 바이러스나 세균, 진균 등에 감염되어 발생하는 질병으로 항생제와 흡입요법으로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe2_A.jpg";
		
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
								<label><span>운동을 싫어한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>거품이 섞인 침이 나온다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>호흡이 빨라진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>숨소리에 쌕쌕거리는 소리가 들린다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "만성 폐쇄성 폐질환";
							document.getElementById("prID").innerHTML = "만성 폐쇄성 폐질환은 담배연기, 미세먼지 알레르기 유발 물질 등 호흡기 손상을 유발하는 물질에 지속적으로노출되거나, 구강 질환으로 호흡기가 손상된 상태가 지속되면 발생하는 질환으로 검사를 통한 진단을 통해 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe2_B.jpg";
		
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
								<label><span>숨을 헐떡인다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>혀가 퍼렇게 변한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>마른 기침을 한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>쉽게 피곤해한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>운동을 싫어한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>숨소리에 새는 소리가 섞인다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "폐수종";
							document.getElementById("prID").innerHTML = "폐수종은 폐 속에 액체가 차서 공기가 제대로 순환하지 못해 호흡 곤란을 유발하는 질병으로, 폐렴이나 심장질환 등이 원인이며, 세균 감염이나 극도의 스트레스, 급격한 운동 등으로 발병합니다. 뚜렷한 예방법이 없기 때문에 주기적인 검사를 통해 예방하셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe2_C.jpg";
		
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
								<label><span>숨을 쉬기 힘들어한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>기침할 때 거품이나 피가 섞여 나온다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>비정상적으로 빠르게 숨을 쉰다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>마른 기침을 한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>혀가 퍼렇게 변한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>코에서 물과 같은 액체가 나온다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>호흡 시 쉭쉭거리는 소리가 난다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>입을 벌리고 숨을 쉰다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "연구개과장증";
							document.getElementById("prID").innerHTML = "퍼그나 시츄 등 코가 납작한 단두종에서 흔히 나타납니다.  목의 인후두부에 있는 덮개가 보통의 강아지보다 늘어져서 기도로 공기를 보내는 것을 방해하는 것이 원인입니다. 일상생활에 지장을 주지 않으면 크게 걱정하지 않아도 되지만 혀가 보라색이 되고 호흡곤란이 반복적으로 일어나는 경우 절제 수술을 필요로 합니다. 기침을 동반한다면 심장 질환일 수 있으니 정확한 검진을 받아보셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe2_D.jpg";
		
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
								<label><span>항상 코를 곤다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>입을 크게 벌려 호흡한다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>숨을 쌕쌕 몰아 쉰다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>호흡곤란을 일으킨다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "기관허탈";
							document.getElementById("prID").innerHTML = "4단계로 나뉘는 기관 허탈은 기관의 원형 구조가 편평해지는 것으로  기관에서 가슴으로 들어가는 입구 부분과 기관지 부분이 편평해지는 경향이 높습니다.  편평해져 공기의 흐름이 줄어들면 산소가 충분히 공급되지 못해 쇼크사를 일으킬 수 있는 무서운 질병입니다. 비만인 경우 노령인 경우 발병할 확률이 높기 때문에 주의하셔야 합니다. 약물치료, 기관 보철물을 넣는 수술을 통해 치료 가능합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe2_E.jpg";
		
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
								<label><span>숨소리에 쌕쌕거리는 소리가 들린다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>혀 또는 잇몸이 퍼렇게 변한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>거위 울음소리 같은 기침을 한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>숨을 쉬기 힘들어한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function F() {
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
								<b>F</b>증상
							</dt>
							<dd onclick="F();" class="name">
								<label><span>식욕부진을 일으킨다</span></label>
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