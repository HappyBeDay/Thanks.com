package sist.com.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.vo.BoardVO;

@Repository
public class BoardDao extends SqlSessionDaoSupport {
	
	@Resource(name="sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate sessionTemplate) throws Exception {
		System.out.println("initDao() : SqlSessionTemplate");
		this.setSqlSessionTemplate(sessionTemplate);
	}
	
	public void Boardinsert(BoardVO vo) {
		System.out.println(this.getSqlSession());
		System.out.println("success2");
		System.out.println("vo : "+ vo);
		this.getSqlSession().insert("Boardinsert",vo);
		System.out.println("success");
	}
	
	public Integer getSequence() { // insert 되기전에
		return this.getSqlSession().selectOne("getSequence");
	}
	
}
