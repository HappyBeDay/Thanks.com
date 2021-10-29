package sist.com.api.abAnimal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import sist.com.api.apiEnum.AbAnimalEnum;
import sist.com.dao.SidoDao;

@Component
public class ApiSido extends AbAnimalAPI {
	// Field
	private AbAnimalEnum apiEnum = AbAnimalEnum.SidoVO;
	private SidoDao sidoDao;
	
	// Contstruct
	@Inject
	private ApiSido(SidoDao sidoDao) {
		super();
		this.sidoDao = sidoDao;
		//this.xmlParser = xmlParser;
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
		return sidoDao.insertApiData(processingData(requestURL(makeURL())));
	}

	public List<Integer> getPkList() {
		return new ArrayList<Integer>(sidoDao.selectPKColumnReturnSet());
	}

}
