package com.sindong.spirng.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

@Controller
public class FormTestController {
/*
	private View jsonview;
	
	@RequestMapping(value="/rest/testvalue")//,method= RequestMethod.GET)
	public View view(Model model) {
		System.out.println("테스트성공");
		model.addAttribute("id","kamil");
		//return "spring/form_test";
		//return "jsonview";
		return jsonview;
	}
	*/
/*	
	@RequestMapping(value="/rest/testvalue")
	public void hello(Model model) {
		//System.out.println("테스트성공");
		model.addAttribute("user", "data");
	}
	*/
	
	@RequestMapping(value="/rest/testvalue")
	public String hello(Model model) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("userid", "userid-02");
		map.put("userpw", "userpw-02");
		
		model.addAttribute("map", map);
		
		return "form_test";
		
	}
}
