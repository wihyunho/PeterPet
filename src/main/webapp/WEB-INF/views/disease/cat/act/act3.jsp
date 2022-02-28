<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경련.발작</title>
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
							document.getElementById("titleID").innerHTML = "광견병";
							document.getElementById("prID").innerHTML = "광견병 바이러스는 모든 항온동물에게 감염되며, 증상으로는 전구기, 흥분, 흉폭기, 마비기 등 3기에 걸쳐 나타납니다. 전구기는 보통 1~3일 체온상승하며 동공확대, 정서불안이 나타나며 흥분, 흉폭기에는 근육경련, 근육탈력, 침분비 증가, 운동실조, 떨림, 인두마비로 인한 연하곤란 등이 나타납니다. 마비기에는 몸 전체가 마비되어 사망합니다. 광견병 증상이 나타나면 며칠 이내에 사망하기 때문에 예방접종으로 미리 예방해야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_3_1.jpg";

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
								<label><span>동공이 확대된다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>몸이 마비된다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>근육 경련이 나타난다</span></label>
							</dd>
							<dd onclick="A);" class="name">
								<label><span>침을 많이 흘린다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "수막종";
							document.getElementById("prID").innerHTML = "수막종은 뇌막종이라고도 합니다. 뇌의 측두, 전두, 후두의 수막에서 발생하며, 특히 대뇌 수질에 가장 많이 생기는 뇌종양입니다. 뇌종양이 중추신경을 압박하여 다양한 증상이 나타납니다. 선회 등의 행동 변화가 생기고, 시각장애가 일어납니다. 종양이 뇌조직을 압박하여 간질 발작의 계기가 되는 것으로 추측됩니다. 치료방법으로는 수술이 가능하다면 외과수술을 시도합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_3_2.jpg";

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
								<label><span>경련과
										발작이 일어난다</span></label>
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