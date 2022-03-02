<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>움직이지 않는다</title>
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
							document.getElementById("titleID").innerHTML = "빈혈";
							document.getElementById("prID").innerHTML = "고양이는 빈혈이 있으면 움직이지 못합니다. 빈혈이 만성적일 경우 식욕이 있어도 별로 움직이지 않고 잠만 자며, 악화될 경우 먹는 것조차 힘들어집니다. 치료방법으로는 혈액검사 후 수치를 확인한 후 그에 맞는 치료를 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_4_1.jpg";

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
								<label><span>치육이 새하얗게 변한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>잠만 잔다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "저칼륨혈증";
							document.getElementById("prID").innerHTML = "노량고양이에게 저칼륨혈증이 일어났을 때 나이 탓으로만 생각하면 치료 시기를 놓쳐버립니다. 신장기능 장애, 만성신부전인 경우네는 소변량이 증가하고, 소변으로 칼륨이 과잉배출 되어 저칼륨혈증이 됩니다. 또한 식사에서 칼륨 섭취가 부족해도 이 병의 원인이 됩니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_4_2.jpg";

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
								<label><span>고개가 아래로 처진다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>휘청거린다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>배변 도중 주저 앉는다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>천천히 걷는다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "골절";
							document.getElementById("prID").innerHTML = "차나 오토바이와의 충돌 사고가 발생하면 목숨은 건져도 부상을 입습니다. 높은 건물에서의 추락사고도 골절의 원인입니다. 고양이는 골절이 되면 안전한 곳에 몸을 숨긴 채 움직이지 않고 회복될 때를 기다립니다. 움직이면 사고를 당한 부위가 더 손상될 수 있으므로 움직이지 않고 가만히 있는 것이 몸에 좋다는 것을 아는 것 입니다. 치료방법으로는 사고 후 전신 증상이 안전된 것을 확인하면 수술을 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_4_3.jpg";

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
								<label><span>몸을 만지면 싫어한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>구석에 웅크리고 앉아있다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "심장질환";
							document.getElementById("prID").innerHTML = "심장은 몸속에 혈액을 보내는 펌프 역할을 하여 몸 구석구석으로 충분한 양의 혈액을 쉼 없이 보냅니다. 따라서 심장에 질황니 생기면 몸에 혈액을 충분히 보내지 못하여 고양이의 운동량이 떨어지게 됩니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/act/act_4_4.jpg";

							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>D</b>증상
							</dt>
							<dd onclick="D();" class="name">
								<label><span>운동량이 떨어진다</span></label>
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