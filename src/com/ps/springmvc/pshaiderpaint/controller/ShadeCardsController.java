package com.ps.springmvc.pshaiderpaint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShadeCardsController {

	@RequestMapping("/shades")
	public String index(){
		
		return "ShadeCards/index";
		
		
	}
	
}

