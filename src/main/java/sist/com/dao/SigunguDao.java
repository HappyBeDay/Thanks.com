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

import sist.com.vo.SidoVO;
import sist.com.vo.SigunguVO;

@Repository
public class SigunguDao extends SqlSessionDaoSupport implements ApiDao, Dao{

	@Resource(name = "sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate sessionTemplate) throws Exception {
		System.out.println("initDao() : SigunguDao");
		this.setSqlSessionTemplate(sessionTemplate);
	}

	@Override
	public Set<Integer> selectPKColumnReturnSet() {
		return new HashSet<Integer>(this.getSqlSession().selectList("selectSigungu_PK"));
	}// selectPKColumnReturnSet

	public List<SigunguVO> getCodeList() {
		System.out.println("getCodeList Method");
		return this.getSqlSession().selectList("selectSigunguCodeList");
	}

	@Override
	public int insertApiData(List<Map<String, String>> list) {
		System.out.println("insertApiData");
		int cnt = 0;
		SqlSession sqlSession = this.getSqlSession();
		Set<Integer> sigunguPK = selectPKColumnReturnSet();
		
		// System.out.println(list.get(0).keySet());
		for (int i = 0; i < list.size(); i++) {
			int pk = Integer.parseInt(list.get(i).get("sigunguCode"));
			if (!sigunguPK.contains(pk)) {
				cnt += sqlSession.insert("insertSigunguFromApi", list.get(i));
			}
		}
		return cnt;
	}

	@Override
	public List<SidoVO> selectDataAll() {
		return this.getSqlSession().selectList("selectSidoAll");
	}
}