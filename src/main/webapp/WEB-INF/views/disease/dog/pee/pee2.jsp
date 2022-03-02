<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소변을 자주 지린다</title>
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
							document.getElementById("titleID").innerHTML ="방광염";
							document.getElementById("prID").innerHTML ="방광염은 스트레스, 위생문제, 음수량 부족 등으로 발생하는 질병으로 재발율아 높습니다.  항생제 치료를 통해 증상을 호전 시킬 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/pee/pee_4.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>		
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>소변에서 냄새가 난다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>혈액이 섞인 소변을 본다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>소변에 고름이 섞여 나온다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>소변을 볼 때 아파한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="전립선 질환";
							document.getElementById("prID").innerHTML ="전립선은 정자액 생산 역할을 하는데 전립선 비대증이 대표적인 전립선 질환입니다. 요도를 압박하여 소변 배출에 지장을 주므로 빠른 치료를 요하며, 항생제 처치와 중성화 수술로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/pee/pee_5.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>				
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>소변을 보는 횟수가 증가한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>혈액이 섞인 소변을 본다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>물을 많이 마신다</span></label>
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