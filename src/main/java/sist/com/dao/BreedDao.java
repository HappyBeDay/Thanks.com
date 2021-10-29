package sist.com.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BreedDao implements ApiDao {
	
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	public BreedDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
		System.out.println(this.sqlSessionTemplate);
	}
	
	@Override
	public Set<?> selectPKColumnReturnSet() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int insertApiData(List<Map<String, String>> dataList) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
