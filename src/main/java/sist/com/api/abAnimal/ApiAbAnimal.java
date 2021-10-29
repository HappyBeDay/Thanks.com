package sist.com.api.abAnimal;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import sist.com.dao.AbAnimalDao;

@Component
public class ApiAbAnimal extends AbAnimalAPI {

	private AbAnimalDao abAnimalDao;
	
	@Inject
	public ApiAbAnimal(AbAnimalDao abAnimalDao) {
		this.abAnimalDao = abAnimalDao;
	}
	
	@Override
	public String makeURL() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, String>> processingData(String data) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateDataBase() {
		System.out.println("" + abAnimalDao);
		int cnt = 0;
		
		
		return cnt;
	}
	
}
