<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식사 직후에 심하게 자주 토한다</title>
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
							document.getElementById("titleID").innerHTML ="거대 식도증";
							document.getElementById("prID").innerHTML ="음식물을 위로 보내는 기관인 식도에 이상증상이 번지면서 음식물이 정체해 위로 넘어가지 못하고 토해내는 질병이다. 선천적인 경우와 후천적인 경우가 있다. 치료방법으로는 원인인 질병이 있는 경우에는 그것부터 치료한다. 완치가 어렵기 때문에 식사를 주는 방법에 대해 연구해서 토하는 것을 방지하도록 한다. 개를 세운 상태에서 개보다 높은 위치에서 유동식을 급여하고 가능한 식후에도 서 있는 상태를 유지시켜 음식물이 중력으로 식도를 이동하게 한다.";
							document.getElementById("imgId").src = "#";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>일반적인 구토와 다르게 토할 때 반사적으로 음식물이 튀어나가는 토출이라는 구토증상이 보인다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>호흡곤란이나 발열을 동반한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>점점 여위어간다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="식도 내 이물";
							document.getElementById("prID").innerHTML ="잘못해서 이물질을 삼켜 식도가 막힌 상태이다. 때로는 완전히 막혀서 음식물을 위로 보낼 수 없게 되는 경우도 있다. 치료방법으로는 이물질을 제거한다. 내시경을 삽입해 끄집어낸다. 식도절개는 가슴을 개복해야하는 힘든 수술이므로 이물질을 위 속으로 밀어 넣을 수 있다면 위를 절개해서 꺼내는 방법을 선택한다. 특히 새끼 때에는 급여하는 내용물에 신경 써야 한다.";
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
								<label><span>식욕부진을 일으킨다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>기운이 없어진다</span></label>
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