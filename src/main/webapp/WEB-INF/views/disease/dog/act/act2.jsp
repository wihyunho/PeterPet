<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>특정 부위를 계속해서 핥는다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="피부 질환";
					document.getElementById("prID").innerHTML ="반려견의 피부질환은 원인이 매우 다양하고 치료가 어려운 경우가 많습니다. 따라서 발병 초기에변화를 인지하여 대처하는 게 매우 중요합니다. 대표적인 질환으로는 음식물과 환경으로 인한 '알레르기', 습기로 인한 '곰팡이균', 면역력 저하로 인한 '모낭염', 물집이 차는 '농가진', 기생충으로 인한 '개선충', 벌레로 인한 '습진성 피부염' 등이이 있으며, 발병시 꾸준한 연고 치료를 하셔야 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act2_A.jpg";
					
					
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
							<span>피부에서 각질과 같은 것들이 떨어져 나온다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>털이 많이 빠진다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>피부를 가려워한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>피부가 벌겋게 변한다</span>
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
					<img id="imgId" src="" alt="이미지">
				</div>
			</div>
		</div>
	</div>
</body>
</html>