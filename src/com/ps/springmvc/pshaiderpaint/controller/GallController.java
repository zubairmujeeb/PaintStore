package com.ps.springmvc.pshaiderpaint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GallController {

	@RequestMapping("/Gallery")
	public String index(){
		
		return "Gallery/index";
		
		
	}
	
	
	
}
