<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기지개를 자주 켠다</title>
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
							document.getElementById("titleID").innerHTML ="척추 질환";
							document.getElementById("prID").innerHTML ="척추질환은 반려견이 너무 마르거나 비만이여서 뼈에 손상이나 무리가 올 경우, 또는 과격한 운동으로 인해 발생합니다. 스테로이드제나 레이저로 통증을 완화해 주는 수술 또는 치료를 꾸준히 하셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act1_A.jpg";
							
							
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
									<span>근육 크기가 작아진다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>배뇨 및 배변을 어려워한다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>다리 운동이 어색해진다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="위확장-염전";
							document.getElementById("prID").innerHTML ="위확장(염전)은 가스가 많이 차서 위가 부풀어 올라 생기는 질병입니다. 혈관이 막히기 때문에 사망에 이를 수 있어, 반드시 신속하게 응급병원을 방문하셔야 합니다..";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act1_B.jpg";
							
							
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
									<span>기력이 없다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>배가 부풀어 오른다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>복부에 통증을 느낀다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>숨을 쉬기 힘들어한다</span>
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