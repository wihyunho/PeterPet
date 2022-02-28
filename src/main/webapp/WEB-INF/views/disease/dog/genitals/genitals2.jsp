<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생식기에서 고름이 나온다(암컷)</title>
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
							document.getElementById("titleID").innerHTML ="자궁 축농증";
							document.getElementById("prID").innerHTML ="자궁 축농증은 세균 감염으로 자궁에 농이 차는 질환으로자궁과 난소를 제거하는 수술로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/genitals/genitals_2.jpg";
							
							
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
								<span>기력이 없다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>식욕이 없다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>구토를 한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>물을 많이 마신다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>열이 난다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>우울증을 보인다</span></label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="질염";
							document.getElementById("prID").innerHTML ="질염은 미성숙 질, 비뇨 생식기 감염, 외상 등이 원인되어 발생하는 질병으로, 항생제 처치로 대부분 치료가 되나 필요시에는 수술 치료를 요합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/genitals/genitals_3.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label>
								<span>생식기를 자주 핥는다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
								<span>배변을 가리지 못한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
								<span>소변을 자주 본다</span></label>
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