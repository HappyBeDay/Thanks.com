package sist.com.api.abAnimal;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import lombok.Getter;
import sist.com.api.API;
import sist.com.api.XmlParser;

@Getter
public abstract class AbAnimalAPI implements API {

	private String baseURL = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/";
	private String serviceKey = "JzbaXINjH0i33pEwOnybMAJgFBipoeklYHGonTVn62eZSV7Qp72p1aO0ARQJr9xZ1FBsJKrwzwNuS6wUXPbUAw%3D%3D";
	protected XmlParser xmlParser;
	
	protected AbAnimalAPI() {
		super();
		xmlParser = XmlParser.getInstance();
	}
	
	@Override
	public String requestURL(String url) {
		try {
			URL requestURL = new URL(url);

			HttpURLConnection conn = (HttpURLConnection) requestURL.openConnection();

			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");

			System.out.println("Response code: " + conn.getResponseCode());

			BufferedReader rd;
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}

			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line);
			}
			rd.close();
			conn.disconnect();

			String data = sb.toString();
			System.out.println(data);

			return data;
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println();
		}
		return null;
	}
}
