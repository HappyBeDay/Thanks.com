package sist.com.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;

import sist.com.vo.SidoVO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true) // implements ApiDao를 해결하기위한 조건...
public class SidoDao extends SqlSessionDaoSupport implements ApiDao, Dao {

	@Resource(name = "sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate sessionTemplate) throws Exception {
		System.out.println("initDao() : Sido");
		this.setSqlSessionTemplate(sessionTemplate);
	}

	// ApiDao
	@Override
	public Set<Integer> selectPKColumnReturnSet() {
		System.out.println("getSqlSession : " + this.getSqlSession());
		return new HashSet<Integer>(this.getSqlSession().selectList("selectSido_sidoCode"));
	}// selectPKColumnReturnSet

	@Override
	public int insertApiData(List<Map<String, String>> list) {
		int cnt = 0;
		SqlSession sqlSession = this.getSqlSession();
		Set<Integer> sidoPK = selectPKColumnReturnSet();

		for (int i = 0; i < list.size(); i++) {
			int pk = Integer.parseInt(list.get(i).get("sidoCode"));
			if (!sidoPK.contains(pk)) {
				cnt += sqlSession.insert("insertSidoFromApi", list.get(i));
			}
		}
		return cnt;
	}// insertSidoData

	// Dao
	@Override
	public List<SidoVO> selectDataAll() {
		return getSqlSession().selectList("selectSidoDataAll");
	}
}