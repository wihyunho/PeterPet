<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사물에 자주 부딪힌다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="망막박리";
					document.getElementById("prID").innerHTML ="망막박리는 망막과 맥락막 사이에 염증 발생하거나 두부에 충격으로 인해 발생하는 질병으로, 검안경을 사용하여 안저 검사 후 수술을 통해 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act8_A.jpg";
					
					
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
							<span>양쪽 눈의 동공 크기가 다르다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>안구 내에서 출혈이 일어난다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>눈이 커져 보인다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>어두울 때 시력이 떨어진다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="녹내장";
					document.getElementById("prID").innerHTML ="녹내장은 노견 또는 눈의 손상이나 다른 안과 질환으로 유전적인 원인으로 발생하는 경우가 많고, 기본적인 치료로는 안압을 낮추는 것과 약물투여 통해 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act8_B.jpg";
					
					
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
							<span>흰자위가 충혈된다</span>
						</label>					
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>안구가 커져 보인다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>식욕과 기력이 없다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>눈을 잘 뜨지 못한다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>눈에 통증을 크게 느낀다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>눈동자가 뿌옇게 변한다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="백내장";
					document.getElementById("prID").innerHTML ="백내장은 노화 또는 유전적인 요인으로 발생하는 질병으로 약물치료와 수술 및 초음파 치료합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act8_C.jpg";
					
					
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
							<span>산책을 나가기 싫어한다</span>
						</label>
					</dd>
					<dd onclick="C();" class="name">
						<label>
							<span>사물에 자주 부딪힌다</span>
						</label>
					</dd>
					<dd onclick="C();" class="name">
						<label>
							<span>눈동자가 뿌옇게 변한다</span>
						</label>
					</dd>
					<dd onclick="C();" class="name">
						<label>
							<span>눈동자의 초점이 맞지 않는다</span>
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