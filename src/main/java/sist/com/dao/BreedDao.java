package sist.com.dao;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.api.apiEnum.BreedType;
import sist.com.vo.BreedVO;

@Repository
public class BreedDao implements ApiDao {

	private SqlSessionTemplate sqlSession;

	// constructor
	@Autowired
	public BreedDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSession = sqlSessionTemplate;
		System.out.println("construct Dao() : BreedDao");
	}

	// method
	@Override
	public Set<Integer> selectPKColumnReturnSet() {
		return new HashSet<Integer>(sqlSession.selectList("selectBreed_PKs"));
	}

	@Override
	public int insertApiData(List<Map<String, String>> list) {
		// System.out.println(list);
		int cnt = 0;

		//Set<Integer> breedPK = selectPKColumnReturnSet();

		for (Map<String, String> map : list) {
			Object pk = sqlSession.selectOne("selectBreed_PkCheck", map.get("breedCode"));
			if (pk == null)
				cnt += sqlSession.insert("insertBreedFromApi", map);
		}
		return cnt;
	}
	
	public List<BreedVO> selectAllData() {
		return sqlSession.selectList("selectBreed_All");
	}
	
	public int selectCodeFromName(String name) {
		System.out.println("name : " + name);
		/*
		if(name == null || name.length() < 1) {

		}
		else if(name.equals("믹스"))
			name = "믹스견";
		else if(name.equals("라쿤"))
			return -1;
		else if(name.equals("토끼"))
			return -1;
		else if(name.equals("햄스터"))
			return -1;
		else if(name.equals("금계"))
			return -1;
		*/
		try {
			return sqlSession.selectOne("selectBreed_pkFromName", name);
		} catch (NullPointerException e) {
			// breed 새로 추가하고 (시퀀스 기반), 해당 pk 받아오기 (pk = 시퀀스)
			int key = sqlSession.selectOne("selectBreed_seq");
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("breedCode", key);
			if(name != null && name != "")
				map.put("breedName", name);
			else
				map.put("breedName", "empty");
			
			map.put("animalTypeCode", BreedType.기타.code);
			sqlSession.insert("insertBreedFromApi", map);
			return key;
		}
	}

}
