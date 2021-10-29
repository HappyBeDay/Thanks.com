package sist.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.controller._module.Common;
import sist.com.dao.BoardListDao;
import sist.com.vo.BoardListVO;

@Controller
public class BoardListController {
	@Autowired
	private BoardListDao dao;
	@RequestMapping(value = "community/community_910_board")
	public String boardListAction(Model model,HttpSession se) {
		List<BoardListVO> list=dao.selectBoardAll();
		Common c = Common.getInstance();
		c.getID(se);
		c.login(se, "terra");
		System.out.println(list);
		model.addAttribute("boardList", dao.selectBoardAll());
		return "community/community_910_board";
	}
}
