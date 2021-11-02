package sist.com.api;

public class ApiTest {

	public static void main(String[] args) {
		System.out.println("API TEST START");
		String word = "http://localhost:8080/Thanks.com/adopt/abShelter?no=200";
		
		word = word.substring(0, word.lastIndexOf("?"));
		System.out.println(word);
		word += "?no=" + 1;
		System.out.println(word);
	}
	
}