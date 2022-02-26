<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화장실 행동</title>
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
							document.getElementById("titleID").innerHTML = "방광염";
							document.getElementById("prID").innerHTML = "요도에 염증이 있으면 소변을 보기 어렵습니다. 특히 소변을 볼 때 통증이 있으면 고양이는 소변을 조금씩 누기 때문에 소변을 자주 보는 빈료가 됩니다. 화장실 이외의 장소에서 소변을 보는 모습도 눈에 띄게 됩니다. 치료방법으로는 세균배양 검사에서 병원성 세균이 발견되면 해당 세균에 효과적인 항생제를 투여합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_2_1.jpg";

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
								<label><span>잔뇨감이 있다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>구토를 한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>배변의 어려움이 있다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "요도염";
							document.getElementById("prID").innerHTML = "요도에 염증이 있으면 소변을 보기 어렵습니다. 특히 소변을 볼 때 통증이 있으면 고양이는 소변을 조금씩 누기 때문에 소변을 자주 보는 빈료가 됩니다. 화장실 이외의 장소에서 소변을 보는 모습도 눈에 띄게 됩니다. 치료방법으로는 세균배양 검사에서 병원성 세균이 발견되면 해당 세균에 효과적인 항생제를 투여합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_2_2.jpg";

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
								<label><span>소변 볼 때 우는 소리를 낸다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>소변 볼 때 구역질을 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "골반골절";
							document.getElementById("prID").innerHTML = "골반이 물리적으로 좁아지기 때문에 대변이 나올 것 같아 화장실에서 자세를 잡아도 변이 잘 나오지 않습니다. 고양이가 한동안 배변 자세를 취하다가 포기하기도 합니다. 치료방법으로는 정형외과에 가서 골반을 치료합니다. 다른 한편으로는 대변 상태를 부드럽게 만드는 내과 치료도 함께 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_2_3.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label><span>화장실에 나왔다 들어갔다 한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>아무것도 배설하지 못한다</span></label>
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