package com.ps.springmvc.pshaiderpaint.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.cj.x.protobuf.MysqlxCrud.Order;
import com.sun.xml.fastinfoset.sax.Properties;
import javax.mail.*;  
import javax.mail.internet.*;  
import javax.activation.*;
import javax.ejb.EJB;

import java.lang.System;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

import com.ps.springmvc.pshaiderpaint.models.*;

@Controller
public class OrderController {

	@RequestMapping("/ordernow")
	public String index() {
		
		return "Order/index";
		
	}
	
	@RequestMapping(value = "/submited")
	public String Submit(HttpServletRequest req) {
		
	String name	=(String) req.getParameter("name");
	String email	=(String) req.getParameter("email");
	String city	=(String) req.getParameter("city");
	String mobilenumber	=(String) req.getParameter("mobilenumber");
	String surfacetopainted	=(String) req.getParameter("surfacetopainted");
	String sales	=(String) req.getParameter("sales");
	String message	=(String) req.getParameter("message");
	String subject	=(String) req.getParameter("subjects");
	
	com.ps.springmvc.pshaiderpaint.models.Order allda= new com.ps.springmvc.pshaiderpaint.models.Order();
	allda.SaveData(name, email, mobilenumber, city, surfacetopainted, sales, message,subject);
	
	com.ps.springmvc.pshaiderpaint.models.Order.EmailApi(email,subject,message);

		return "Order/thankyou";
		
		
	}
	
	
	
}
