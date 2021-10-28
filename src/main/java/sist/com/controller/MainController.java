package sist.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping(value = "mainScreen")
public class MainController {

	@RequestMapping("mainScreen_100_main")
	public void mainScreen_100_main(@SessionAttribute(value = "id", required = false) String id, Model model) {
		System.out.println("mainScreen_100_main : " + id);
		model.addAttribute("id", id);
	}
}
