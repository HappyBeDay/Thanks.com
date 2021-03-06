package sist.com.controller._module;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "{path:^(?:(?!resources|assets|css|img|js|_module|content).)*$}")
public class WildController {

	
	@RequestMapping(value = "/**")
	public String servletWildCard(HttpServletRequest request, @PathVariable String path) {
		String uri = request.getRequestURI().trim().replace("/Thanks.com", "");
		System.out.println("WildController");
		System.out.println("path = " + uri + "\n");
		//System.out.println(path);
		return uri;
	}
	
	/*
	 * @RequestMapping("/{name:.*}") public String servletTesting(@PathVariable
	 * String name) { System.out.println("Testing : " + name); return name; }
	 */
}
