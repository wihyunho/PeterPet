<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기력이 없다</title>
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
							document.getElementById("titleID").innerHTML ="변비";
							document.getElementById("prID").innerHTML ="노령견의 경우 장의 기능이 저하되어 변비에 잘 걸립니다. 충분한 수분 섭취를 시켜주어야 합니다.  단순한 변비라면 약이나 관장으로 해결됩니다.  하지만 장 자체에 이상이 있거나 골반 협착, 서혜헤르니아, 전립선 질환이 원인이라면 항생제 투여 및 수술을 필요로 합니다.  이물질 섭취도 원인이 될 수 있으니 주의하셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act10_A.jpg";
							
							
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
									<span>배변을 하지 않는다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>식욕이 없다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>물을 마시지 않는다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>구토를 한다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="위염";
							document.getElementById("prID").innerHTML ="위염은 잘못된 음식 섭취로 발병하는 급성 위염,  위의 염증이 오랜 기간 계속되는 만성위염,  면역 문제로 발병하는 출혈성 위장염으로 나누어집니다. 일반적으로 수액치료, 처방식 급여, 약물치료 등을 통해 치료 가능하지만,  출혈성 위장염일 경우 응급 질병이기 때문에 증상 발견 시 빠른 내원을 필요로 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act10_B.jpg";
							
							
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
									<span>구토를 한다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>혈액이 섞인 구토를 한다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>식욕이 없다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>혈액이 섞인 대변을 본다</span>
								</label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
									<span>구토 횟수가 빈번하다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="뇌수두증";
							document.getElementById("prID").innerHTML ="뇌 속 두개골과 뇌 실질 사이를 흐르며 영양공급을 하는 뇌척수액의 흐름이 원활하지 못한 것으로 종양으로 인해 흐르는 통로가 막히거나, 선천적으로 뇌실이 크다거나 하는 등의 이유로 뇌척수액이 많이 흐르는 질병입니다. 선천적인 경우가 많으며 약물 치료, 수술을 통해 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act10_C.jpg";
							
							
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
									<span>발작을 일으킨다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>부분적으로 마비된다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>사시가 나타난다</span>
								</label>
							</dd>
							<dd onclick="C();" class="name">
								<label>
									<span>우울증을 보인다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="뇌종양";
							document.getElementById("prID").innerHTML ="갑작스럽게 임상증상이 나타나며, 종양이 점차 커지면서 뇌에 부종이나 출혈을 일으킵니다. 인접 조직을 파괴하고 뇌압을 상승시켜 점차 의식을 잃게 됩니다. 수술로 종양을 제거하거나 화학요법, 방사선 치료 등을 통해 증상을 개선할 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act10_D.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>D</b>증상
							</dt>
							<dd onclick="D();" class="name">
								<label>
									<span>자극에 대한 반응이 느리다</span>
								</label>
							</dd>
							<dd onclick="D();" class="name">
								<label>
									<span>운동 능력이 사라진다</span>
								</label>
							</dd>
							<dd onclick="D();" class="name">
								<label>
									<span>우울증을 보인다</span>
								</label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="빈혈(반려견)";
							document.getElementById("prID").innerHTML ="적혈구의 수치가 줄어드는 빈혈은 용혈성 빈혈, 면역매개성 빈혈, 철결핍성 빈혈이 있으며  혈액검사를 통해 확인 가능합니다. 약물치료, 처방식, 수혈 등과 같은 치료를 필요로 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/act/act10_E.jpg";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>E</b>증상
							</dt>
							<dd onclick="E();" class="name">
								<label>
									<span>구토를 한다</span>
								</label>
							</dd>
							<dd onclick="E();" class="name">
								<label>
									<span>검은 대변을 본다</span>
								</label>
							</dd>
							<dd onclick="E();" class="name">
								<label>
									<span>피부에 점처럼 생긴 출혈이 생긴다</span>
								</label>
							</dd>
							<dd onclick="E();" class="name">
								<label>
									<span>복부에 통증을 느낀다</span>
								</label>
							</dd>
							<dd onclick="E();" class="name">
								<label>
									<span>피부 또는 잇몸이 누렇게 변한다</span>
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