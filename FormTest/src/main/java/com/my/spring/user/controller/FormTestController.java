package com.my.spring.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormTestController {

	@RequestMapping(value="/rest/testvalue")
	public String connectTest() {
		return "user/formTest";
	}
	
}
