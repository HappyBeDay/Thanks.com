package sist.com.controller;

import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sist.com.controller._module.Common;
import sist.com.dao.BoardDao;
import sist.com.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardDao dao;
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
	@RequestMapping(value = "community/community_900_mainBoard")
	public String boardListGeneralAction(Model model,HttpSession se) {
		List<BoardVO> list=dao.selectBoardGeneral();
		Common c = Common.getInstance();
		c.getID(se);
		c.login(se, "terra");
		System.out.println(list);
		model.addAttribute("board", dao.selectBoardGeneral());
		return "community/community_900_mainBoard";
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
	@PostMapping(value = "community/community_9113_mainWrite")
	public String boardInsert(BoardVO bean, @RequestParam(value = "file", required = false) MultipartFile file) {
		/*String location = "D:\\eclipseFile\\Thanks.Project\\Thanks.com.spring\\src\\main\\webapp\\resources\\assets\\boardimg\\";*/
		String location = "C:\\Users\\USER\\javalessonProject\\project\\Thanks.com.spring\\src\\main\\webapp\\resources\\assets\\boardimg\\";
		FileOutputStream fos = null;
		System.out.println("여기까지 돌아간다.");
		System.out.println("file : " + file);
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(location.concat(fileName));
				fos.write(file.getBytes());
				bean.setBoardPic(fileName);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (fos != null)
						fos.close();
				} catch (Exception e2) {
				}
			}
		}
		/*bean.setBoardCode(dao.getSequence());
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("boardCode", bean.getBoardCode());
		map.put("memberCode", bean.getMemberCode());
		map.put("ref", bean.getRef());
		map.put("step", bean.getStep());
		dao.updateReply(map);
		dao.updateStep(map);
		bean.setStep(bean.getStep() + 1);
		bean.setLev(bean.getLev() + 1);
			bean.getBoardTitle().equals("new");
		bean.setBoardContent(bean.getBoardNum());
		bean.setBoardCode(bean.getBoardNum());	
		
		System.out.println("durlsms?");*/
		System.out.println(bean);
		dao.boardInsert(bean);
		
		return "redirect:community/community_900_mainBoard";

	}
}
