<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배가 부풀어 오른다</title>
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
							document.getElementById("titleID").innerHTML ="복막염";
							document.getElementById("prID").innerHTML ="복막염은 위, 소장 그리고 대장과 같은 여러 장기들이 자리잡고 있는 복강을 둘러싸고 있는 얇은 막에 염증이 생겨 발생하는 질병으로, 통증이 심한 경우가 많기 때문에 굉장히 예민해져 있는 경우가 많습니다. 발병신 신속한 수술을 요하는 질병입니다.";
							document.getElementById("imgId").src = "resources/images/disease/dog/food/food3_A.jpg";
							
							
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
									<span>기도하는 듯한 자세를 취한다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>기력이 없다</span>
								</label>
							</dd>
							<dd onclick="A();" class="name">
								<label>
									<span>구토를 한다</span>
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
		</div>
	</div>
</body>
</html>