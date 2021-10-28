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

	_navibar = document.querySelector("div#navibar.container.px-4.px-lg-5")
			.querySelectorAll("a");
	for (let i = 0; i < _navibar.length; i++) {
		_navibar[i].addEventListener('click', function() {
			// console.log(this.lang);
			// alert("/Thanks.com/autoLink/" + this.lang);
			location.href = "/Thanks.com/autoLink/" + this.lang;
		});
	}

}
