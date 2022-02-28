<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>격심한 발정</title>
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
							document.getElementById("titleID").innerHTML = "자궁축농증";
							document.getElementById("prID").innerHTML = "자궁이 대장균, 연쇄상구균, 포도상구균 같은 세균에 감염되면 자궁축농증이 됩니다. 자궁내막염이 지속되어 축농증으로 발전할 수 있습니다. 치료방법으로는 난소와 자궁에 질환이 있는 경우에는 수술로 난소와 자궁을 적출해야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/gen/gen_1_1.jpg";

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
								<label> <span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>음부에서 노란색을 띤 피가 섞인 분비물이 나온다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>임신한 것처럼 배가 볼록해진다</span></label>
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