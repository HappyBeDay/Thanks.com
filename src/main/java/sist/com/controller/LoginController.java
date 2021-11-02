package sist.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.controller._module.Common;
import sist.com.controller._module.SiteURL;
import sist.com.dao.MemberInfoDao;

@Controller
@RequestMapping(value = "login")
public class LoginController {
	
	
	@Autowired
	private MemberInfoDao dao;
	
	@RequestMapping(value = "login")
	public String logCheck(HttpSession session, String id, String pw) {
		System.out.println("logCheck() : " + id + ", " + pw + "\n");
		if (dao.loginCheck(id, pw)) {
			Common.getInstance().login(session, id, dao.selectMemberCodeFromID(id));
			return "redirect:" + SiteURL.main.url;
		} else {
			return "redirect:" + SiteURL.login.url;
		}
	}
	
}
