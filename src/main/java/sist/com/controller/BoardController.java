package sist.com.controller;

import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sist.com.dao.BoardDao;
import sist.com.vo.BoardVO;

@Controller
public class BoardController {
	@Autowired
	private BoardDao dao;
	
	@PostMapping(value = "community/community_910_board")
	public String boardInsertAction(BoardVO bean, @RequestParam(value = "file", required = false) MultipartFile file) {
		String location = "D:\\eclipseFile\\Spring\\webapp\\resources\\assets\\boardimg";	
		FileOutputStream fos = null;
		System.out.println("여기까지 돌아간다.");
		System.out.println("bean : " + bean);
		System.out.println("file : " + file);
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(location.concat(fileName));
				fos.write(file.getBytes());
				bean.setBoardPic(fileName);
			} catch (Exception e) {
				// TODO: handle exceptionx
				e.printStackTrace();
			} finally {
				try {
					if (fos != null)
						fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}

		return "redirect:/community/community_910_board";
	}
	
	
}
