package sist.com.dao;

import java.sql.Date;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.vo.BoardVO;

@Repository
public class BoardDao2 extends SqlSessionDaoSupport {
	
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
	
	/*@RequestMapping(value = "/community_900_mainBoard")
	public String boardListAction(int boardcode, String boardtitle, int membercode, Date boarddate, int boardhit ) {
		// dao.boardInfo(no);
		model.addAttribute("info", dao2.selectInfoBoard(no));
		if (job.equals("info")) {
			// dao.updateHit(no);
			dao.updateHit(no);
			return "boardMVC/info";
		} else {
			return "boardMVC/modify";
		}
	}*/
}
