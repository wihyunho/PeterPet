<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>침을 많이 흘린다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="광견병";
					document.getElementById("prID").innerHTML ="광견병은 광견병 바이러스에 의해 15-60일 간의 잠복기를 두고 발병하는 질병으로 사후 치료법은 없고 사망률이 거의 100%에 이르는 매우 위험한 질병입니다. 경련과 발작이 반복되어 반려견이 매우 고통스러워 합니다. 정기적인 예방접종 만이 최선의 치료입니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/food/food5_A.jpg";
					
					
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
							<span>음식이 아닌 것을 먹는다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>경련을 일으킨다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>과도하게 흥분을 한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>온몸이 마비된다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>음식을 삼키지 못한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>입을 다물지 못한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>물을 싫어한다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="구내염";
					document.getElementById("prID").innerHTML ="구내염은 세균감염. 영양결핍, 상처 등에 의해 발병하는 질병으로, 통증이 심해질 경우 반려견이 제대로 음식물을 씹지 못할 정도로고통스러워 하는 질병이다. 치과적 진단 후 항생제 투여 또는 염증치료를 반드시 수반해야 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/food/food5_B.jpg";
					
					
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
							<span>음식을 잘 먹지 못한다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>잘 씹지 못한다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>잇몸이 벌겋게 붓는다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>식욕이 없다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>입 주변을 만지는 것을 싫어한다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>입에서 피가 난다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>입에서 냄새가 심하게 난다</span>
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