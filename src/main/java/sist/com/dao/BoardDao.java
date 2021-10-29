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
		this.setSqlSessionTemplate(sessionTemplate);
	}
	
	public void insertBoard(BoardVO vo) {
		System.out.println(this.getSqlSession());
		System.out.println("vo : "+vo);
		this.getSqlSession().insert("insertBoard",vo);
		System.out.println("success");
	}
	
	public void deleteBoard(int no) {
		this.getSqlSession().delete("deleteBoard", no);
	}
	
	
}
