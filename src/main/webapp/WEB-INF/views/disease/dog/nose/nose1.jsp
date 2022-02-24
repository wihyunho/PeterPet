<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콧물을 많이 흘린다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="세균 및 바이러스 감염";
					document.getElementById("prID").innerHTML ="반려견이 콧물이 나는 경우 가장 흔한 원인은 바이러스, 세균, 진균 등에 의한 감염이다. 일반 엑스레이 및 치과 엑스레이검사, 비강 내시경검사, CT검사, 콧물의 세균/곰팡이 배양검사 및 세포학검사, 비강점막 조직검사 등 여러 검사를 통해 비교적 정확한 원인을 찾을 수 있다. 검사 이후에는 일반적으로 항생제, 항진균제, 소염제 등의 약물처방으로 치료를 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/nose/nose1_A.jpg";
					
					
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
							<span>코피가 난다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>누렇고 탁한 콧물이 난다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>기침을 한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>숨을 쉬기 힘들어한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>코에서 악취가 난다</span>
						</label>
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
</body>
</html>