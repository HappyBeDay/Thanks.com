package sist.com.api;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import sist.com.api.abAnimal.ApiAbAnimal;
import sist.com.api.abAnimal.ApiAbShelter;
import sist.com.api.abAnimal.ApiBreed;
import sist.com.api.abAnimal.ApiSido;
import sist.com.api.abAnimal.ApiSigungu;
import sist.com.api.apiEnum.AbAnimalIndexEnum;

@Repository
public class ApiMw {
	// Field
	public static ApiMw apiMw;
	
	@Inject
	private ApiSido apiSido;
	
	@Inject
	private ApiSigungu apiSigungu;
	
	@Inject
	private ApiAbShelter apiAbShelter;
	
	@Inject
	private ApiBreed apiBreed;
	
	@Inject
	private ApiAbAnimal apiAbAnimal;

	// Constructor
	private ApiMw() {
		super();
	}

	public int chooseUpdateAPI_abAnimal(String tabName) {
		if(tabName == null) return -1;
		
		switch (tabName) {
		case "Sido":
			//return apiSido.updateDataBase();
			return apiSido.updateDataBase();
		case "Sigungu":
			return apiSigungu.updateDataBase();
		case "AbShelter":
			return apiAbShelter.updateDataBase();
		case "Breed":
			return apiBreed.updateDataBase();
		case "AbandonedAnimal":
			return apiAbAnimal.updateDataBase();
		}

		return -2;
	}
	
	// SingleTone
	public static ApiMw getInstance() {
		if (apiMw == null)
			return apiMw = new ApiMw();
		return apiMw;
	}

	public int getIndex(String tabName) {
		return AbAnimalIndexEnum.valueOf(tabName).index;
	}
}
