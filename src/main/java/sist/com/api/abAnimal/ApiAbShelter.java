package sist.com.api.abAnimal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.dao.AbShelterDao;
import sist.com.dao.SigunguDao;
import sist.com.vo.SigunguVO;

@Component
public class ApiAbShelter extends AbAnimalAPI {
	// Field
	private AbAnimalEnum apiEnum = AbAnimalEnum.AbShelterVO;
	private SigunguDao sigunguDao;
	private AbShelterDao abShelterDao;
	private List<SigunguVO> sigunguList;

	// Contstruct
	@Inject
	public ApiAbShelter(SigunguDao sigunguDao, AbShelterDao abShelterDao) {
		super();
		this.sigunguDao = sigunguDao;
		this.abShelterDao = abShelterDao;
	}

	@Override
	public String makeURL() {
		return super.makeURL(apiEnum);
	}
	
	// makeURL에 합쳐도 되는 부분.
	private List<String> addKey() {
		String[] items = apiEnum.getRequiredItems();
		List<String> repeat = new ArrayList<String>();
		// System.out.println("requiredKey method Dao Call!");

		// 행 < sigunguCode, sidoCode >
		List<SigunguVO> requiredList = sigunguList;
		// System.out.println(requiredList);

		for (int i = 0; i < requiredList.size(); i++) {
			SigunguVO sigungu = requiredList.get(i);
			String required = "&" + items[0] + "=" + sigungu.getSidoCode() + "&" + items[1] + "="
					+ sigungu.getSigunguCode();
			repeat.add(required);
		}
		return repeat;
	}

	@Override
	public List<Map<String, String>> processingData(String data) {
		return super.processingData(data, apiEnum);
	}

	

	@Override
	public int updateDataBase() {
		System.out.println("AbShelterDao : " + abShelterDao);

		String baseUrl = makeURL();
		sigunguList = sigunguDao.getCodeList();
		List<String> repeat = addKey();

		int cnt = 0;

		for (int i = 0; i < repeat.size(); i++) {
			List<Map<String, String>> mapList = processingData(requestURL(baseUrl + repeat.get(i)));

			String sidoCode = String.valueOf(sigunguList.get(i).getSidoCode());
			String sigunguCode = String.valueOf(sigunguList.get(i).getSigunguCode());

			//System.out.println(mapList.size());
			for (int j = 0; j < mapList.size(); j++) {
				Map<String, String> map = mapList.get(j);
				map.put("sidoCode", sidoCode);
				map.put("sigunguCode", sigunguCode);
			}
			// System.out.println(baseUrl + repeat.get(i));
			cnt += abShelterDao.insertApiData(mapList);
		}

		return cnt;
	}

}
