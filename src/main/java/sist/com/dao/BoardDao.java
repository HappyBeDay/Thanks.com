package sist.com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.vo.BoardVO;

@Repository
public class BoardDao extends SqlSessionDaoSupport {
	
	@Resource(name="sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate sessionTemplate) throws Exception {
		System.out.println("initDao() : BoardDao");
		this.setSqlSessionTemplate(sessionTemplate);
	}
	
	public List selectBoardAll(){
		return getSqlSession().selectList("selectBoardAll");
	}
	public List selectBoardGeneral(){
		return getSqlSession().selectList("selectBoardGeneral");
	}
	public List selectBoardCare(){
		return getSqlSession().selectList("selectBoardCare");
	}
	public void updateBoard(BoardVO vo){
		this.getSqlSession().update("updateBoard",vo);
	}
	public void deleteBoard(int no){
		this.getSqlSession().delete("deleteBoard",no);
	}
}
