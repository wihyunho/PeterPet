<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소변량이 줄어든다</title>
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
							document.getElementById("titleID").innerHTML ="요로결석";
							document.getElementById("prID").innerHTML ="요로결석은 음수량, 음식, 세균감염, 견종에 따라 발생하는 질병으로,수술로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/pee/pee_1.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>탈수증상을 보인다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>식욕이 없다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>소변을 볼 때 아파한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>생식기 쪽을 만지는 것을 싫어한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>배뇨 시도 횟수가 증가한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>혈액이 섞인 소변을 본다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="탈수";
							document.getElementById("prID").innerHTML ="반려견의 탈수는 코가 마르고, 무기력을 동반합니다. 탈수 발생시는 설탕물을 빠르게 공급해 주면 응급처치가 가능합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/pee/pee_2.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>				
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>눈이 움푹 들어간다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>잇몸이 마른다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>피부 탄력이 줄어든다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>침이 끈적해진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="급성 신부전";
							document.getElementById("prID").innerHTML ="급성 신부전은 선천적인 경우 또는 독성물질 섭취, 감염, 심장질환, 부정맥, 탈수 등으로 발생하는 질병으로 혈액 투석으로 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/pee/pee_3.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>				
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label><span>기력이 없다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>식욕이 없다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>소변을 보지 않는다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>구토를 한다</span></label>
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