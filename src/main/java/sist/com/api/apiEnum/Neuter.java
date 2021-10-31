package sist.com.api.apiEnum;

public enum Neuter {
	Y("yes"), N("no"), U("undefined");
	
	String name;
	private Neuter(String name) {
		this.name = name;
	}
}
