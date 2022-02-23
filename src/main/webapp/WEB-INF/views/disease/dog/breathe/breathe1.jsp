<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨을 헐떡인다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML = "열사병";
					document.getElementById("prID").innerHTML = "열사병은 반려견이 땀으로 체온을 조절하기 어려운 신체구조를 갖고 있기 때문에 생깁니다. 뜨겁고 환기가잘 안되는 공간에서 걸릴 확률이 높으며 몸의 온도를 내리기 위해 물을 뿌려주거나 적신 타월을 감싸주고 물을 최대한 많이 공급해 주어야 증상을 완화시킬 수 있습니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/breathe/breathe1_A.jpg";

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
						<label><span>구토를 한다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>심박 수가 증가한다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>기력이 없다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>고열로 인해 몸이 뜨겁다</span></label>
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
</body>
</html>