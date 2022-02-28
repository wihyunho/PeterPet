<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>눈이 점점 커진다</title>
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
							document.getElementById("titleID").innerHTML = "녹내장";
							document.getElementById("prID").innerHTML = "눈 안에 안압이 상승하는 질환을 말합니다. 눈 안을 채우고 있는 안방수라는 액체의 순환에 문제가 발생하여 눈 안의 압력이 상승하면서 발생합니다. 안압을 측정하여 진단할 수 있고, 안구 내를 관찰하여 녹내장의 성상을 확인합니다. 초기에는 바로 안압을 떨어뜨리는 치료를 받아야 시신경 손상을 막을 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/eyes/eyes_3_1.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>눈이 충혈된다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>시력이 떨어진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>눈에 통증을 느낀다</span></label>
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