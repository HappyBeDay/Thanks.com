package sist.com.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.vo.MemberInfoVO;

@Repository
public class MemberInfoDao extends SqlSessionDaoSupport {

	@Resource(name = "sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate sessionTemplate) throws Exception {
		System.out.println("initDao() : MemberInfo");
		this.setSqlSessionTemplate(sessionTemplate);
	}

	public boolean loginCheck(String id, String pw) {
		System.out.println("loginCheck(id, pw)\n");
		MemberInfoVO vo = this.getSqlSession().selectOne("memberInfo_one", id);
		if (vo != null && pw.equals(vo.getPw()))
			return true;
		return false;
	}

}
