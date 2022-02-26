<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>걸음걸이 이상</title>
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
							document.getElementById("titleID").innerHTML = "폐암";
							document.getElementById("prID").innerHTML = "폐의 종양이 발가락으로 전이되어 발가락이 붓고, 발톱 주위에 염증이 생겨 통증 동반하는 병변입니다. ";
							document.getElementById("imgId").src = "resources/images/disease/cat/leg/leg_1_1.jpg";

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
								<label> <span>절뚝거리며 걷는다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "골육종";
							document.getElementById("prID").innerHTML = "뒷다리와 두개에 잘 생기는 육종입니다. 특히 노령 고양이가 잘 걸린다는 보고가 있습니다. 만성적으로 절룩거리고, 갑자기 증세가 악화되기도 하며, 종양 부분이 골절되기도 합니다. 치료방법으로는 외과수술을 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/leg/leg_1_2.jpg";

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
								<label><span>만성적으로 다리를 절룩거린다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "비대성 골증";
							document.getElementById("prID").innerHTML = "다리에 살이 쪄서 두툼해지고 붓습니다. 골막의 증식이 나타나 다리가 살이 찌고 두툼해집니다. 치료방법으로는 외과수술을 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/leg/leg_1_3.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label> <span>걸음걸이가 이상하다</span></label>
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