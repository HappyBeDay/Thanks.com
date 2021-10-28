package sist.com.controller._module;

public enum SiteURL {
	main("/mainScreen/mainScreen_100_main"),
	login("/login/login_300_main"),
	adopt("/adopt/adopt_500_main"),
	community("/community_900_mainBoard"),
	myPage("/myPage/myPage_500_main"),
	raise("/raise/raise_700_search"),
	seminar("/seminar/seminar_800_main"),
	signUp("/signUp/signUp_200_agreement"),
	witnessMissing("/witnessMissing/witnessMissing_600_main");
	
	
	public String url;
	SiteURL(String url) {
		this.url = url;
	}
}
