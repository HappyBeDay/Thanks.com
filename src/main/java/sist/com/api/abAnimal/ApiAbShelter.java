package sist.com.api.abAnimal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.dao.AbShelterDao;
import sist.com.vo.SigunguVO;

@Repository
public class ApiAbShelter extends AbAnimalAPI {
	// Field
	private AbAnimalEnum apiEnum = AbAnimalEnum.AbShelterVO;
	private ApiSigungu apiSigungu;
	private AbShelterDao abShelterDao;

	// Contstruct
	@Inject
	private ApiAbShelter(ApiSigungu apiSigungu, AbShelterDao abShelterDao) {
		super();
		this.apiSigungu = apiSigungu;
		this.abShelterDao = abShelterDao;
	}

	@Override
	public String makeURL() {
		return super.makeURL(apiEnum);
	}

	@Override
	public List<Map<String, String>> processingData(String data) {
		return super.processingData(data, apiEnum);
	}

	private List<String> requiredKey() {
		String[] items = apiEnum.getRequiredItems();
		List<String> repeat = new ArrayList<String>();
		//System.out.println("requiredKey method Dao Call!");

		// 행 < sigunguCode, sidoCode >
		List<SigunguVO> requiredList = apiSigungu.getRequriedList();
		//System.out.println(requiredList);

		for (int i = 0; i < requiredList.size(); i++) {
			SigunguVO sigungu = requiredList.get(i);
			String required = "&" + items[0] + "=" + sigungu.getSidoCode() + "&" + items[1] + "=" + sigungu.getSigunguCode();
			repeat.add(required);
		}

		return repeat;
	}

	@Override
	public int updateDataBase() {
		System.out.println("AbShelterDao : " + abShelterDao);

		String baseUrl = makeURL();
		List<String> repeat = requiredKey();
		//System.out.println(repeat.size());

		//System.out.println(baseUrl);
		int cnt = 0;
		
		for (int i = 0; i < repeat.size(); i++) {
			System.out.println(baseUrl + repeat.get(i));
			cnt += abShelterDao.insertApiData(processingData(requestURL(baseUrl + repeat.get(i))));
		}
		

		return cnt;
	}

}
