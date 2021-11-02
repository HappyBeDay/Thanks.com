package sist.com.controller._module;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Common {
	private static Common common;
	private int memberCode;
	
	private Common() {
		super();
	}
	
	public static Common getInstance() {
		if(common == null)
			return common = new Common();
		return common;
	}
	
	
	// 출력용
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
	
	public void login(HttpSession session, String id, int code) {
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(3600);
		memberCode = code;
	}
	
	public void logout(HttpSession session) {
		//session.setMaxInactiveInterval(0);
		//session.invalidate(); //세션 전체 삭제
		session.removeAttribute("id");
		memberCode = -1;
	}
	
	public String getID(HttpSession session) {
		return (String) session.getAttribute("id");
	}
	
	public int getMemberCode() {
		return memberCode;
	}
}
