package sist.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.controller._module.Common;
import sist.com.dao.BoardListDao;
import sist.com.vo.BoardVO;

@Controller
public class BoardListController {
	@Autowired
	private BoardListDao dao;
	/*@RequestMapping(value = "community/community_910_board")
	public String boardListAction(Model model,HttpSession se) {
		List<BoardListVO> list=dao.selectBoardAll();
		Common c = Common.getInstance();
		c.getID(se);
		c.login(se, "terra");
		System.out.println(list);
		model.addAttribute("boardList", dao.selectBoardAll());
		return "community/community_910_board";
	}*/
	@RequestMapping(value = "community/community_910_board")
	public String boardListGeneralAction(Model model,HttpSession se) {
		List<BoardVO> list=dao.selectBoardGeneral();
		Common c = Common.getInstance();
		c.getID(se);
		c.login(se, "terra");
		System.out.println(list);
		model.addAttribute("board", dao.selectBoardGeneral());
		return "community/community_910_board";
	}
	@RequestMapping(value = "community/community_930_care")
	public String boardListCareAction(Model model,HttpSession se) {
		List<BoardVO> list=dao.selectBoardCare();
		Common c = Common.getInstance();
		c.getID(se);
		c.login(se, "terra");
		System.out.println(list);
		model.addAttribute("board", dao.selectBoardCare());
		return "community/community_930_care";
	}
	/*@RequestMapping(value = "deleteBoard.do")
	public String deleteBoardAction(int no) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("job", "del");
		map.put("pnum", dao.getParentNumber(no));
		dao.updateReply(map);
		dao.deleteBoard(no);
		return "redirect:/boardMVC/boardList.do";
	}

	@PostMapping(value = "modifyProcessAction.do")
	public String modifyAction(MvcBoardVO vo) {
		System.out.println(vo);
		dao.updateBoard(vo);
		return "redirect:/boardMVC/boardInfo.do?no=" + vo.getNo() + "&job=info";
	}*/
}
