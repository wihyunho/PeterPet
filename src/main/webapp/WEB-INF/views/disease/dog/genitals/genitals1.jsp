<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생식기에서 고름이 나온다(수컷)</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="포피염";
					document.getElementById("prID").innerHTML ="포피염은 생식기의 바깥 부분에 세균감염 또는 호르몬 문제, 방광, 비뇨기계 문제가 원인으로 발생하는 질병으로, 포피낭을 여러 차례 세척 또는 항생제 복용으로 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/genitals/genitals_1.jpg";
					
					
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
						<span>생식기쪽 피부가 벌겋게 변한다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
						<span>소변을 자주 지린다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
						<span>생식기를 지속적으로 핥는다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
						<span>열이 난다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
						<span>(심할 경우)기력이 없다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
						<span>생식기에서 피가 난다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
						<span>식욕이 없다</span></label>
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