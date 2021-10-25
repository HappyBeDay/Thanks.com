package sist.com.api.abAnimal;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import sist.com.api.apiEnum.AbAnimalEnum;

public class ApiSido extends AbAnimalAPI {
	// Field
	
	private AbAnimalEnum enumSido = AbAnimalEnum.SidoVO;
	private static ApiSido apiSido;

	// Construct
	private ApiSido() {
		super();
	}

	/* SingleTone */
	public static ApiSido getInstance() {
		if (apiSido == null) {
			return apiSido = new ApiSido();
		}
		return apiSido;
	}
	
	@Override
	public String makeURL() {
		try {
			// URL
			StringBuilder sb = new StringBuilder(this.getBaseURL());
			sb.append(enumSido.getApiName());
			// Service Key
			sb.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=" + this.getServiceKey());
			return sb.toString();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			System.out.println("ApiSido.makeURL");
		}
		return null;
	}

	@Override
	public List<Map<String, String>> processingDate(String data) {
		if(data == null) return null;
		try {
			return this.getXmlParser().getXmlDataFromString(data, enumSido.getTagNames(), enumSido.getDbColumns());
		} catch (ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Map<String, String>> updateDataBase() {
		return processingDate(requestURL(makeURL()));
	}
}
