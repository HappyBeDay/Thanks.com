package sist.com.api.abAnimal;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.api.apiEnum.AnimalType;
import sist.com.dao.BreedDao;

@Component
public class ApiBreed extends AbAnimalAPI {
	private AbAnimalEnum apiEnum = AbAnimalEnum.BreedVO;
	
	private BreedDao breedDao;
	
	@Inject
	public ApiBreed(BreedDao breedDao) {
		super();
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
		System.out.println("AbBreedDao : " + breedDao);
		
		int cnt = 0;
	
		String baseUrl = makeURL();
		for(AnimalType type : AnimalType.values()) {
			//System.out.println(baseUrl + "&" + apiEnum.getRequiredItems()[0] + "=" + type.code);
			List<Map<String, String>> mapList = processingData(requestURL(baseUrl + "&" + apiEnum.getRequiredItems()[0] + "=" + type.code));
			for(Map<String, String> map : mapList)
				map.put("animalTypeCode", String.valueOf(type.code));
				
			cnt += breedDao.insertApiData(mapList);	
		}
		
		return cnt;
	}

}
