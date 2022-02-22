<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>눈물을 많이 흘린다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="알레르기가 심한 경우";
					document.getElementById("prID").innerHTML ="음식 알레르기 또는 계절성 알레르기로 인해 발생하며, 너무나 많은 원인이 있을 수 있으므로 알레르기 검사로 정확한 원인 판단 후 치료가 필요합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes3_A.png";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
			<li class="grid-12"><dl class="search-category-list">
					<dt class="title title--small">
						<b>A</b>증상
					</dt>
					<dd onclick="A();"  class="name">
						<label>
							<span>눈꺼풀이 벌겋게 붓는다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
						<span>피부를 계속해서 긁는다</span></label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>맑은 콧물이 나온다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>기침을 한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>피부를 계속해서 핥는다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>잘 때 코를 심하게 곤다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>피부가 벌겋게 변한다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="각막상처";
					document.getElementById("prID").innerHTML ="각막상처는 검은자위 부분이 손상된 질병입니다. 반려견이 눈을 긁거나 사물에 부딪혀 생기는 경우가 많으며 향후 심각한 각막궤양으로 발전될 수 있습니다. 상처에 2차 감염되는 경우가 있어 적절한 안과적 치료가 요구됩니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes3_B.png";
					
					
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
							<span>흰자위가 심하게 충혈된다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>눈꺼풀이 떨린다</span>
						</label>
					</dd>
					<dd onclick="B();" class="name">
						<label>
							<span>눈을 잘 뜨지 못한다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="세균 감염";
					document.getElementById("prID").innerHTML ="비교적 가벼운 안과적 질병이므로 빠른 치료를 필요로 합니다. 그대로 둘 경우 결막염, 안검염 등 심각하고 고질적인 질환으로 발병할 수 있으니, 초기 치료가 매우 중요합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes3_C.jpg";
					
					
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
							<span>누렇게 찐득한 눈곱이 많이 낀다</span>
						</label>
					</dd>
					<dd onclick="C();" class="name">
						<label>
							<span>흰자위가 충혈된다</span>
						</label>
					</dd>
				</dl>
			</li>
			<script type="text/javascript">
				function D() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="각막염";
					document.getElementById("prID").innerHTML ="각막에 혈관과 염증세포가 존재하는 것으로  자가면역성 질병이나 자외선 노출, 안구 상처 등의 원인으로 발병합니다. 표층 각막염이 심층으로 변화한 경우, 깊은 각막궤양이나 실질의 농양으로 심층성 각막염이 될 수 있습니다. 안약과 항생제 치료, 수술로 치료 가능합니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/eyes/eyes3_D.jpg";
					
					
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
							<span>눈을 자주 깜빡인다</span>
						</label>
					</dd>
					<dd onclick="D();" class="name">
						<label>
							<span>눈을 자주 비빈다</span>
						</label>
					</dd>
					<dd onclick="D();" class="name">
						<label>
							<span>눈꺼풀이 떨린다</span>
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