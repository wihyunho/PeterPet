<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>균형이 잘 잡지 못해 비틀거린다</title>
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
							document.getElementById("titleID").innerHTML ="전정기관 손상";
							document.getElementById("prID").innerHTML ="전정기관은 귀 안쪽에 있으며 몸의 평형감감각을 유지해 주는 기관이다. 중이염이 유발되기도 하고 어지럼증으로 인한 구토와 영양 불균형 현상도 밣생할 수 있다. 특별한 치료법은 없으며, 추가적인 감염을 억제하는 증상별 보조 치료가 필요하다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act5_A.jpg";
							
							
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
									<span>청력이 손상된다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>머리와 목이 한쪽으로 기울어져 있다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>눈동자의 움직임이 이상해진다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>똑바로 서 있지 못한다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>걷는 방향이 한쪽으로 기울어진다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="소뇌손상";
							document.getElementById("prID").innerHTML ="소뇌는 신체의 운동기능을 조절하며 동시에 평형감각을 유지하는 기능을 하는데, 소뇌가 손상된 경우에는 갑작스럽게, 중심을 잘 못잡고 휘청거리면서 걸으며, 쓰러지는 증상을 보이기도 합니다. MRI 검사 결과를 기바능로 지속적인 추적 치료가 필수입니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act5_B.jpg";
							
							
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
									<span>머리와 몸을 떤다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>보폭이 커진다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>몸의 움직임을 스스로 제어하지 못한다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="척추손상";
							document.getElementById("prID").innerHTML ="낙상, 교통사고가 원인인 경우 많으며, 척의 뼈 사이에 존재하는 추간판이 외부의 충격으로 손상을 입게된 경우 발생, 강아지의 신체 특성상 앞다리에 체중이 많이 쏠려 2차 질환 및 전신마비로 증상이 악화될 수 있으니, 신속한 뱡원 검사 및 진료가 필요합니다. ";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act5_C.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label>
									<span>허리를 만지거나 안을 때 아파한다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>발을 끌며 걷거나 발등으로 딛는다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>보폭이 불규칙해진다</span>
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