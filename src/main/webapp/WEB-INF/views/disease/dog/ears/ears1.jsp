<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>귀를 털거나 긁는다</title>
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
							document.getElementById("titleID").innerHTML ="귀염증";
							document.getElementById("prID").innerHTML ="내분비 장애, 자가면역 부족, 알레르기성 피부질환, 귀지 형성이 주원인이며 통상 외이염, 중이염, 내이염 순으로 진행되며, 중이염까지 진행되었다면 전정기관리 손상되기도 합니다. 소독과 항생제 투여를 신속하게 해야 하고 심한 경우는 수술이 필요한 경우도 있습니다. ";
							document.getElementById("imgId").src = "resources/images/disease/dog/ears/ears_1.jpg";
							
							
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
								<span>구토를 한다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>귀가 벌겋게 부어오른다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>귀에서 냄새나는 분비물이 나온다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>귀의 털이 빠진다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
								<span>발이나 주변사물을 이용해 귀를 긁는다</span></label>
							</dd>
						</dl>
					</li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML ="진드기 감염";
							document.getElementById("prID").innerHTML ="야외 활동, 산책 중 진드기가 몸에 붙으면서 생기는 감염으로 고열과 식욕부진을 동반하고, 심하면 사망에 이를 수도 있다. 야외 활동시 풀숲은 가급적 피하고, 목욕 후 육안으로 진드기 유무를 확인하고 진드기 예방약과 백신을 통해 예방할 수 있습니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/ears/ears_2.jpg";
							
							
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
								<span>귀에서 냄새가 난다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label>
								<span>검은색 귀지가 많이 나온다</span></label>
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