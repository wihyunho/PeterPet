<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코를 곤다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="연구개과장증";
					document.getElementById("prID").innerHTML ="퍼그나 시츄 등 코가 납작한 단두종에서 흔히 나타납니다.  목의 인후두부에 있는 덮개가 보통의 강아지보다 늘어져서 기도로 공기를 보내는 것을 방해하는 것이 원인입니다. 일상생활에 지장을 주지 않으면 크게 걱정하지 않아도 되지만 혀가 보라색이 되고 호흡곤란이 반복적으로 일어나는 경우 절제 수술을 필요로 합니다. 기침을 동반한다면 심장 질환일 수 있으니 정확한 검진을 받아보셔야 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/nose/nose4_A.jpg";
					
					
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
							<span>호흡곤란을 동반한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>숨 쉬기를 힘들어한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>호흡이 빨라지고 쌔액쌔액거리며 괴로워 보인다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>무호흡 증상이 나타난다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="종양";
					document.getElementById("prID").innerHTML ="반려견에게 발병하는 주요 종양은, 가장 흔희 생기는 유선종양, 말랑말랑한 혹 덩어리가 생기는 지방종, 피부종양인 비만세포종, 혈관 내비 세포의 악성 종양인 혈관 육종, 림프절이 확장하는 림프종 등 그 종류가 매우 다양합니다. 종양의 종류와 시기에 따라 수술과 꾸준한 항암치료로 상태가 호전될 수 있습니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/nose/nose4_B.jpg";
					
					
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
							<span>호흡곤란을 동반한다</span>
						</label>
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