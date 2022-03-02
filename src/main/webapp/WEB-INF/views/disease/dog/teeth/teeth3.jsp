<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이가 갈색이나 검게 변색되었다</title>
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
					document.getElementById("titleID").innerHTML ="애나멜질 형성부전";
					document.getElementById("prID").innerHTML ="이빨 표면의 애나멜질이 충분히 발달되지 않아서 이빨이 보호받지 못하고 부러지기 쉽거나 음식물이 이빨을 자극하는 등의 개에게는 비교적 흔히 보이는 질병이다. 치료방법으로는 이빨 표면을 매끄럽게 하고 수복재로 수복한다. 표면 특수 코팅으로 보호하기도 한다.";
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
								<label><span>이빨이 쉽게 부러진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>치구나 치석이 쉽게 낀다</span></label>
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