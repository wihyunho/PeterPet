<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다치지 않았는데 보라색 멍이 들었다</title>
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
							
							document.getElementById("titleID").innerHTML ="혈소판 감소증";
							document.getElementById("prID").innerHTML ="출혈이 생겼을 때 혈액을 응고시키는 작용을 하는 혈소판이 감소하여 생기는 질병입니다. 완치는 불가능하지만 치료에 따라 증상을 완화시킬 수 있습니다. 빈혈이 심할 때에는 수혈을 하는 것이 좋지만, 혈액형이 적합하고 혈액을 제공하는 개가 가까이 있어야만 가능합니다. 치료는 장기간에 걸쳐 진행되는 경우가 종종 있습니다.";
							document.getElementById("imgId").src = "#";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>	
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label><span>피를 토하거나 코피가 멈추기 않는다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>소변이나 대변에 피가 섞여나온다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>입이나 코 등의 점막 등에 멍 같은 보라색 출혈반이 보인다</span></label>
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