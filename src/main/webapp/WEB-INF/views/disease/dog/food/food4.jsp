<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식을 잘 씹지 못한다</title>
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
							document.getElementById("titleID").innerHTML ="구강종양";
							document.getElementById("prID").innerHTML ="구강종양은 특별한 원인이 없이 단지 노화가 되면서 발생하는 질병으로, 정기적인 검진이 꼭 합니다.강아지에게 자주 발생하는 종양 중에는 잇몸에 생기는 종양, 치은종이 대표적이며 스케일링과 발치 수술로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food4_A.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label>
									<span>잇몸, 입술 및 혀의 크기가 평소에 비해 커진다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>입에서 냄새가 난다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="식도질환";
							document.getElementById("prID").innerHTML ="식도증상이 심할 경우는 반려견이 구토 증상보이는데, 구토물은 확인해 보면 혈액이 희석이 안되었으므로 본래의 음식물 형태를 띱니다. 식도 조영이나 내시경으로 진단후 관찰 치료를 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food4_B.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label>
									<span>음식을 목구멍으로 넘기다가 다시 뱉어낸다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>헛구역질을 한다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>침을 많이 흘린다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="구강질환";
							document.getElementById("prID").innerHTML ="반려동물은 사람과 달리 매일 양치질을 안하므로 다양한 구강질환을 겪습니다. 이러한 치주질환은 잇몸에 염증이 생기는 '치은염', 치은염 치료를 제 대 안 할시 생기는 '치주염' 등이 대표적이며 스케링을 기본으로 진행하고 심한 경우는 발치 치료가 필요합니다. 치은염과 치주염이 심화될 경우 세균 감염에 의한 '치주농양'도 발병할 수 있으니 치과 진료가 반드시 필요합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food4_C.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label>
									<span>음식을 삼킬 때 과도하게 머리를 뒤로 젖힌다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>입으로 음식을 물었다가 뱉는 행동을 반복한다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>머리를 한쪽으로 기울여서 씹는다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>침을 많이 흘린다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>기침을 한다</span>
								</label>
							</dd>
						</dl>
					</li>
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