package sist.com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.vo.BoardListVO;

@Repository
public class BoardListDao extends SqlSessionDaoSupport{
	@Resource(name = "sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate st) throws Exception {
		this.setSqlSessionTemplate(st);
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
}
