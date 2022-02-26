<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>만지면 싫어한다</title>
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
							document.getElementById("titleID").innerHTML = "요도폐쇄";
							document.getElementById("prID").innerHTML = "수고양이는 요도가 막혀 소변이 나오지 앟는 상태가 되기도 하는데, 이것은 생명이 위험할 수도 있는 긴급사태입니다. 상태를 지켜보고 있을 시간이 없으며 곧바로 병원에 데려가서 폐쇄된 요도를 뚫어주어야 합니다. 치료방법으로는 폐쇄된 요도를 뚫어주는 수술을 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_5_1.jpg";

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
								<label><span>생식기 주변을 만지면 싫어한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "비타민e결핍증(지방조직염)";
							document.getElementById("prID").innerHTML = "주로 생선을 먹어 비타민E를 섭취하지 못하는 고양이에게는 비타민E결핍증이 생깁니다. 주로 먹는 참치가 가장 큰 원인으로 생각됩니다. 지방조직염은 지방조직에 염증이 생기는 상태입니다. 지각과민증상이 나타나 온몸에 통증이 느껴지는지 만지거나 아는 것을 매우 싫어합니다. 치료방법으로는 지방조직을 조직검사하여 진단합니다. 그리고 비타민E를 투여하고 영양이 골고루 함유된 양질의 사료를 줍니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/cat_5_2.jpg";

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
								<label><span>몸을 만지면 싫어한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>안는 것을 싫어한다</span></label>
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