<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체중 감소, 물을 많이 마시고 소변량이 증가하는 등의 증상을 동반한다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="급성 신부전";
					document.getElementById("prID").innerHTML ="급성 신부전은 선천적인 경우 또는 독성물질 섭취, 감염, 심장질환, 부정맥, 탈수 등으로 발생하는 질병으로 혈액 투석으로 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/teeth/teeth_1.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>		
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>A</b>증상
					</dt>
					<dd onclick="A();" class="name">
						<label><span>요독증을 일으키고 경련 등 신경증상이 나타난다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>입이 바싹 마를 정도로 심한 탈수증상이 나타난다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>구토, 설사 등의 증상이 나타난다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label><span>기운이나 식욕이 완전히 사라진다</span></label>
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