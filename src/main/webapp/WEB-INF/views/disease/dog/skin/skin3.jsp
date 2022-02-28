<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 냄새가 난다</title>
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
							document.getElementById("titleID").innerHTML ="농피증";
							document.getElementById("prID").innerHTML ="감염에 의한 피부병 중에서 가장 많이 발생하는 질환이다. 평소라면 몸에 달라붙어도 문제가 없는 세균이, 개의 저항력이나 면역력이 떨어져 있는 경우 증식해서 피부를 화농화한다. 치료방법으로는 증상을 보면서 항생물질이나 항균제를 투여하고 세균의 증식을 억제한다. 만성화된 경우에는 약의 투여가 장기화되기도 한다.";
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
								<label><span>피부가 빨갛다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>피부 표면에 우둘투둘한 부스럼이 생긴다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>피부에 액체나 고름이 고인 수포나 농포가 생긴다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>심한 가려움을 동반한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>심한 통증과 함께 열이 난다</span></label>
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