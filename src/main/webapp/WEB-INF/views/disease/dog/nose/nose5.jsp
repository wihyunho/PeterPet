<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입안이나 코에서 출혈</title>
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
							document.getElementById("titleID").innerHTML ="비염";
							document.getElementById("prID").innerHTML ="비염은 바이러스나 세균, 곰팡이의 일종인 진균에 감염되거나 알레르기가 원인이 되어 발병하는 질병으로 항생물질이나 소염제를 투여를 통해 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/nose/nose5_A.jpg";
							
							
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
									<span>콧물이 나온다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>재채기를 한다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>코가 부어오른다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>냄새를 맡는 등 먹으려고는 하는데 식욕이 없다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>코를 발로 문지르거나 바닥에 문지른다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>코위가 부풀어 오르거나 눈곱이 생긴다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>코피가 좀처럼 멈추지 않는다, 대량으로 난다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="부비강염";
							document.getElementById("prID").innerHTML ="비염이 장기화되어 발생하는 만성적인 질환입니다. 치료방법은 비염과 마찬가지로 소염제나 항생물질을 투여합니다. 심한 경우에는 튜브 등을 통해 부비강을 세정하는 방법도 있습니다.";
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
								<label>
									<span>코피가 좀처럼 멈추지 않는다, 대량으로 난다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>재채기와 콧물이 나온다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>탁한 고름 같은 콧물이 많아진다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>호흡이 힘들어 입을 벌리고 숨을 쉰다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>코 위가 부어 있거나 딱딱하게 부풀어 오른다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>열이 있다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="치주 질환";
							document.getElementById("prID").innerHTML ="초기에는 잇몸이 염증을 일으키는 잇몸염증이 되지만 점차 치주염으로 진행되고 이빨이 흔들리게 되어 빠지거나 고름이 고이며 원래 상태로는 돌아갈 수 없다. 치료방법은 입안을 청결하게 하고 치구를 제거한 후 필요에 따라 항생물질을 투여한다. 심할 경우에는 마취하에 치구나 치석을 제거하고 환부를 소독하여 항생물질이나 소독제를 투여한다";
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
								<label>
									<span>냄새를 맡는 등 먹으려고는 하는데 식욕이 없다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>이빨이 빨갛게 붓고 딱딱한 음식이 잇몸에 닿으면 아파한다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>치구나 치석이 쌓이고 음식을 잘 먹지 못한다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>구취가 심해진다</span>
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
							<img id="imgId" src="" alt="이미지" onerror="this.parentNode.style.display='none'">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>