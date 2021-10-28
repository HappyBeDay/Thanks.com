/**
 * 프로젝트 전반에 쓰일 함수(method)를 선언해두고 가져다 쓰자!
 */

/* get방식으로 던진 변수 받아오기 */
function getParameterByName(name) {
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]"); // 입력된 변수에 []를
	// 붙인다!
	let regex = new RegExp("[\\?&]" + name + "=([^&#]*)"); // 정규식을 만든다.
	let results = regex.exec(location.search); // 정규식 실행!
	return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g,
			" "));
}

// Ajax 호출! 매개변수 호출 순서 주의할 것. 
function getAjax(url, functions, type, data, dataType ){
	$.ajax({
		url : url,
		type : type,
		data : data,
		dataType : dataType,
		success : functions,
		error : function(request, status, error) {
			console.log("request.status : " + request.status);
			console.log("request.responseText : " + request.responseText);
			console.log("status : " + status);
			console.log("error : " + error);
		}
	});
}
