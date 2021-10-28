package sist.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "main")
public class MainController {

	@RequestMapping("mainScreen_100_main")
	public void mainScreen_100_main(@CookieValue(value = "id", required = false) String id, Model model) {
		model.addAttribute("id", id);
	}
}
