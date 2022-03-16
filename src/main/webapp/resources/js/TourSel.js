function main() {
    var a = document.getElementById("test3");
    var b = document.getElementById("test4");
    a.innerHTML;
    b.innerHTML;
    if(a.innerHTML != undefined ||  b.innerHTML != undefined){
    startXHR(); //function startXHR로 이동
    }
    else{
        window.location.reload(true);
    }
}

function getParam(sname) {
	params = location.search.substr(location.search.indexOf("?") + 1);
	var sval = "";
	params = params.split("&");
	for (var i = 0; i < params.length; i++) {
		temp = params[i].split("=");
		if ([temp[0]] == sname) { sval = temp[1]; }
	}
	return sval;
}
//////////////////////

var xhrD;


var urlD = 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon'; /*URL*/
urlD += "?ServiceKey=" + "Bko8yvz3KtGQk46gPKevjyb3G14HeLUyIxe9zAbgF50BrSG7DZ0%2FNqIrBLmNu%2Fbc3J%2FqFjbxBGAKuREN%2FPOAYg%3D%3D";
urlD += "&numOfRows=";
urlD += "&pageNo=";
urlD += "&MobileOS=ETC";
urlD += "&MobileApp=AppTest";
urlD += "&contentId=" + getParam("code");
urlD += "&defaultYN=Y";
urlD += "&firstImageYN=Y";
urlD += "&addrinfoYN=Y";
urlD += "&overviewYN=Y";



function createXHR() {
	if (window.ActiveXObject) {
		// 브라우저 IE (뉴버전 Msxml2.XMLHTTP / Microsoft.XMLHTTP)
	
		xhrD = new ActiveXObject("Msxml2.XMLHTTP");
	} else {
		// 그 외 브라우저
		
		xhrD = new XMLHttpRequest(); // xhr을 얻음
	}
}

function startXHR() {
	createXHR();

	xhrD.open('GET', urlD, true);
	xhrD.onreadystatechange = function() {
		if (xhrD.readyState == 4) {
			if (xhrD.status == 200) {
				process();
			}
		}
	}

	xhrD.send("");

}

function process() {

	
	var statusD = xhrD.status;	// 상태 200
	var headersD = xhrD.getAllResponseHeaders;
	var dataXD = xhrD.responseXML;

	// json으로 변환

	var dataD = xmlToJson.parse(dataXD);


	var itemD = dataD.response["body"].items.item;	// 공통정보
	//	var testt = item.sponsor1;
	//	var test22 = item.chkpet;


	///////////
	var arrayD = {		
		"<img src='": itemD.firstimage + "' style=\"width: 100%\"><hr>",
		"<b>제목 </b><br>": itemD.title+"<hr>",
		"<b>주소 </b><br>": itemD.addr1 +"<hr>",	
		"<b>홈페이지 </b><br>": itemD.homepage+"<hr>",
		"<b>설명 </b><br>": itemD.overview+"<hr>"
	};
	///////////
	
	var putD = "<ul>"
	for (var key in arrayD) {
		if (arrayD[key] != undefined && String(arrayD[key]).indexOf("undefined") == -1  ){
			putD += "<ul><li>" + key + arrayD[key] + "</li></ul>";
		}

	}
	putD += "</ul>"
	
	///////////
	/*
	var putD = "<ul>"
	for (var key in itemD) {
		putD += "<li>" + key + "<br>" + itemD[key] + "</li>";

	}
	putD += "</ul>"

	var putP = "<ul>"
	for (var key in itemP) {
		putP += "<li>" + key + "<br>" + itemP[key] + "</li>";

	}
	putP += "</ul>"
	*/
	document.getElementById("test3").innerHTML = putD;
	//console.log(data);
	//console.log(test);
	console.log(itemD);
}

function back() {
	history.back();
}