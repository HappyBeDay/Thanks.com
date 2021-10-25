package sist.com.controller._module;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.api.ApiMw;
import sist.com.dao.SidoDao;

@Controller
public class ApiController {

	@Autowired
	SidoDao sidoDao;

	private final String path = "/updateAPI";
	private final String rootPath = "/admin" + path + "/admin_2100_updateAPI";

	@RequestMapping(value = path)
	public String updateApiPage() {
		System.out.println("updateApiPage : move page");
		return rootPath;
	}

	// "http://localhost:8080/Thanks.com/updateAPI/AbandonedAnimal?table=Sido"
	@RequestMapping(value = path + "/AbandonedAnimal")
	public String updateApiSido(String table, Model model) {
		// SidoVO
		System.out.println("updateApiSido : " + table);
		List<Map<String, String>> list = ApiMw.getInstance().chooseUpdateAPI_abAnimal(table);
		if (list != null) {
			int cnt = sidoDao.insertSidoData(list);
			model.addAttribute("updateRows", (table + " : " + cnt + "행 삽입!"));
		}
		return rootPath;
	}
}
