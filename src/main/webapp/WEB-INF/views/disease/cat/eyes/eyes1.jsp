<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>눈꼽이 낀다</title>
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
					document.getElementById("titleID").innerHTML ="결막염";
					document.getElementById("prID").innerHTML ="원인은 바이러스성, 세균성, 클라미디아, 고양이들이 서로 싸워서 생긴 외상등로 추측됩니다. 눈곱이 색은 세균에 감염되었는지 아닌지를 판단하는 근거가 됩니다. 노란눈곱은 죽은 백혈구의 사체로 결막이 세균에 감염되었다는 증거입니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/eyes/eyes_1_1.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>노란눈곱이 낀다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>눈을 자주 깜박인다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="알레르기성 결막염";
					document.getElementById("prID").innerHTML ="결막에는 이물질에 반응하는 면역조직인 림프조직이 있습니다. 따라서 집 안의 먼지 같은 이물질이 달라붙으면 염증이 생깁니다. 이때 가려움증과 눈곱이 생기고 눈물도 흐릅니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/eyes/eyes_1_2.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>눈 주변을 자주 긁는다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>눈물이 흐른다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="신생기 안염";
					document.getElementById("prID").innerHTML ="2개월 미만의 아주 어린 길고양이들에게서 종종 나타납니다. 상부 호흡기 원인체의 감염 혹은 세균 감염 등 다양한 원인으로 인해 화농성 분비물이 눈 안에 가득 찹니다. 조기에 확인되는 경우 항생제 투여 등을 통해 치료받으면 정상적으로 호전되는 경우가 많습니다. 치료가 늦어지는 경우 안구의 영구적 손상을 입을 수 있기 때문에 빠른 치료가 중요합니다. 환경 온도나 적절한 영양 관리 등 기본적인 사양 관리가 중요합니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/eyes/eyes_1_3.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label><span>눈에 염증이 심하다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>눈에서 노란 염증 분비물이 나온다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>눈이 아예 달라붙어있다</span></label>
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