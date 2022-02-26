<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물을 많이 마신다</title>
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
							document.getElementById("titleID").innerHTML = "만성신부전 (반려묘)";
							document.getElementById("prID").innerHTML = "만성신부전은 신장 기능이 떨어져 혈액 속의 요질소가 소변으로 잘 배설되지 않는 상태입니다. 따라서 신장은 소변의 양을 늘려 요질소를 배설하려고 합니다. 정상적인 경우에는 작은 양의 소변에도 요질소가 많이 함유되어 있습니다. 그러나 만성신부전인 고영이는 소변의 양은 많아도 요질소가 적은 량 함유되어 있기 때문에 결과적으로 다뇨증상이 생기게 됩니다.";
							document.getElementById("imgId").src = "resources/images/disease/cat/food/food_2_1.jpg";

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
								<label> <span>물을 많이 마신다</span></label>
							</dd>
							<dd onclick="A();" class="name">
								<label> <span>소변량이 많아진다</span></label>
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