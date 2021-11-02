package sist.com.api.abAnimal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.api.apiEnum.BreedType;
import sist.com.dao.AbAnimalDao;
import sist.com.dao.AbShelterDao;
import sist.com.dao.AbStateDao;
import sist.com.dao.BreedDao;

@Component
public class ApiAbAnimal extends AbAnimalAPI {
	// Field
	private AbAnimalEnum apiEnum = AbAnimalEnum.AbandonedAnimalVO;
	private ArrayList<Long> abShelterKeys;

	private AbAnimalDao abAnimalDao;
	private AbShelterDao abShelterDao;
	private AbStateDao abStateDao;
	private BreedDao breedDao;

	// constuctor
	@Inject
	public ApiAbAnimal(AbShelterDao abShelterDao, AbAnimalDao abAnimalDao, AbStateDao abStateDao, BreedDao breedDao) {
		this.abAnimalDao = abAnimalDao;
		this.abShelterDao = abShelterDao;
		this.abStateDao = abStateDao;
		this.breedDao = breedDao;
	}

	@Override
	public String makeURL() {
		return super.makeURL(apiEnum);
	}

	@Override
	public List<Map<String, String>> processingData(String data) {
		return super.processingData(data, apiEnum);
	}

	@Override
	public int updateDataBase() {
		System.out.println("AbAnimalDao : " + abAnimalDao);
		List<String> repeat = addKeys();

		int cnt = 0;
		// repeat!!
		for (int i = 0; i < repeat.size(); i++) {
			// 하나의 URL만 수행해보자.
			String required = repeat.get(i);

			System.out.println(makeURL() + required);
			List<Map<String, String>> list = processingData(requestURL(makeURL() + required));

			for (Map<String, String> map : list) {
				System.out.println(map);
				map = Regularization(map, abShelterKeys.get(i));
			}
			cnt += abAnimalDao.insertApiData(list);
			abShelterDao.updateApiDate(list);
		}
		System.out.println("종료합니다.");
		return cnt;
		// List<Map<String, String>> mapList = processingData(requestURL(baseUrl +
		// repeat.get(i)));
		// return cnt;
	}

	// 유기동물 API 데이터 정규화.
	private Map<String, String> Regularization(Map<String, String> map, Long abShelterCode) {
		// 1. age
		String age = map.get("abAge");
		map.put("abAge", age.substring(0, age.indexOf("(")).trim());

		// 2. breedCode
		String breed = map.get("breedCode");
		int breedSep = breed.indexOf("]"), breedTypeCode;
		String breedType = breed.substring(breed.indexOf("[") + 1, breedSep).trim();
		if (breedType.equals(BreedType.개.name()) || breedType.equals(BreedType.고양이.name())) {
			breedTypeCode = BreedType.valueOf(breedType).code;
		} else {
			breedTypeCode = BreedType.기타.code;
		}
		map.put("breedTypeCode", String.valueOf(breedTypeCode));

		// System.out.println(breed);
		// System.out.println(breed.substring(breedSep + 1).trim());
		// 축종: 기타축종, 품종 널값...?
		map.put("breedCode", String.valueOf(breedDao.selectCodeFromName(breed.substring(breedSep + 1).trim())));

		// 3. 중성화, 성별은 입력된 그대로 입력하기로 함.
		// 4. stateCode
		map.put("stateCode", String.valueOf(abStateDao.insertApiDate(map.get("stateCode"))));

		// 5. abWeight
		String weight = map.get("abWeight");
		weight = weight.substring(0, weight.indexOf("(")).trim();
		weight = weight.replace(",", "");
		int sep = weight.indexOf(".");
		if (sep > 0)
			weight = weight.substring(0, sep) + "." + weight.substring(sep).replace(".", "");
		map.put("abWeight", weight);

		// 6. abShelterCode
		map.put("abShelterCode", String.valueOf(abShelterCode));

		// 7. 8. managerTel, abShelterTel 전화번호에서 하이픈(-) 빼기
		map.put("managerTel", map.get("managerTel").replace("-", "").trim());
		map.put("abShelterTel", map.get("abShelterTel").replace("-", "").trim());

		return map;
	}

	// 요청 URL을 만드는데 꼭 필요한 변수들을 생성.
	private List<String> addKeys() {
		List<String> repeat = new ArrayList<String>();
		// 보호소 Key
		boolean flag = true;
		this.abShelterKeys = new ArrayList<Long>(abShelterDao.selectPKColumnReturnSet());
		for (Long key : abShelterKeys) {
			// "numOfRows", "care_reg_no"
			String required = "";
			String[] insertKey = { "999999", String.valueOf(key) };
			String[] items = apiEnum.getRequiredItems();
			
			
			for (int i = 0; i < items.length; i++) {
				required = "&" + items[i] + "=" + insertKey[i];
			}
			repeat.add(required);
		}
		return repeat;
	}
}
