package sist.com.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HiController {

	
	@RequestMapping(value = "hi")
	public String hi() {
		return "hi";
	}
}
