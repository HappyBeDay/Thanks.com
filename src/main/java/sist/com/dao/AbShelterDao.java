package sist.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AbShelterDao extends SqlSessionDaoSupport implements ApiDao {

	@Resource(name = "sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate sessionTemplate) throws Exception {
		System.out.println("initDao() : AbShelter");
		this.setSqlSessionTemplate(sessionTemplate);
	}

	@Override
	public Set<Integer> selectPKColumnReturnSet() {
		return new HashSet<Integer>(this.getSqlSession().selectList("selectAbShelter_PK"));
	}

	@Override
	public int insertApiData(List<Map<String, String>> dataList) {
		// TODO Auto-generated method stub
		return 0;
	}

}
