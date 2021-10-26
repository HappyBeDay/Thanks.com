package sist.com.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface ApiDao {
	
	public abstract Set<Integer> selectPKColumnReturnSet();
	int insertApiData(List<Map<String, String>> dataList);
}
