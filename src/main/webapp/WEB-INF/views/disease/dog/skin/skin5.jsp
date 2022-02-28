<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>붉은 기가 있다, 습진이 나타난다, 가려워한다, 비듬이 많다</title>
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
							document.getElementById("titleID").innerHTML ="피부 질환";
							document.getElementById("prID").innerHTML ="반려견의 피부질환은 원인이 매우 다양하고 치료가 어려운 경우가 많습니다. 따라서 발병 초기에변화를 인지하여 대처하는 게 매우 중요합니다. 대표적인 질환으로는 음식물과 환경으로 인한 '알레르기', 습기로 인한 '곰팡이균', 면역력 저하로 인한 '모낭염', 물집이 차는 '농가진', 기생충으로 인한 '개선충', 벌레로 인한 '습진성 피부염' 등이이 있으며, 발병시 꾸준한 연고 치료를 하셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/skin/skin_2.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>		
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>피부를 자주 핥거나 물기 때문에 상처 입어 문드러진다.</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>피부가 건조해지고, 거뭇해진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>외이염, 결막염, 비염을 동반한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
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
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>목이 말라서 물을 많이 마신다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>소변 횟수나 양이 증가한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>식욕이 증진해서 평소보다 많이 먹는다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>털이 버석거리며 윤기를 잃는다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>몸의 양쪽 좌우대칭으로 탈모된다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>복부가 늘어지고 다리 힘이 약해진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
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
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label><span>팔꿈치나 발꿈치, 귀 등에 탈모나 염증이 발생해 피부가 딱딱해진다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>매우 가려워하고 밤낮없이 긁어댄다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>부스럼이 생기고 그 밑에서 옴벌레가 번식한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>온 몸에 피부염이 번진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="자기면역에 의한 피부병";
							document.getElementById("prID").innerHTML ="사람이나 동물은 채내에 바이러스나 세균을 비롯한 유해한 물질이 침입했을 때 그것을 공격해서 배제하려는 면역이라는 기능을 갖고 있다. 이 면역기능에 이상이 발생하여 자신의 몸을 공격하는 경우가 있는데 피부에도 다양한 증상을 일으킨다. 치료방법으로는 몇 가지 약을 조합해서 투여한다. 일반적으로 피부병 치료에는 끈기가 필요한데, 자기면역성인 질병은 특히 장기요양을 해야 한다. 자기면역력의 밸런스를 조절하도록 피부를 청결하게 유지하고 최대한 자극을 받지 않기 위해서는 직사광선을 피하거나 기생충을 구제하는등의 주의가 필요하다";
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
								<label><span>입안이나 눈 주변이나 항문 주변등에 심한 가려움증을 동반한 염증이나 탈모가 일어난다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>손가락 사이나 발패드, 귀 ,코 등에 염증이 일어난다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>딱지나 탈모가 발생한다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>발열이나 탈수증상이 나타난다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>신장장애, 빈혈 등의 전신증상이 나타난다</span></label>
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