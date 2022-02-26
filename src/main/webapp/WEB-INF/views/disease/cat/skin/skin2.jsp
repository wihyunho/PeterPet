<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>귀를 자주 긁는다</title>
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
							document.getElementById("titleID").innerHTML = "중이염 (반려묘)";
							document.getElementById("prID").innerHTML = "중이염은 세균 감염으로 방생하며,머리를 흔들면서 귓구멍에 달도록 발끝을 넣어 긁고, 고개가 한쪽으로 기울어지는 사경이 나타납니다.  치료방법으로는 항생제를 투여합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_2_1.jpg";

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
								<label> <span>고개가 한쪽으로 기울어진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>귀를 자주 긁는다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "고막 이상";
							document.getElementById("prID").innerHTML = "정상 고막은 투명한 푸른 막처럼 보입니다. 그러나 질병이 있는 고막은 투명하지도 팽팽하지도 않으며, 물결모양으로 보이기도 합니다. 고막이 찢어지면 액체가 나오는 경우가 있는데 이 떄 고양이는 자주 고개를 흔듭니다. 고막이 만성적으로 자극을 받으면 차츰 변성됩니다. 치료방법으로는 항생제를 투여합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_2_2.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label> <span>고개를 자주 흔든다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>귀를 자주 긁는다</span></label>
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