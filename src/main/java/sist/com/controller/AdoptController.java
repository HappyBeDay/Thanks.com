package sist.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.dao.AbAnimalDao;
import sist.com.vo.AbandonedAnimalVO;

@Controller
@RequestMapping(value = "adopt")
public class AdoptController {
	private final String path = "/_module/animal/"; 
	@Autowired
	private AbAnimalDao abAnimalDao;
	
	@RequestMapping(value = "adopt_500_main")
	public void adoptMainPage(Model model) {
		System.out.println("Move to Adopt Page!");
		List<AbandonedAnimalVO> list = abAnimalDao.selectAllData();
		//System.out.println(list); //정상적으로 값이 들고와지는 것을 확인했다.
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value = "animalAdoptResult")
	public String adoptResult() {
		System.out.println("adoptResult");
		return path + "animalAdoptResult";
	}
	
	@RequestMapping(value = "animalRaiseResult")
	public String animalRaiseResult() {
		System.out.println("animalRaiseResult");
		return path + "animalRaiseResult";
	}
}
