<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상처가 낫지않는다</title>
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
					document.getElementById("titleID").innerHTML ="편평상피암";
					document.getElementById("prID").innerHTML ="햇빛 때문에 피부암이 생깁니다. 특히 햇빛에 많이 노출되는 얼굴은 암이 많이 발생하는 부위입니다.  편평상피암은 긁어서 생긴 상처처럼 보입니다. 털이 하얀 고양이, 색이 옅은 고양이에게 발생할 확률이 높습니다. 주로 노령 고양이에게 생기지만, 중년 고양이에게도 발병합니다. 치료로는 종양크기와 종양의 진행 상태에 맞춰 치료하며, 경우에 따라서 외과수술도 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_3_1.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>A</b>증상
							</dt>
							<dd onclick="A();" class="name">
								<label> <span>부스럼이 생긴다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>울긋불긋한 종양이 생긴다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function B() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="면역부전";
					document.getElementById("prID").innerHTML ="에이즈에 감염되거나 당뇨병인 고양이들은 면연력이 떨어집니다. 이런 고양이들은 건강한 고양이라면 금방 나을 상처도 잘 낫지 않습니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_3_2.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>B</b>증상
							</dt>
							<dd onclick="B();" class="name">
								<label> <span>면연력이 떨어진다</span></label>
							</dd>
						</dl></li>
					<script type="text/javascript">
				function C() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="피부림프종";
					document.getElementById("prID").innerHTML ="가려움이 있는 플라크 모양의 병변이 특징입니다. 머리, 얼굴, 다리 등에 병변이 생기며, 가려워서 긁기 때문에 궤양이 됩니다. 노령고양이에게 발생할 확률이 높지만, 젊은 고양이에게도 발병헸다는 보고가 있습니다. 고양이에이즈바이러스, 고양이백혈병바이러스와도 관계가 있다고 합니다.";
					document.getElementById("imgId").src = "resources/images/disease/cat/skin/skin_3_3.jpg";
					
					
					var location = document.querySelector('#titleID').offsetTop;
					window.scrollTo({top:location,  behavior:'smooth'});
				}
			</script>
					<li class="grid-12"><dl class="search-category-list">
							<dt class="title title--small">
								<b>C</b>증상
							</dt>
							<dd onclick="C();" class="name">
								<label> <span>궤양이 생긴다</span></label>
							</dd>
							<dd onclick="C();" class="name">
								<label> <span>몸을 긁는다</span></label>
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