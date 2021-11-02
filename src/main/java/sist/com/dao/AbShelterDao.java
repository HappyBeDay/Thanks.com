package sist.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.vo.AbShelterVO;

@Repository
public class AbShelterDao extends SqlSessionDaoSupport implements ApiDao, Dao {

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
		int cnt = 0; // 새로 입력된 행 갯수
		SqlSession sqlSession = this.getSqlSession();

		for (Map<String, String> map : list) {
			Object pk = this.getSqlSession().selectOne("selectAbShelter_PKCheck", map.get("abShelterCode"));
			if (pk == null) {
				cnt += sqlSession.insert("insertAbShelterFromApi", map);
			}
		}

		return cnt;
	}

	public void updateApiDate(List<Map<String, String>> list) {
		for (Map<String, String> map : list) {
			Object pk = this.getSqlSession().selectOne("selectAbShelter_PKCheck", map.get("abShelterCode"));
			if (pk != null)
				this.getSqlSession().update("updateAbShelterFromApi", map);
		}
	}

	@Override
	public List<AbShelterVO> selectDataAll() {
		return this.getSqlSession().selectList("selectAbShelterAll");
	}
	
	
}
