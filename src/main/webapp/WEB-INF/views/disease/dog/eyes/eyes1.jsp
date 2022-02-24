<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>눈꺼풀이 벌겋게 붓는다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="세균성 안감염";
					document.getElementById("prID").innerHTML ="세균성 안겸염은 눈꺼플에 염증이 생겨 붉어지고 부어오를 증상을 동반합니다. 세균성 김염에 의해 주로 발병되고 반려견이 간지러움으로 인한 스트레스를 많이 받을 수 있으므로 빠른 병원 내원이 필요합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes1_A.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
			<li class="grid-12">
				<dl class="search-category-list">
					<dt class="title title--small">
						<b>A증상</b>
					</dt>
					<dd onclick="A();" class="name">
						<label>
							<span>고름과 같은 분비물이 나온다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>눈꺼풀에 다래끼 같은 것이 생긴다</span>
						</label>
					</dd>
				</dl>
			</li>	
			<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="알레르기성 안검염";
					document.getElementById("prID").innerHTML ="알레르기성 안겸염은 눈꺼플에 염증이 생겨 붉어지고 부어오를 증상을 동반합니다. 특정 음식이나 알러지 반응에 의해 주로 발병되고 반려견이 간지러움으로 인한 스트레스를 많이 받을 수 있으므로 빠른 병원 내원이 필요합니다. ";
					document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes1_B.jpg";
					
					var location = document.querySelector('.disease-container').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
			<li class="grid-12">
				<dl class="search-category-list">
					<dt class="title title--small">
						<b>B</b>증상
					</dt>
					<dd onclick="B();" class="name">
						<label>
							<span>주위의 털이 빠진다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>바닥이나 발을 이용해 귀를 긁는다</span>
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