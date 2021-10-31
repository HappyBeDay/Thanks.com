package sist.com.controller._module;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.api.ApiMw;

@Controller
public class ApiController {
	
	@Autowired
	private ApiMw api;

	private final String path = "/updateAPI";
	private final String rootPath = "/admin" + path + "/admin_2100_updateAPI";

	@RequestMapping(value = path)
	public String updateApiPage() {
		System.out.println("updateApiPage : move page");
		return rootPath;
	}

	// "http://localhost:8080/Thanks.com/updateAPI/AbandonedAnimal?table=?"
	/*
	 * tabName: Sido, Sigungu, AbShelter, Breed, AbandonedAnimal
	 */
	@RequestMapping(value = path + "/AbandonedAnimal")
	public String updateApiSido(String table, Model model) {
		// SidoVO
		int cnt = api.chooseUpdateAPI_abAnimal(table);
		if (cnt > -1) {
			model.addAttribute("updateRows", (table + " : " + cnt + "행 삽입!"));
			model.addAttribute("result", "Success");
		} else {
			if(cnt == -1)
				model.addAttribute("result", "Fail : table 변수를 넣어서 요청해주세요. ");
			if(cnt == -2)
				model.addAttribute("result", "Fail : table 이름을 확인해주세요. ");
		}
		return rootPath;
	}
}
