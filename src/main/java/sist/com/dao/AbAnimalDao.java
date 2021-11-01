package sist.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sist.com.vo.AbandonedAnimalVO;

@Component
public class AbAnimalDao implements ApiDao, Dao {
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public AbAnimalDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSession = sqlSessionTemplate;
		System.out.println("construct Dao() : AbAnimalDao");
	}
	
	@Override
	public HashSet<Long> selectPKColumnReturnSet() {
		return new HashSet<Long>(sqlSession.selectList("selectAbAnimal_PK"));
	}

	@Override
	public int insertApiData(List<Map<String, String>> list) {
		//System.out.println("insertApiData");
		if(!(list.size() > 0)) return 0;
		int cnt = 0;

		//Set<Long> animalKeys = selectPKColumnReturnSet();
		
		for(Map<String, String> map : list) {
			//System.out.println(map);
			//System.out.println("map - get : ");
			//System.out.println(map.get("abanimalCode").getClass().getTypeName());
			//System.out.println(map.get("abanimalCode"));

			Object pk = sqlSession.selectOne("selectAbAnimal_PKCheck", Long.parseLong(map.get("abanimalCode")));
			//System.out.println(pk);
			if(pk == null)
				cnt += sqlSession.insert("insertAbAnimalFromApi", map);
		}
		
		return cnt;
	}


	@Override
	public List<AbandonedAnimalVO> selectDataAll() {
		return sqlSession.selectList("selectAbAnimalAll");
	}
}
