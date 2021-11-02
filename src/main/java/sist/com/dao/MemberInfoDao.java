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
		System.out.println("loginCheck(id, pw)");
		MemberInfoVO vo = this.getSqlSession().selectOne("memberInfo_one", id);
		if (vo != null && pw.equals(vo.getPw()))
			return true;
		return false;
	}

	public boolean IdDuplicateCheck(String id) {
		System.out.println("Duplicate(id) : " + id);
		String result = this.getSqlSession().selectOne("memberInfo_duplicateID", id);
		return result == null ? true : false;
	}

	public boolean insertMemberSignUp(MemberInfoVO vo) {
		System.out.println("insertMemberSignUp");
		int cnt = this.getSqlSession().insert("insertMemberSignUp", vo);
		return cnt > 0 ? true : false;
	}
	
	public int selectMemberCodeFromID(String id) {
		return this.getSqlSession().selectOne("selectMemberCodeFromID", id);
	}
}
