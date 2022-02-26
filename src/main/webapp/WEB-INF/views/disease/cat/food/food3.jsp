<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>왕성한식욕</title>
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
							document.getElementById("titleID").innerHTML = "쿠싱증후군";
							document.getElementById("prID").innerHTML = "쿠싱증후군은 부신피질기능 항진증이라고도 합니다. 부신피질의 가능성 종양과 부신피질의 과형성으로 글루코코르티코이드(스테로이드 호르몬)이 과잉 생성되어 일어납니다. 5~6세부터 10세 이상의 고양이에게 증세가 나타납니다. 그리고 당뇨병도 함께 발병하므로 당뇨병 증상인 다음다뇨도 나타납니다 치료방법으로는 외과 수술이 효과적입니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/food/food_3_1.jpg";

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
								<label> <span>식욕이 왕성해진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>피부가 물러지고 약해진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "거대결장";
							document.getElementById("prID").innerHTML = "거대결장은 결장의 기능장애로 생기는 변비입니다. 장은 대변 크기에맞춰 어느 정도는 확장되지만, 결장의 지름이 제7요추의 2배 이상 확장되면 이상 증상으로 봅니다. 며칠간 배설하지 못한 분량의 대변이 덩어리가 되어 결장이 확장되지만 고양이는 변의를 거의 느끼지 못하고 계속해서 먹습니다. 치료방법으로는 내과적으로는 대변 상태를 고려한 사료를 주고 내복약을 사용합니다. 외과 수술로는 결장을 절제합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/food/food_3_2.jpg";

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
								<label> <span>구토</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>탈수증세를 보인다</span></label>
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