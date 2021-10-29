package sist.com.controller;

import java.io.FileOutputStream;
import java.util.HashMap;

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
	
	@PostMapping(value = "boardInsert.do")
	public String boardInsertAction(BoardVO bean,
		@RequestParam(value = "file", required = false) MultipartFile file) {
		String location = "D:\\eclipseFile\\Spring\\web\\src\\main\\webapp\\upload\\";
		FileOutputStream fos = null;
		System.out.println("여기까지 돌아간다.");
		System.out.println("bean : " + bean);
		System.out.println("file : " + file);
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(location.concat(fileName));
				fos.write(file.getBytes());
				bean.setFileName(fileName);
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
		bean.setNo(dao.getSequence());
		if (bean.getJob().equals("new")) {
			bean.setRef(bean.getNo());
			bean.setPnum(bean.getNo());
		} else {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("job", bean.getJob());
			map.put("pnum", bean.getPnum());
			map.put("ref", bean.getRef());
			map.put("step", bean.getStep());
			dao.updateReply(map);
			dao.updateStep(map);
			bean.setStep(bean.getStep() + 1);
			bean.setLev(bean.getLev() + 1);
		}
		System.out.println(bean);
		dao.insertBoard(bean);

		return "redirect:/boardMVC/boardList.do";
	}
	
}
