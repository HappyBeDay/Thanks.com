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
		// AnimalType animal = AnimalType.개;
		

		return null;
	}

	@Override
	public int updateDataBase() {
		System.out.println("AbBreedDao : " + breedDao);
		
		int cnt = 0;
	
		String baseUrl = makeURL();
		for(AnimalType type : AnimalType.values()) {
			System.out.println(baseUrl + "&" + apiEnum.getRequiredItems()[0] + "=" + type.code);
		}
		System.out.println();
		
		return cnt;
	}

}
