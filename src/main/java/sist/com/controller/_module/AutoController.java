package sist.com.controller._module;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AutoController {

	
	// URI 관련해서 여러 Method들의 출력값을 확인하기 위한 출력 메서드
	@SuppressWarnings("unused")
	private void printURLData(HttpServletRequest request) {
		System.out.printf("\nrequest.getContextPath() : " + request.getContextPath() + "\nrequest.getLocalAddr() : "
				+ request.getLocalAddr() + "\nrequest.getRemoteUser() : " + request.getRemoteUser()
				+ "\nrequest.getRequestURI() : " + request.getRequestURI() + "\nrequest.getScheme() : "
				+ request.getScheme() + "\nrequest.getRequestURL() : " + request.getRequestURL()
				+ "\nrequest.getPathInfo() : " + request.getPathInfo() + "\n");
	}

	@RequestMapping(value = "autoLink/**")
	public String servletAutoLink(HttpServletRequest request) {
		System.out.println("AutoLink");
		
		//요청 uri를 가지고 약속된 링크를 만든다.
		String uri = request.getRequestURI().trim();
		String requestURI = uri.substring(uri.lastIndexOf("/"));
		uri = requestURI.substring(0, requestURI.indexOf("_"));

		return uri + requestURI;
	}
}