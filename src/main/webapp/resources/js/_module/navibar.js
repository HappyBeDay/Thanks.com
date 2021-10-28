/**
 * navibar.jsp를 위한 navibar.js 0. Thanks.com mainScreen_100_main 1. login
 * login_300_main 2. Join signUp_200_agreement 3. MyPage myPage_400_main 4.
 * Adopt adopt_500_main 5. Missing witnessMissing_600_main 6. Care
 * raise_700_search 7. Seminar seminar_800_main 8. Community
 * community_900_mainBoard
 */

console.log("link to navibar.js");
let _navibar;

window.onload = function() {
	// 변수 선언부
	let btnList = document.querySelector("div#navibar.container.px-4.px-lg-5");
	let id = document.getElementById("id");
	
	// 로그인 시 화면 변경
	if (!isEmpty(id.innerText)) {
		console.log("id값 확인 : " + id.value);

		// 로그인 한 화면으로 변경
		// 1. Login -> logOut
		// 2. signUp -> AdminPage // 권한 확인 필요.
		let login = btnList.querySelector("a[lang=login_300_main]");
		login.lang = "logout";
		login.innerText = "Logout"
		let signUp = btnList.querySelector("a[lang=signUp_200_agreement]");
		signUp.lang = "adminPage";
		signUp.innerText = "AdminPage";
		let welcome = btnList.querySelector("li#welcome");
		welcome.style.display = "";
		id.innerText += "님 반갑습니다^^*";
	} else {
		/* 1. MyPage hidden 속성 */
		// document.querySelector("a[lang=myPage_400_main]").setAttribute("type",
		// "hidden");
		btnList.querySelector("a[lang=myPage_400_main]").remove();
	}

	// 클릭시 이벤트 부여
	_navibar = btnList.querySelectorAll("a");
	for (let i = 0; i < _navibar.length; i++) {
		_navibar[i].addEventListener('click', function() {
			location.href = "/Thanks.com/autoLink/" + this.lang;
		});
	}

}
