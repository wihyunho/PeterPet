<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재채기</title>
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
					document.getElementById("titleID").innerHTML ="코암";
					document.getElementById("prID").innerHTML ="재채기, 코막힘 증상이 있습니다. 한쪽 코에서만 콧물이 나오는 경우는 많지만, 쾨가 나오는 경우는 많지 않습니다. 고양이가 그루밍을 하거나 사료를 먹을 때 코에서 소리가 나거나 호흡할 때 힘이 들어가기도 하며, 안면이 변형됩니다. 치료방법으로는 항암치료를 하지만 치료의 예후는 좋지 않습니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/act/act_1_1.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>코가 막힌다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>재채기를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="헤르페스바이러스 감염증";
					document.getElementById("prID").innerHTML ="바이러스 보균 고양이로 겉으로 보기에는 건강하지만 발병해서 재채기와 콧물 증상이 있는 고양이가 감염원입니다.고양이들은 서로 햝으면서 그루밍을 하기 때문에 헤르페스바이러스 감염증이 유발됩니다. 또는 사료나 물을 함께 먹는 경우에도 전파됩니다. 치료방법으로는 2차감염을 예방하기 위해 항생제를 투여합니다. 백신 접종으로 예방도 가능합니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/act/act_1_2.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>코가 막혀 입으로 숨을 쉰다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>콧물이 난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>만성비염과 축농증이 생긴다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="호모균증";
					document.getElementById("prID").innerHTML ="호모균증은 효모균인 크립토고쿠스 네오포르만스에 감염된 것으로 모든 연령의 고양이가 걸립니다. 장기간에 걸쳐 병이 진행되며, 국소적으로 비강 질환이 있는 고양이는 코 이외에는 건강해 보입니다.시간이 지나면 비강에 생긴 병변이 그 주위를 손상시키고, 코의 측면과 안와에도 영향을 주어 얼굴 자체가 변형됩니다. 치료방법으로는 향진균제의 투여도 선택할 수 있는 치료 방법중 하나입니다. 치료 후에도 재발 가능성이 있습니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/act/act_1_3.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label><span>코가 막힌다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>콧물이 난다</span></label>
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