package sist.com.api.apiEnum;

public enum Sex {
	F("Female"), M("Male"), Q("Queer");
	
	String name;
	private Sex(String name) {
		this.name = name;
	}
}
