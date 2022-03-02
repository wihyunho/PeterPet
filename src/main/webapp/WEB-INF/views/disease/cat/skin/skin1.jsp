<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>몸의 응어리</title>
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
					document.getElementById("titleID").innerHTML ="유선염";
					document.getElementById("prID").innerHTML ="암고양이의 유선염은 일반적으로 임신 중과 수유 중에 생깁니다. 또한 성 성숙기에도 나타나는 경우가 있습니다. 유두로 포도상구균, 연쇄상구균, 대장균이 침입하여 세균에 감염된 유선이 비정상적으로 비대해지고 빨개지고 열이 납니다. 치료방법으로는 세균감염부터 치료하고 항생제를 투여합니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_1_1.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label> <span>유선이 비대해진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>열이 난다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="지방종";
					document.getElementById("prID").innerHTML ="양성지방종양은 모든 연령에서 나타납니다. 대부분의 종양은 고립성이지만, 다발성도 보입니다. 체간의 흉부나 복부, 사지에 생깁니다. 치료방법으로는 외과수술로 절제합니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_1_.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label> <span>몸의 응어리가 만져진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="유선종양";
					document.getElementById("prID").innerHTML ="유선종양은 대부분 암고양이에게 나타납니다. 중성화 수술을 하지 않은 암고양이가 중성화 수술을 한 고양이에 비해 유선종양 발생률이 7~8배 높다는 자료가 있습니다. 고려 고양이는 유선종양의 발생률이 높아지며, 75~80%가 악성입니다. 치료방법으로는 종양 부위를 외과수술로 제거합니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_1_2.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label> <span>유두 부위를 핥는다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label> <span>몸의 응어리가 만져진다</span></label>
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