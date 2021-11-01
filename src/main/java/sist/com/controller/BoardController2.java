package sist.com.controller;

import java.io.FileOutputStream;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sist.com.dao.BoardDao2;
import sist.com.vo.BoardVO;

@Controller
@RequestMapping("community_900_mainBoard.jsp")
public class BoardController2 {
	
	@Inject
	private BoardDao2 dao2;
	
	/*@RequestMapping(value="/")
	public ModelAndView list() throws Exception{
		List<BoardVO> list = boardService.listAll();
	}
	
	return ;*/
	
	
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
		
		System.out.println("durlsms?");
		System.out.println(bean);
		dao2.Boardinsert(bean);
		
		return "redirect:community/community_900_mainBoard";

	}
}
