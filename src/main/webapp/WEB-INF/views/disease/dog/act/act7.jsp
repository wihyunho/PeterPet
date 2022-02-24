<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산책을 나가기 싫어한다</title>
<link rel="stylesheet" href="resources/css/petraschu.css">
</head>
<body>
	<div class="container">
		<ul class="grid">
			<script type="text/javascript">
				function A() {
					$('.disease-container').css('display', 'block');
					document.getElementById("titleID").innerHTML ="심장질환";
					document.getElementById("prID").innerHTML ="반려견에게 자주 발생하는 심장질환은 이첨판 또는 삼첨판 폐쇄부전이라고 불리는 심장 판막질환이 70~75%로 가장 많고, 8%는 심근질환입니다. 정기적인 심장 검사를 통해 예방할 수 있습니다.";
					document.getElementById("imgId").src = "resources/images/disease/dog/act/act7_A.jpg";
					
					
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
							<span>기침을 한다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>기력이 없다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>숨을 헐떡인다</span>
						</label>
					</dd>
					<dd onclick="A();" class="name">
						<label>
							<span>흥분하거나 운동을 하면 혀가 파래진다</span>
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