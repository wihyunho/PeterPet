<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>눈꺼풀 연축 증상</title>
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
							document.getElementById("titleID").innerHTML = "각막궤양";
							document.getElementById("prID").innerHTML = "각막이 손상된 것을 말합니다. 고양이는 빠른 속도로 움직이고, 점프도 많이 하기 때문에 각막에 쉽게 외상성 손상을 입을 수 있습니다. 안과 검진을 통해 손상 여부와 깊이, 범위를 확인할 수 있습니다. 넥칼라를 씌워야 하며 약물치료가 필요합니다. 심할 경우 천공이 발생할 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/eyes/eyes_2_1.jpg";

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
								<label><span>눈 주변을 자주 긁는다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>눈물이 흐른다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>눈을 자주 깜박인다</span></label>
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