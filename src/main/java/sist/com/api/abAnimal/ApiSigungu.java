package sist.com.api.abAnimal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.dao.SigunguDao;

@Component
public class ApiSigungu extends AbAnimalAPI {

	// Field
	private AbAnimalEnum apiEnum = AbAnimalEnum.SigunguVO;
	private ApiSido apiSido;
	private SigunguDao sigunguDao;

	@Inject
	public ApiSigungu(ApiSido apiSido, SigunguDao sigunguDao) {
		super();
		this.apiSido = apiSido;
		this.sigunguDao = sigunguDao;
	}

	@Override
	public String makeURL() {
		return super.makeURL(apiEnum);
	}

	@Override
	public List<Map<String, String>> processingData(String data) {
		return processingData(data, apiEnum);
	}

	private List<String> addKeys() {
		List<String> repeat = new ArrayList<String>();

		String item = apiEnum.getRequiredItems()[0];
		List<Integer> keys = apiSido.getPkList();
		for (int i = 0; i < keys.size(); i++) {
			repeat.add("&" + item + "=" + keys.get(i));

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
		List<String> repeat = addKeys();

		for (int i = 0; i < repeat.size(); i++) {
			cnt += sigunguDao.insertApiData(processingData(requestURL(baseURL + repeat.get(i))));
		}

		return cnt;
	}

}
