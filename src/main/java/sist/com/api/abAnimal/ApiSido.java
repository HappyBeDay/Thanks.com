package sist.com.api.abAnimal;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Repository;
import org.xml.sax.SAXException;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.dao.SidoDao;

@Repository
public class ApiSido extends AbAnimalAPI {
	// Field
	private AbAnimalEnum apiEnum = AbAnimalEnum.SidoVO;
	private SidoDao sidoDao;
	
	// Contstruct
	@Inject
	private ApiSido(SidoDao sidoDao) {
		super();
		this.sidoDao = sidoDao;
		//this.xmlParser = xmlParser;
	}
	
	@Override
	public String makeURL() {
		try {
			// URL
			StringBuilder sb = new StringBuilder(this.getBaseURL());
			sb.append(apiEnum.getApiName());
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
	public List<Map<String, String>> processingData(String data) {
		if (data == null)
			return null;
		try {
			return this.getXmlParser().getXmlDataFromString(data, apiEnum.getTagNames(), apiEnum.getDbColumns());
		} catch (IOException | ParserConfigurationException | SAXException e ) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	@Override
	public int updateDataBase() {
		return sidoDao.insertApiData(processingData(requestURL(makeURL())));
	}
}
