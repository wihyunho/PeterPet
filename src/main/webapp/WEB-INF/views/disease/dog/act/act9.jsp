<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정신없이 돌아다닌다</title>
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
							document.getElementById("titleID").innerHTML ="분리불안증";
							document.getElementById("prID").innerHTML ="혼자 있는 것에 극도의 불안과 스트레스를 느끼는 반려견의 정신적인 병 중 하나입니다. 치료에는 행동요법과 약물요법이 있습니다. 약물요법은 행동 요법의 보조수단으로 혼자 있는 시간을 점차점차 늘리는 꾸준한 행동요법을 통해 치료할 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act9_A.jpg";
							
							
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
									<span>대소변을 실수한다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>물건을 망가뜨린다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>계속 짖는다</span>
								</label>
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