package sist.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BreedDao implements ApiDao {
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public BreedDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSession = sqlSessionTemplate;
		System.out.println("initDao() : BreedDao");
	}
	
	@Override
	public Set<Integer> selectPKColumnReturnSet() {
		return new HashSet<Integer>(sqlSession.selectList("selectBreed_PK"));
	}
	
	@Override
	public int insertApiData(List<Map<String, String>> list) {
		//System.out.println(list);
		int cnt = 0;
		
		Set<Integer> breedPK = selectPKColumnReturnSet();
		
		
		for(Map<String, String> map : list) {
			int pk = Integer.parseInt(map.get("breedCode"));
			if(!breedPK.contains(pk))
				cnt += sqlSession.insert("insertBreedFromApi", map);
		}
		return cnt;
	}
	
}
