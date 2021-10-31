package sist.com.api;

public class ApiTest {

	public static void main(String[] args) {
		//String weight = "4.6.8.6(Kg)";
		//String weight = "4.6(KG)";
		String weight = "0.6,(Kg)";
		weight = weight.substring(0, weight.indexOf("(")).trim();
		weight = weight.replace(",", "");
		System.out.println(weight);
		int sep = weight.indexOf(".");
		if (sep > 0)
			weight = weight.substring(0, sep) + "." + weight.substring(sep).replace(".", "");
		System.out.println(weight);
	}
}