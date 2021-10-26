package sist.com.api;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import sist.com.api.abAnimal.ApiSido;
import sist.com.api.abAnimal.ApiSigungu;
import sist.com.api.apiEnum.AbAnimalIndexEnum;

@Repository
public class ApiMw {
	// Field
	public static ApiMw apiMw;
	List<Map<String, String>> dataList;

	@Inject
	private ApiSido apiSido;
	
	@Inject
	private ApiSigungu apiSigungu;

	// Constructor
	private ApiMw() {
		super();
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

	public int chooseUpdateAPI_abAnimal(String tabName) {
		switch (tabName) {
		case "Sido":
			//return apiSido.updateDataBase();
			return apiSido.updateDataBase();
		case "Sigungu":
			return apiSigungu.updateDataBase();
		case "AbShelter":

		case "Breed":

		case "AbandonedAnimal":

		}

		return -1;
	}
}
