<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>털이 빠진다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="쿠싱증후군";
					document.getElementById("prID").innerHTML ="쿠싱증후근은 공팥 위에 있는 부신이라는 기관이 호르몬을 분비하는데, 이 호르몬이 과다 분비되어 발생하는 질병입니다. 종양이나 종종 멍이드는 것도 관찰될 수 있으먀, 스테로이드 약물 복용으로도 발병할 수 있으며, 정확한 검사를 통해 수술이나 약물로 치료할 수 있습니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/skin/skin_3.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>			
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>A</b>증상
					</dt>
					<dd onclick="A();" class="name">
						<label><span>좌우대칭으로 털이 빠진다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>물을 많이 마시게 되고, 그로 인해 소변 횟수나 양이 증가한다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>식욕이 증가하여 평소보다 많이 먹는다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>털이 버석거리며 윤기를 잃는다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>복부가 늘어지고 다리 힘이 약해진다</span></label>
					</dd>
				</dl></li>
			<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="갑상선 기능저하증";
					document.getElementById("prID").innerHTML ="성장을 촉진시키거나 대사를 진행시키는 갑상선에서 분비되는 호르몬이 감소하는 질병이다. 치료방법으로는 갑상선 호르몬제를 투여해 호르몬의 밸런스를 맞춘다. 용량을 조절하면서 평생 계속 먹어야한다.";
					document.getElementById("imgId").src = "#";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>B</b>증상
					</dt>
					<dd onclick="B();" class="name">
						<label><span>좌우대칭으로 털이 빠진다</span></label>
					</dd>
					<dd onclick="B();" class="name">
						<label><span>기운이 없어진다</span></label>
					</dd>
					<dd onclick="B();" class="name">
						<label><span>꾸벅꾸벅 졸거나 추위를 타는 일이 잦아진다</span></label>
					</dd>
					<dd onclick="B();" class="name">
						<label><span>피부가 거칠어진다</span></label>
					</dd>
					<dd onclick="B();" class="name">
						<label><span>피모의 윤기를 잃고 탈모가 증가한다</span></label>
					</dd>
					<dd onclick="B();" class="name">
						<label><span>피부가 거뭇하게 두꺼워지고 상피병같은 피부병이 발생한다</span></label>
					</dd>
				</dl></li>
			<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="모낭충증";
					document.getElementById("prID").innerHTML ="원래 개의 모공에는 현미경으로만 확인할 수 있는 초소형 진드기인 모낭충이 상주하는 경우가 많은데, 이 진드기가 이상하게 번식해서 발생하는 것이다. 치료방법으로는 진드기를 구제하는 약은 다양하며 어느 것이든 장기간의 치료가 필요하다. 약용 샴푸를 사용하거나 털을 깍는 경우도 있다. 면역력을 높이는 대책이 필요하며, 식사나 보조제로 커버할 수 있는 부분도 있으므로 수의사의 지시에 따르도록 한다.";
					document.getElementById("imgId").src = "#";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>C</b>증상
					</dt>
					<dd onclick="C();" class="name">
						<label><span>부분적으로 털이 빠진다</span></label>
					</dd>
					<dd onclick="C();" class="name">
						<label><span>이상하게 털이 많이 빠진다</span></label>
					</dd>
					<dd onclick="C();" class="name">
						<label><span>가려움이나 발진증상이 나타난다</span></label>
					</dd>
					<dd onclick="C();" class="name">
						<label><span>화농, 출혈, 짓무름이 증상이 나타난다</span></label>
					</dd>
				</dl></li>
			<script type="text/javascript">
				function D() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="개선충증";
					document.getElementById("prID").innerHTML ="현미경으로만 보이는 초소형 옴벌레가 개의 피부에 구멍을 뚫고 기생하면서 일어납니다. 치료방법으로는 진드기 구제약을 투여합니다. 구제약이 진드기 알에는 효과가 없기 때문에 1주일 정도 간격을 두어 투여를 반복해야 합니다.";
					document.getElementById("imgId").src = "#";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>D</b>증상
					</dt>
					<dd onclick="D();" class="name">
						<label><span>부분적으로 털이 빠진다</span></label>
					</dd>
					<dd onclick="D();" class="name">
						<label><span>이상하게 털이 많이 빠진다</span></label>
					</dd>
					<dd onclick="D();" class="name">
						<label><span>팔꿈치, 발꿈치, 귀 등에 탈모나 염증이 발생해 피부가 딱딱해지고 비듬이 생긴다</span></label>
					</dd>
					<dd onclick="D();" class="name">
						<label><span>매우 가려워하고 밤낮없이 긁어댄다</span></label>
					</dd>
					<dd onclick="D();" class="name">
						<label><span>부스럼이 생기고 그 밑에서 옴벌레가 번식한다</span></label>
					</dd>
					<dd onclick="D();" class="name">
						<label><span>온 몸에 피부염이 번진다</span></label>
					</dd>
				</dl></li>
			<script type="text/javascript">
				function E() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="피부 질환";
					document.getElementById("prID").innerHTML ="반려견의 피부질환은 원인이 매우 다양하고 치료가 어려운 경우가 많습니다. 따라서 발병 초기에변화를 인지하여 대처하는 게 매우 중요합니다. 대표적인 질환으로는 음식물과 환경으로 인한 '알레르기', 습기로 인한 '곰팡이균', 면역력 저하로 인한 '모낭염', 물집이 차는 '농가진', 기생충으로 인한 '개선충', 벌레로 인한 '습진성 피부염' 등이이 있으며, 발병시 꾸준한 연고 치료를 하셔야 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/skin/skin_5.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>					
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>E</b>증상
					</dt>
					<dd onclick="E();" class="name">
						<label><span>부분적으로 털이 빠진다</span></label>
					</dd>
					<dd onclick="E();" class="name">
						<label><span>이상하게 털이 많이 빠진다</span></label>
					</dd>
					<dd onclick="E();" class="name">
						<label><span>피부를 자주 핥거나 물기 때문에 상처 입어 문드러진다.</span></label>
					</dd>
					<dd onclick="E();" class="name">
						<label><span>피부가 건조해지고, 거뭇해진다</span></label>
					</dd>
					<dd onclick="E();" class="name">
						<label><span>외이염, 결막염, 비염을 동반한다</span></label>
					</dd>
				</dl></li>
			<script type="text/javascript">
				function F() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="농피증";
					document.getElementById("prID").innerHTML ="감염에 의한 피부병 중에서 가장 많이 발생하는 질환이다. 평소라면 몸에 달라붙어도 문제가 없는 세균이, 개의 저항력이나 면역력이 떨어져 있는 경우 증식해서 피부를 화농화한다. 치료방법으로는 증상을 보면서 항생물질이나 항균제를 투여하고 세균의 증식을 억제한다. 만성화된 경우에는 약의 투여가 장기화되기도 한다.";
					document.getElementById("imgId").src = "#";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>F</b>증상
					</dt>
					<dd onclick="F();" class="name">
						<label><span>피부가 빨갛다</span></label>
					</dd>
					<dd onclick="F();" class="name">
						<label><span>피부 표면에 우둘투둘한 부스럼이 생긴다</span></label>
					</dd>
					<dd onclick="F();" class="name">
						<label><span>피부에 액체나 고름이 고인 수포나 농포가 생긴다</span></label>
					</dd>
					<dd onclick="F();" class="name">
						<label><span>심한 가려움을 동반한다</span></label>
					</dd>
					<dd onclick="F();" class="name">
						<label><span>심한 통증과 함께 열이 난다</span></label>
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
</body>
</html>