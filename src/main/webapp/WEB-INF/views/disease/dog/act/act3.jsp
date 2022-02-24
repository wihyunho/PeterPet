<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>엉덩이를 바닥에 끌고 다닌다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="항문낭 질환";
					document.getElementById("prID").innerHTML ="항문낭 질환은 항문낭은 항문 양 옆에 냄새나는 액체가 들어있는 주머니를 말하며 이 곳에 배변시 액체가 배출되지 않아 발병하는 염증 증상이다. 일반적으로 항생제 투여 방법으로 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act3_A.jpg";
					
					
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
							<span>항문 주변이 붓는다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>항문 주위를 계속 햝는다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>배변을 힘들어한다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="직장 탈출증";
					document.getElementById("prID").innerHTML ="직장탈출증은 반려견 항문에 원통형으로 붉은 덩어리가 돌출되는 질병으로 직장에 질병이 있거나 기생층에 감염된 경우, 변비, 항문 주변 신경 손상, 암컷의 출산의 경우 발생합니다. 항생제 투여와 수술로 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act3_B.jpg";
					
					
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
							<span>대변에 피가 섞여 나온다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>항문 밖으로 직장이 튀어나온다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="기생충 감염";
					document.getElementById("prID").innerHTML ="기생충 감염은 감염된 반려동물이 배설한 변 속의 기생충 알을 핥거나 먹으면 감염되는 된다.  모기 유충에 의해 심장에 기생하는 회충인 '심장사상충' 대표적인 질병으로 발병시 구충약 투여와 항생제 투여를 통해 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act3_C.jpg";
					
					
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
							<span>항문 주변을 계속 햝는다</span>
						</label>
					</dd>
					<dd onclick="C();" class="name">
						<label>
							<span>항문 근처 또는 대변에서 기생충이 관찰된다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function D() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="항문 주위 선종";
					document.getElementById("prID").innerHTML ="항문 주위 선종은 남성호르몬과 관련되어 있으므로 대체로 중성화 수술을 하지 않은 중고령의 수컷에게 흔히 발병하는 질환입니다.  항문 주위에 종기의 수가 커지거나 늘어날 수 있으니 조기에 수술하는 것이 좋습니다.  드물지만 암컷에게 생기는 경우도 있으므로 주의해야 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act3_D.jpg";
					
					
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
							<span>항문 주위에 종기가 생긴다</span>
						</label>
					</dd>
					<dd onclick="D();" class="name">
						<label>
							<span>항문 주위를 핥는다</span>
						</label>
					</dd>
					<dd onclick="D();" class="name">
						<label>
							<span>고약한 냄새가 난다</span>
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
</body>
</html>