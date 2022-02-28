<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>복부팽만</title>
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
							document.getElementById("titleID").innerHTML = "비만";
							document.getElementById("prID").innerHTML = "비만은 고양이의 영양상태가 비정상적인 상태입니다. 섭취 칼로리와 소비 칼로리의 균형이 깨지면 비만이 됩니다. 섭취 칼로리가 많다는 것은 필요 이상으로 과식을 하고, 평소에 고칼로리 사료를 먹습니다. 또 칼로리 소비가 적다는 것은 운동이 부족한 결과이며, 이상태에서는 체지방이 증가합니다. 예방방법으로는 고양이의 적정체중과 이상체중을 알아두며, 1일 사료량의 무게를 재며 급여 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_2_1.jpg";

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
								<label> <span>과식을 한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>움직이지 않는다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "고양이 전염성 복막염";
							document.getElementById("prID").innerHTML = "1세 미만의 고양이에게 나타나는 복수는 고양이전염성복막염(FIP)이 원인일 가능성이 높습니다. 복수가 차기 시작할 무렵에는 배가 부풀어 오르는 게 별로 눈에 안띄지만, 눈에 띄게 배가 부풀 무렵에는 고양이가 식욕부진, 발열, 운동불내성 등의 상태가 됩니다. 또한 등 근육도 줄어들게 되는데 이것은 질병의 말기 상태일 때 나타납니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_2_2.jpg";

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
								<label> <span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>복수가 찬다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>발열증상이 나타난다</span></label>
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