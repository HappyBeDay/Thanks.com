package sist.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.com.controller._module.Common;
import sist.com.controller._module.SiteURL;
import sist.com.dao.MemberInfoDao;
import sist.com.vo.MemberInfoVO;

@Controller
@RequestMapping(value = "signUp")
public class SignUpController {

	@Autowired
	MemberInfoDao memberDao;
	
	@RequestMapping
	public String signUp() {
		System.out.println("signUp Main Page 이동");
		return "redirect:" + SiteURL.signUp.url;
	}
	
	
	//"http://localhost:8080/Thanks.com/signUp/signUp_210_info"
	//@RequestParam(value = "agree", required = false) booelean agree
	@RequestMapping(value = "signUp_210_info")
	public void SignUp_210_info(Model model) {
		
		System.out.println("약관동의 하셨습니다.");
		model.addAttribute("agree", true);
	}
	
	@ResponseBody
	@RequestMapping(value = "idCk")
	public boolean idCk(String id) {
		System.out.println(id);
		return memberDao.IdDuplicateCheck(id);
	}
	

	
	@RequestMapping(value = "signUpAction")
	public String signUpAction(HttpSession session, HttpServletRequest request, MemberInfoVO vo ) {
		System.out.println("signUpAction");
		//Common.getInstance().printVariable(request);
		System.out.println(vo);

		boolean bool = memberDao.insertMemberSignUp(vo);
		
		if(bool) {
			Common.getInstance().login(session, vo.getId(), memberDao.selectMemberCodeFromID(vo.getId()));
			return "redirect:/";			
		}
		
		return "redirect:signUp_210_info";
	}

}
