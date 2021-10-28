package sist.com.controller._module;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Common {
	private static Common common;
	
	private Common() {
		super();
	}
	
	public static Common getInstance() {
		if(common == null)
			return common = new Common();
		return common;
	}
	
	@SuppressWarnings({ "unchecked" })
	public void printVariable(HttpServletRequest request) {
		System.out.println("Attribute");
		Enumeration<String> attr = request.getAttributeNames();
		while(attr.hasMoreElements()) {
			String key = attr.nextElement();
			System.out.println(key);
			System.out.println(request.getAttribute(key));
		}
		System.out.println("Parameter");
		Enumeration<String> params = request.getParameterNames();
		while(params.hasMoreElements()) {
			String key = params.nextElement();
			System.out.println(key);
			System.out.println(request.getParameter(key));
		}
	}
	
	public void login(HttpSession session, String id) {
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(3600);
	}
}
