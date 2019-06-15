package com.ps.springmvc.pshaiderpaint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class CalculateController {

	
	@RequestMapping("/calculate")
	public String index() {
		
		return "Calculate/index";
		
	}
	
}
