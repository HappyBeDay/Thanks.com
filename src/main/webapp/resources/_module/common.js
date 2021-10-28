/**
 * 프로젝트 전반에 쓰일 함수(method)를 선언해두고 가져다 쓰자!
 */

/**
 * @param name :
 *            get방식으로 던진 변수이름
 * @returns get방식으로 던진 변수 받아오기
 */
function getParameterByName(name) {
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]"); // 입력된 변수에 []를
	// 붙인다!
	let regex = new RegExp("[\\?&]" + name + "=([^&#]*)"); // 정규식을 만든다.
	let results = regex.exec(location.search); // 정규식 실행!
	return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g,
			" "));
}

/**
 * @param url
 * @param functions >
 *            callback function
 * @param type >
 *            GET, POST (default = GET)
 * @param data >
 *            ajax로 던질 params
 * @param dataType >
 *            text, json, script, html (default = text)
 * @returns callback function : ajax성공시 불릴 함수 이름 Ajax 호출! 매개변수 호출 순서 주의할 것.
 */
function getAjax(url, functions, type, data, dataType) {
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

/**
 * @param params
 * @param url
 * @returns url없으면 null 반환.
 */
function createForm(params, url) {
	if (isEmpty(url)) {
		console.log("url을 입력해주세요.");
		return null;
	}
	let _form = document.createElement('form');
	_form.setAttribute('method', 'post');
	_form.setAttribute('action', url);

	return setPost(params, _form);
}

/**
 * @param params
 * @param _form 
 * @returns _form이 없으면 null 반환.
 */
function setPost(params, _form) {
	if(isEmpty(_form)) return null;
	
	for ( let key in params) {
		let hiddenField = document.createElement('input');
		hiddenField.setAttribute('type', 'hidden');
		hiddenField.setAttribute('name', key);
		hiddenField.setAttribute('value', params[key]);
		_form.appendChild(hiddenField);
	}

	document.body.appendChild(_form);
	return _form;
}

/**
 * @param str
 * @returns boolean 문자열이 비었는지 확인하여 boolean으로 반환
 */
function isEmpty(str) {
	if (typeof str == "undefined" || str == null || str == "") {
		return true;
	} else {
		return false;
	}
}

/**
 * @param str
 * @param defaultStr
 * @returns str 문자열이 비었는지 확인하여 비었으면 지정해준 값으로 변경하여 반환
 */
function nvl(str, defaultStr) {
	if (isEmpty(str)) {
		str = defaultStr;
	}
	return str;
}
