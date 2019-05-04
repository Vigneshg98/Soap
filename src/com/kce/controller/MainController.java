package com.kce.controller;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kce.model.SoapBean;

@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView doStart() {
		return new ModelAndView("home");
	}
	
	@RequestMapping(value = "/display", method = RequestMethod.POST)
	public ModelAndView doAdd(@ModelAttribute SoapBean soap, Map<String, List<String>> map, Map<String, String> map1) {
		soap.listSoaps = new ArrayList<String>();
		
		if(soap.getCategory().equals("Beauty")) {
			soap.listSoaps.add("Dove");
			soap.listSoaps.add("Pears");
			soap.listSoaps.add("Lifeboy");
			map1.put("name", "Beauty");
			map.put("type", soap.listSoaps);
		}
		if(soap.getCategory().equals("Health")) {
			soap.listSoaps.add("Lifeboy");
			soap.listSoaps.add("Hamam");
			soap.listSoaps.add("Pears");
			map1.put("name", "Health");
			map.put("type", soap.listSoaps);
		}
		if(soap.getCategory().equals("Herbal")) {
			soap.listSoaps.add("Chandrika");
			soap.listSoaps.add("Hamam");
			soap.listSoaps.add("Pears");
			map1.put("name", "Herbal");
			map.put("type", soap.listSoaps);
		}
		return new ModelAndView("result");
	} 
	
}