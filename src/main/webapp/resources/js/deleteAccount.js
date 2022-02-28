function PasswordCheckFuntion() {
	var password = $('#nowPassword').val(); //사용자가 input태그에 넣은 값중 id가 userID인 것을 가져온다.
	
	$.ajax({
		type : 'POST',
		url : './UserPasswordCheckServlet',
		async: false,
		data : {
			Password : password
		}, //{parameterName, data} 형식
		success : function(result) {
			if (result == 1) {
				data =  false;
			} else {
				data = true;
			}
		}
	});
	return data;
}

//submit전에 모든 예외처리를 확인하는 함수
function finalCheck() {

	//현재 비밀번호가 맞는지 확인
	if(PasswordCheckFuntion()){
		$('#checkMessage').html('현재 비밀번호가 일치하지 않습니다.');
		$('#checkType').attr('class', 'modal-content panel-warning');
		$('#checkModal').modal("show");
		return false;
	}

}



//a태그를 post 방식으로 전송
function mySubmit(val){
  var f = document.myForm;
  f.contentPage.value = val;
  f.submit();
}