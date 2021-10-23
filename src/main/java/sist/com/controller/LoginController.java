package sist.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.dao.MemberInfoDao;

@Controller
public class LoginController {
	
	
	@Autowired
	private MemberInfoDao dao;
	
	@RequestMapping(value = "login/login")
	public String logCheck(HttpSession session, String id, String pw) {
		System.out.println("logCheck() : " + id + ", " + pw + "\n");
		if (dao.loginCheck(id, pw)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(3600);
			return "redirect:/mainScreen/mainScreen_100_main";
		} else {
			return "redirect:/login/login_300_main";
		}
	}
}
