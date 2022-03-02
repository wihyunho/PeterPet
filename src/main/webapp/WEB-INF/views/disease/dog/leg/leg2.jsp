<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>걷는 모습이 이상하다</title>
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
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "골절 (반려견)";
							document.getElementById("prID").innerHTML = "대부분의 골절은 사고 등의 충격으로 발생하는데, 뼈의 형성이 나쁘거나 구루병이나 뼈 종양 등에 의해서 뼈가 쇠약해지기 때문에 정상적이라면 버틸 수 있는 정도의 힘에도 쉽게 골절 되는 경우가 있습니다. 치료방법으로는 피부가 찢어져 뼈가 보이는 경우에는 응급처치로 소독한 후에 2차 감염을 예방하기 위해서 재빨리 거즈 등으로 청결하게 합니다. 판자나 박스 등을 간단한 지지대로 삼아 환부에 고정하고 가능한 움직이지 않게 해서 병원으로 가야합니다. 골절 치료법은 다양하지만, 기본적으로 뼈를 정상적인 위치로 되돌려 재생할 때까지 이탈을 막는 것입니다.";
							document.getElementById("imgId").src = "#";
		
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
								<label><span>다리를 든 채 땅에 대지 않는다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>다리가 부어 있거나 피를 흘리고 있다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "관절염";
							document.getElementById("prID").innerHTML = "관절염은 노화, 부상, 감염 등의 질병으로 인해 염증이 발생하며, 약물치료와 수술이 요구되는 질병입니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/leg/leg2_B.jpg";
		
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
								<label><span>다리를 든 채 땅에 대지 않는다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>다리가 부어 있거나 피를 흘리고 있다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>운동을 싫어한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>기운이 없다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>움직일 때 삐걱거리는 듯한 소리가 난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>다리를 질질 끈다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>다리를 감싼다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label><span>만지면 아파한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "탈구";
							document.getElementById("prID").innerHTML = "관절부에 의해 연결되어 있는 뼈와 뼈가 관절에서 벗어나 정상적인 위치에서 벗어나는 것이 탈구이다. 치료방법으로는 X선 검사 후에 가능한 빨리 관절을 정상 위치로 되돌린다. 대부분은 마취를 하고 피부 위에서 힘을 가해 수복하는데, 외과수술이 필요한 경우도 적지 않습니다. 수복 후에는 환부를 고정해서 안정을 유지하고 약으로 염증을 가라앉힙니다. 탈구는 습관성이 되는 경우가 많으므로 그 후의 생활 관리에 주의를 기울여야 합니다.";
							document.getElementById("imgId").src = "#";
		
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
								<label><span>다리를 든 채 땅에 대지 않는다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>다리가 부어 있거나 피를 흘리고 있다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>다리의 심한 통증을 느낀다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>운동을 싫어한다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>다리를 질질 끈다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>다리를 감싼다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>기운이나 식욕이 없다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label><span>만지면 아파한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "전십자인대 손상";
							document.getElementById("prID").innerHTML = "전십자인대에 문제가 생긴 경우에는 반려견의 다리가 계속 바깥쪽으로 미끄러져서 정상적인 보행이 어렵습니다. 경증일 경우는 약물 중증일 경우는 수술로 치료해야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/leg/leg2_D.jpg";
		
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
								<label><span>다리를 든 채 땅에 대지 않는다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>다리가 부어 있거나 피를 흘리고 있다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label><span>뒷다리를 질질 끈다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "추간판 헤르니아";
							document.getElementById("prID").innerHTML = "등뼈의 뼈 사이에 있는 추간판은 뼈끼리 부딪치지 않도록 쿠션 역할을 합니다. 그 추간판이 튀어나와 신경을 압박하고, 다양한 장애를 일으키는 상태입니다. 치료방법으로는 일단 안정을 취하고 평소 스테로이드제나 레이저 치료 등으로 통증을 완화하는데, 병변 부위에 특수한 약제를 주입하는 방법이 실시되기도 합니다. 증상이 심할 경우에는 수술로 환부를 도려냅니다.";
							document.getElementById("imgId").src = "#";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>E</b>증상
							</dt>
							<dd onclick="E();" class="name">
								<label><span>뒷다리가 마비되었다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>안으려고 하면 싫어한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>등을 만지면 아파한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>허리를 흔들면서 걷는다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label><span>걸을 때 후들거린다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function F() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "전정장애";
							document.getElementById("prID").innerHTML = "귀에서 뇌로 연결되는 평행감각을 다스리는 전정 부위에 이상이 생기는 질환입니다. 치료방법으로는 항생물질이나 스테로이드제를 투여하고 적절한 치료를 하면 며칠에서 몇 주 사이에 병상을 개선할 수 있습니다. 후유증으로 고개가 기울어진 상태가 지속되기도 하므로 이상이 보이면 조기에 진찰을 받아야 합니다.";
							document.getElementById("imgId").src = "#";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>F</b>증상
							</dt>
							<dd onclick="F();" class="name">
								<label><span>똑바로 걷지 못한다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>같은 곳을 빙글빙글 돈다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>고개가 기울어져 있다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>눈이 부자연스럽게 파르르 떨린다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label><span>밥을 제대로 먹지 못한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function G() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "내이염";
							document.getElementById("prID").innerHTML = "귀의 가장 안쪽 깊은 곳에 있는 내이에서 일어나는 내이염은 외이염이나 중이염이 확대되어 일어납니다. 치료방법으로는 원인이 되는 외이염이나 내이염을 치료해야합니다. 장애가 심하면 증상의 개선이 어려워집니다.";
							document.getElementById("imgId").src = "#";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>G</b>증상
							</dt>
							<dd onclick="G();" class="name">
								<label><span>똑바로 걷지 못한다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>같은 곳을 빙글빙글 돈다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>난청 증상이 보인다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label><span>평행감각을 잃고 쓰러진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function H() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "고관절 형성부전";
							document.getElementById("prID").innerHTML = "허리와 대퇴골을 연결하는 고관절이 변형되기 때문에 걷는 모습이 이상해지고 점점 관절의 움직임이 제한됩니다. 치료방법으로는 운동을 제한하고 체중을 관리하면서 항염증약이나 진통제 등을 투여하여 염증을 완화시킵니다. 뼈를 절제하고 관절 형성 수술을 하는 경우도 있습니다.";
							document.getElementById("imgId").src = "#";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>H</b>증상
							</dt>
							<dd onclick="H();" class="name">
								<label><span>허리를 흔들면서 걷는다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>걸을 때 후들거린다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>앉는 자세를 취하지 못한다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>다리를 질질 끈다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>뒷다리가 서지 못한다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>계단을 오르내리지 못한다</span></label>
							</dd>
							<dd onclick="H();" class="name">
								<label><span>운동을 싫어한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function I() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'block');
							
							document.getElementById("titleID").innerHTML = "슬개골 탈구";
							document.getElementById("prID").innerHTML = "슬개골탈구는 뒤쪽 다리 무릎쪽에 위치한 슬개골이 정상 위치를 벗어나 생기는 질병입니다. 초기에는 증상이 관찰되지 않지만, 앞다리를 들고 다니거나 높이 뛰어 오르는 경우 통증을 호호하는 경우가 있습니다. 소형견에게 잘 나타나며  수술 치료후 재발이 많으므로 각별한 사후 관리가 요구됩니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/leg/leg2_I.jpg";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>I</b>증상
							</dt>
							<dd onclick="I();" class="name">
								<label><span>다리를 질질 끈다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>다리를 감싼다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>기운이나 식욕이 없다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>만지면 아파한다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>무릎 아래쪽이 뒤틀린다</span></label>
							</dd>
							<dd onclick="I();" class="name">
								<label><span>다리가 완만하게 휘어 O다리나 X다리가 된다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function J() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "뼈의 종양";
							document.getElementById("prID").innerHTML = "양성 뼈 종양에는 골종, 악성 뼈 종양에는 연골육종이나 골육종 등이 있습니다. 치료 방법으로는 생명을 구하기 위해서는 안타깝지만 다리를 절단해야 하는 경우가 대부분입니다. 치료에는 항암제 등도 사용하며 폐에 전이되는 경우가 많기 때문에 완치될 가능성이 낮은 질병입니다.";
							document.getElementById("imgId").src = "#";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>J</b>증상
							</dt>
							<dd onclick="J();" class="name">
								<label><span>다리를 질질 끈다</span></label>
							</dd>
							<dd onclick="J();" class="name">
								<label><span>다리를 감싼다</span></label>
							</dd>
							<dd onclick="J();" class="name">
								<label><span>기운이나 식욕이 없다</span></label>
							</dd>
							<dd onclick="J();" class="name">
								<label><span>만지면 아파한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function K() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML = "중이염";
							document.getElementById("prID").innerHTML = "일반적인 증상은 외이염과 거의 비슷하다. 원인은 외이염과 거의 동일한데 외이의 염증이 번져서 일어난다. 중이의 고실까지 염증이 일어나 고름이 쌓이긷 한다. 치료방법으로는 병발해 있는 외이염의 치료를 겸해서 하고 항생물질이나 소독제를 투여한다. 수술을 하기도 한다";
							document.getElementById("imgId").src = "#";
		
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({
								top : location,
								behavior : 'smooth'
							});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>K</b>증상
							</dt>
							<dd onclick="K();" class="name">
								<label><span>똑바로 걷지 못한다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>같은 곳을 빙글빙글 돈다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>열이 난다</span></label>
							</dd>
							<dd onclick="K();" class="name">
								<label><span>머리를 기울인 채 있는다</span></label>
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