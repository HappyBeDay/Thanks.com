	package sist.com.controller;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import sist.com.controller._module.Common;
import sist.com.controller._module.SiteURL;
import sist.com.dao.DaoMw;
import sist.com.vo.AbandonedAnimalVO;

@Controller
@RequestMapping(value = "adopt")
@SessionAttributes(value = { "sido", "breed" }) // 값을 받아오자.
public class AdoptController {
	// Field
	private final String path = "/_module/animal/";

	@Autowired
	private DaoMw daoMw;

	// SessionAttributes
	@ModelAttribute(name = "sido")
	private String selectListSidoVO() throws JsonProcessingException {
		return new ObjectMapper().writeValueAsString(daoMw.getSidoDao().selectDataAll());
	}

	@ModelAttribute(name = "breed")
	private String selectListBreedVO() throws JsonProcessingException {
		return new ObjectMapper().writeValueAsString(daoMw.getBreedDao().selectDataAll());
	}

	@RequestMapping(value = "adopt_500_main")
	public String adoptMainPage(Model model,
			@RequestParam(value = "no", required = false, defaultValue = "1") String no)
			throws JsonProcessingException, ParseException {
		System.out.println("Move to Adopt Page!");
		List<AbandonedAnimalVO> list = daoMw.getAbAnimalDao().selectDataOfNo(Integer.parseInt(no) * 30);
		System.out.println(list); // 정상적으로 값이 들고와지는 것을 확인했다.
		String animal = new ObjectMapper().writeValueAsString(list);
		// System.out.println(animal); //정상적으로 JSON타입의 String으로 바뀌는 것을 확인.
		JSONArray animalJson = (JSONArray) new JSONParser().parse(animal);
		// System.out.println(animalJson); // 정상적으로 바뀌는 것을 확인
		System.out.println(animalJson.getClass().getName());
		System.out.println(Common.getInstance().getMemberCode());
		model.addAttribute("animal", animalJson);
		return SiteURL.adopt.url;
	}

	@RequestMapping(value = "adopt_510_info")
	public void adoptInfoPage(Model model, @RequestParam(value = "0", required = true) long no) {
		System.out.println("adoptInfoPage");
		model.addAttribute("list", daoMw.getAbAnimalDao().selectAbAnimalInfo(no));
		model.addAttribute("no", no);
	}

	@RequestMapping(value = "adopt_511_careReg")
	public void adoptCareReg(Model model, @RequestParam(value = "0", required = true) long no) {
		System.out.println("adoptCareReg");
		System.out.println(no);
		//model.addAttribute("list", daoMw.getAbAnimalDao().selectAbAnimalInfo(no));
		//model.addAttribute("no", no);
	}

	
	//ResponseBody
	@RequestMapping(value = "abShelter")
	public @ResponseBody JSONArray AbShelter()
			throws IllegalArgumentException, IllegalAccessException, JsonProcessingException, ParseException {
		System.out.println("adoptAbShelter");
		// Map<String, Object> map =
		// XmlParser.getInstance().convertToMap(daoMw.getAbShelterDao().selectDataAll());
		return (JSONArray) new JSONParser()
				.parse(new ObjectMapper().writeValueAsString(daoMw.getAbShelterDao().selectDataAll()));
	}

	@RequestMapping(value = "abAnimal")
	public @ResponseBody JSONArray abAnimal(int no)
			throws IllegalArgumentException, IllegalAccessException, JsonProcessingException, ParseException {
		System.out.println("adoptAbAnimal");
		// Map<String, Object> map =
		// XmlParser.getInstance().convertToMap(daoMw.getAbShelterDao().selectDataAll());
		return (JSONArray) new JSONParser()
				.parse(new ObjectMapper().writeValueAsString(daoMw.getAbAnimalDao().selectDataOfNo(no * 100)));
	}

	// 화면 확인 용
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

	// Exception Handler
	@ExceptionHandler(JsonProcessingException.class)
	public String exceptionHandler(JsonProcessingException e, Model model) {
		model.addAttribute("msg", e.getClass().getName());
		model.addAttribute("exception", e);
		return path + "exceptionHandler";
	}

	@ExceptionHandler(IllegalArgumentException.class)
	public String exceptionHandler(IllegalArgumentException e, Model model) {
		model.addAttribute("msg", e.getClass().getName());
		model.addAttribute("exception", e);
		return path + "exceptionHandler";
	}
}
