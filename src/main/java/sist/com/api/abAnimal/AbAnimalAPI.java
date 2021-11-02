package sist.com.api.abAnimal;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import lombok.Getter;
import sist.com.api.API;
import sist.com.api.XmlParser;
import sist.com.api.apiEnum.AbAnimalEnum;

@Getter
public abstract class AbAnimalAPI implements API {

	private String baseURL = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/";
	private String serviceKey = "JzbaXINjH0i33pEwOnybMAJgFBipoeklYHGonTVn62eZSV7Qp72p1aO0ARQJr9xZ1FBsJKrwzwNuS6wUXPbUAw%3D%3D";
	protected XmlParser xmlParser;
	
	protected AbAnimalAPI() {
		super();
		xmlParser = XmlParser.getInstance();
	}
	
	public String makeURL(AbAnimalEnum apiEnum) {
		try {
			// URL
			StringBuilder sb = new StringBuilder(this.getBaseURL());
			sb.append(apiEnum.getApiName());
			// Service Key
			sb.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=" + this.getServiceKey());
			return sb.toString();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public String requestURL(String url) {
		try {
			URL requestURL = new URL(url);

			HttpURLConnection conn = (HttpURLConnection) requestURL.openConnection();

			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			conn.setReadTimeout(1000 * 60 * 100); // read time out 에러 방지... (for AbShelter)

			//System.out.println("Response code: " + conn.getResponseCode());

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

			//String data = sb.toString();
			//System.out.println(data);

			return sb.toString();
		} catch (IOException e) {
			e.printStackTrace();
			//System.out.println();
		}
		return null;
	}

	
	
	public List<Map<String, String>> processingData(String data, AbAnimalEnum apiEnum) {
		if (data == null)
			return null;

		try {
			return this.getXmlParser().getXmlDataFromString(data, apiEnum.getTagNames(), apiEnum.getDbColumns());
		} catch (ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
}
