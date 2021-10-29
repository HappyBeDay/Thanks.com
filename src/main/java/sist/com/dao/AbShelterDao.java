package sist.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
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
	public HashSet<Long> selectPKColumnReturnSet() {
		return new HashSet<Long>(this.getSqlSession().selectList("selectAbShelter_PK"));
	}

	@Override
	public int insertApiData(List<Map<String, String>> list) {
		// pk 받아와서 중복 체크하고 insert
		// System.out.println(list);
		
		int cnt = 0; // 새로 입력된 행 갯수
		SqlSession sqlSession = this.getSqlSession();
		Set<Long> abShelterPK = selectPKColumnReturnSet();
		
		for(int i = 0 ; i < list.size(); i++) {
			//Map<String, String> map = list.get(i);
			//System.out.println(map);
			//System.out.println(map.get("abShelterCode"));
			long pk = Long.parseLong((list.get(i).get("abShelterCode")));
			if(!abShelterPK.contains(pk)) {
				cnt += sqlSession.insert("insertAbShelterFromApi", list.get(i));
			}
		}
		
		return cnt;
	}

}
