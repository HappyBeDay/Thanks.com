package sist.com.api;

import java.util.List;
import java.util.Map;

import sist.com.api.abAnimal.ApiSido;

public class ApiMw {
	public static ApiMw apiMw;

	private ApiMw() {
		super();
	}

	public static ApiMw getInstance() {
		if (apiMw == null)
			return apiMw = new ApiMw();
		return apiMw;
	}

	public List<Map<String, String>> chooseUpdateAPI_abAnimal(String tabName) {
		switch (tabName) {
		case "Sido": return ApiSido.getInstance().updateDataBase();
		case "Sigungu":
		case "AbShelter":
		case "Breed":
		case "AbandonedAnimal":
		}
		return null;
	}

}
