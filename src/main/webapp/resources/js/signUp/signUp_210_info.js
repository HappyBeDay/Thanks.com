w/**
 * link to signUp_210_info.jsp
 */

console.log("link to signUp_210_info.js");

// class
let form;
let $id; // id
let $pw; // pw (2)
let $name; // name
let $email; // email
let $btn; // btn (2)
let $form;

// name
let $nick; // nickName
let $tel; // tel

let childWin;

function matchVariable() {
	$form = $("form.joinForm");
	// class
	$id = $form.find(".id");
	$pw = $form.find(".pw");
	$name = $form.find(".name");
	$email = $form.find(".email");
	$btn = $form.find(".btn");
	$birth = $form.find(".birth");

	// name
	$tel = $form.find("[name=tel]");
};

$(function() {
	let agree = "${agree}";
	if(agree === true){
		alert("약관동의를 진행하셔야합니다.");
		window.location.href = "signUp_200_agreement";
	}
	
	matchVariable();

	// id check
	$btn.click(function(e) {
		if (this.id === "idCheck") {
			// createForm([$id.val()], this.lang).submit();
			console.log("아이디 중복체크 팝업!!");
			childWin = window.open(this.lang, "아이디 중복체크",
					"width=500, height=500, top=100, left=200");
			// childWin.document.getElementById("ckId") = $id.val(); //생성순서때문에
			// 에러
			
		} else {
			e.preventDefault(e);
			console.log("회원가입 정보를 바탕으로 회원가입 시도!");

			if(!pwCheck()){
				alert("비밀번호를 확인해주세요.");
				return;
			}
			
			if(!emailCheck()){
				alert("이메일 주소를 정확히 입력해주세요.");
				return;
			}
			
			if(!birthCheck()){
				alert("생년월일을 8자리로 입력해주세요.");
				return;
			}
			
			if(!telCheck()){
				alert("전화번호를 확인해주세요.");
				return;
			}
			
			$form.submit();
		}
	});

});

function pwCheck(){
	let pw1 = $pw[0].value;
	let pw2 = $pw[1].value;
 	return !isEmpty(pw1) && pw1 == pw2;
}

function emailCheck(){
	let str = $email.val();
	return str.includes('@');
}

function birthCheck(){
	let date = $birth.val();
	return date.length == 8 ? true : false;
}

function telCheck(){
	let tel = $tel.val();
	return tel.substr(0,3)=="010" && (tel.length > 10 && tel.length < 13) ? true : false;
}
