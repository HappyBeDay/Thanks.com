package sist.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "signUp")
public class SignUpController {

	@RequestMapping
	public String signUp() {
		System.out.println("signUp Main Page 이동");
		return "redirect:signUp/signUp_200_agreement";
	}
	
	
	//"http://localhost:8080/Thanks.com/signUp/signUp_210_info"
	//@RequestParam(value = "agree", required = false) booelean agree
	@RequestMapping(value = "signUp_210_info")
	public void SignUp_210_info(Model model) {
		
		System.out.println("약관동의 하셨습니다.");
		model.addAttribute("agree", true);
	}

}
