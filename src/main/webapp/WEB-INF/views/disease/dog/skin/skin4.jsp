<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍울이 있다</title>
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
							
							document.getElementById("titleID").innerHTML ="피부 종양";
							document.getElementById("prID").innerHTML ="피부나 피하에 생기는 종양은 유선 종양 다음으로 발생률이 높은 종양이다. 양성에는 선종, 지방종, 상피종이 있고, 악성에는 편평상피암, 선암, 비만세포종 등 다양한 타입이 있다. 치료방법은 외과수술에 의한 절제가 일반적이다. 방사선 치료나 항암제를 투여하는 경우도 있다.";
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
								<label><span>피부나 피하에 멍울이 느껴진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>피부가 부풀어 혹처럼 되거나, 피부가 괴사한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label><span>털이 빠지고, 궤양이 되거나 부스럼이나 피부병 또는 상처처럼 보인다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							$('.disease-img').css('display', 'none');
							
							document.getElementById("titleID").innerHTML ="유선 종양";
							document.getElementById("prID").innerHTML ="암컷에게 발생하는 종양 중에서 가장 많은 것이 유선 종양으로, 악성인 경우가 소위 유방암이다. 나이가 많아질수록 유방암에 걸릴 위험률이 증가한다. 여성호르몬과 관련 있는 것으로 보이며 2.5세 전에 중성화 수술을 하면 발병률이 낮으며 노령의 암컷에게 발생률이 높은 경향이 있다. 치료방법으로는 종양만 수술하거나 전 유선을 잘라내거나, 경우에 따라서는 난소나 자궁을 적출하기도 한다. 악성인 경우에는 전이나 재발이 있을 수 있기 때문에 경과를 관찰해야 한다.";
							document.getElementById("imgId").src = "#";
							
							
							var location = document.querySelector('#titleID').offsetTop;
							window.scrollTo({top:location,  behavior:'smooth'});
						}
					</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label><span>복부나 유두 주변에 멍울이 생긴다</span></label>
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