package sist.com.api.abAnimal;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Repository;
import org.xml.sax.SAXException;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.dao.SidoDao;
import sist.com.dao.SigunguDao;

@Repository
public class ApiSigungu extends AbAnimalAPI {
	// Field
	private AbAnimalEnum apiEnum = AbAnimalEnum.SigunguVO;

	@Inject
	private SigunguDao sigunguDao;

	@Inject
	private SidoDao sidoDao;

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
		} catch (ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	private List<Integer> getPkSet() {
		return new ArrayList<Integer>(sidoDao.selectPKColumnReturnSet());
	}

	private List<String> requiredKey() {
		List<String> repeat = new ArrayList<String>();

		String[] items = apiEnum.getRequiredItems();
		List<Integer> keys = getPkSet();
		for (int i = 0; i < keys.size(); i++) {
			for (int j = 0; j < items.length; j++) {
				repeat.add("&" + items[j] + "=" + keys.get(i));
			}
		}
		return repeat;
		// System.out.println(items.length);
		// System.out.println(keys.size());
		// System.out.println("i : " + i + "\nj : " + j);
		// System.out.println(repeat.get(items.length * i + j));
	}

	@Override
	public int updateDataBase() {
		System.out.println("SigunguDao : " + sigunguDao);

		int cnt = 0;

		String baseURL = makeURL();
		List<String> repeat = requiredKey();

		for (int i = 0; i < repeat.size(); i++) {
			cnt += sigunguDao.insertApiData(processingData(requestURL(baseURL + repeat.get(i))));
		}

		return cnt;
	}
}
