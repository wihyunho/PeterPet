<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설사</title>
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
							document.getElementById("titleID").innerHTML = "세균성 설사";
							document.getElementById("prID").innerHTML = "살모넬라, 캠필로박터, 대장균 등이 설사를 유발하며 또는 고양이의 몸이 허약해졌을 때 장 속의 일반 세균이 세균성 설사를 일으킬 수 있습니다. 치료방법으로는 상태를 지속적으로 살피면서 원인균에 효과가 있는 항생제를 투여합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_1_1.jpg";

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
								<label> <span>설사를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function B() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "바이러스성설사 (반려묘)";
							document.getElementById("prID").innerHTML = "바이러스성 설사에는 파보바이러스감염증과 코로나바이러스감염증이 있습니다. 파보바이러스는 골수도 손상시켜 골수 기능을 떨어뜨리고, 범백혈구 감소를 가져옵니다. 이 질병은 백신이 있으므로 예방이 가능합니다. 코로나 바이러스는 고양이의 혈액검사로 항체값을 측정할 수 있습니다. 이 질병 또한 백신으로 예방 가능합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_1_2.jpg";

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
								<label> <span>설사를 한다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>대변에 점막이 덮여 있다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>운동성이 떨어진다</span></label>
							</dd>
							<dd onclick="B();" class="name">
								<label> <span>열이 난다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function C() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "고양이 백혈병 바이러스";
							document.getElementById("prID").innerHTML = "레트로바이러스가 원인이며 이 바이러스는 림프계나 골수로 감염되어 퍼지는데, 장도 감염이 됩니다. 장의 상피점막이 손상되어 장염이 되고, 그 결과 설사를 하게 됩니다. 백혈병 바이러스는 소화관림프종 같은 악성종양을 만듭니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_1_3.jpg";

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
								<label> <span>설사를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function D() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "식이성 설사";
							document.getElementById("prID").innerHTML = "고양이는 특이한 기호를 갖고 있어 우유의 유당을 분해하는 효소가 없기 때문에 우유를 먹으면 설사를 하고, 향신료가 들어간 음식물을 먹고 설사를 하기도 합니다. 또한 씹기 좋은 플라스틱, 끈, 휴지 등을 씹어 삼킬 경우 설사를 합니다. 치료방법으로는 고양이 사료를 포함한 식품 알레르기가 있는  지 수의사의 지도 아래 해당 알레르기에 따라 처방식을 바꿔 치료합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_1_4.jpg";

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
								<label> <span>설사를 한다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>소화 기능이 떨어진다</span></label>
							</dd>
							<dd onclick="D();" class="name">
								<label> <span>구토를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function E() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "약물성 설사";
							document.getElementById("prID").innerHTML = "고양이는 항생제를 투여했을 때 설사를 하기도 합니다. 항생제는 세균 감염을 치료할 때 사용하는 약품이지만, 정상적인 장내 세균에 작용하여 설사를 일으킵니다. 이럴 경우 약물 투약을 중단합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_1_5.jpg";

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
								<label> <span>설사를 한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label> <span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label> <span>구토를 한다</span></label>
							</dd>
							<dd onclick="E();" class="name">
								<label> <span>구역질을 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function F() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "결장염 (대장염)";
							document.getElementById("prID").innerHTML = "결장염(대장염)에는 2가지 갑상선기능항진증이 원인인 설사와 장의 림프육종이 원인인 설사가 있습니다. 10세 이상의 고양이에게 갑상선기능항진증이 원인인 설사는 만성이 되기도 합니다. 잘 먹지만 살이 찌지 안흥며 많이 움직이고 많은 양의 설사를 하게 됩니다. 장의 림프육종이 원인인 설사는 소화관에 생기는 악성종양의 하나로, 고양이 백혈병 바이러스가 림프육종이 생기는 원인입니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_1_6.jpg";

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
								<label> <span>변에 점액이 있다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label> <span>붉은 피가 섞인 묽은 변을 본다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label> <span>체중이 감소한다</span></label>
							</dd>
							<dd onclick="F();" class="name">
								<label> <span>설사를 한다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
						function G() {
							$('.disease-container').css('display', 'block');
							document.getElementById("titleID").innerHTML = "기생충 감염";
							document.getElementById("prID").innerHTML = "위생 상태가 좋지 않은 곳에서 발생하기 쉬우며,  다른 바이러스성 질환이나 진드기에도 감염되어 있을 수 있습니다. 기생충이 다른 장기로 이동하여 이상 증상을 유발할 수 있습니다.  약물 치료를 통해 치료받을 수 있으며, 비교적 치료가 수월한 경우가 많습니다.  재감염되지 않도록 위생관리를 철저히 해주셔야 하며, 심하게 감염된 경우에는 치료를 통해 기생충이 갑자기 죽으면서 장폐색을 유발하는 경우도 있으니 주의하셔야 합니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/intes/intes_1_7.jpg";

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
								<label> <span>구토를 한다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label> <span>복부가 부풀어 오른다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label> <span>식욕부진이 나타난다</span></label>
							</dd>
							<dd onclick="G();" class="name">
								<label> <span>체중이 감소한다</span></label>
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