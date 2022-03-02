<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>눈꺼풀이 벌겋게 변한다</title>
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
							document.getElementById("titleID").innerHTML ="안구건조증";
							document.getElementById("prID").innerHTML ="안구건조증은 눈꼽이 많이 끼고 흰자가 충혈되는 증상을 수반하므로, 의심히 병원을 내원하며 눈물량 검사를 통해 적절한 진단으로 증상이 악화되지 않도록 해야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes2_A.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12">
						<dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label>
									<span>누렇고 찐득한 눈곱이 많이 낀다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>눈꺼풀이 벌겋게 변한다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>눈을자주 깜빡인다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>눈을 자주 비빈다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="각막궤양";
							document.getElementById("prID").innerHTML ="각막궤양은 각막상처 재대로 치료가 안되서 발병하는 질병으로 원인은 세균감염, 스테로이드 성 약물 복용등으로 발병할 수 있습니다. 각막에 구명이 생겨 응급상황이 발생할 수 있으니 신속한 병원 내원이 필요합니다. ";
							document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes2_B.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12">
						<dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label>
									<span>눈꺼풀이떨린다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>눈물을많이 흘린다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>흰자위가 충혈된다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>눈꺼풀이 벌겋게 붓는다</span>
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
		</div>
	</div>
</body>
</html>