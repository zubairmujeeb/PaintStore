package com.ps.springmvc.pshaiderpaint.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps.springmvc.pshaiderpaint.models.Paints;
import com.ps.springmvc.pshaiderpaint.models.People;
import com.ps.springmvc.pshaiderpaint.models.Registration;
@Controller
public class PeopleController {

	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value = "/Searchpeople")
	public String Showallpeople(Model model,HttpServletRequest req) throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		
        String url= "jdbc:mysql://localhost:3306/haiderpaint";
		
		String username= "root";
		
		String password="root";
		
		String querryrecord= "SELECT * FROM peopledetails";
		
		try {
			//DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			Statement st= con.createStatement();
		
        ResultSet rs = st.executeQuery(querryrecord); 
        
        
        ArrayList results =  new ArrayList();
        
        
        while(rs.next()){
        	rs.getString("name");
        	People all = new People();
        	
        	all.setId(rs.getString("id"));
        	all.setName(rs.getString("name"));
        	all.setPhonenumber(rs.getString("phonenumber"));
        	all.setIsAvailable(rs.getBoolean("isAvailable"));
        	all.setAdress(rs.getString("adress"));
        	all.setSkills(rs.getString("skills"));
        	all.setExperience(rs.getString("experience"));
        	
        	results.add(all);
        	System.out.println("This is get adress"+rs.getString("adress"));
        	//model.addAttribute("paint", all);
        	System.out.println("Record has been Displayed !"+ all.getAdress());
        	
        }
      
        req.setAttribute("paint", results);
        
		 st.close();
			st.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
		
		return "People/index";
		
	}
	
	@RequestMapping("/Showdetails")
	public String showdetails(@RequestParam("id") int id, HttpServletRequest req, Model model) throws ClassNotFoundException{
		
		String url= "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";
		String querry = "SELECT * FROM peopledetails where id='"+id+"'";

		People all = new People();
		 ArrayList results =  new ArrayList();
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(querry);

			if (rs.next()) {

				all.setId(rs.getString("id"));
				all.setName(rs.getString("name"));
				all.setPhonenumber(rs.getString("phonenumber"));
				all.setIsAvailable(rs.getBoolean("isAvailable"));
				all.setAdress(rs.getString("adress"));
				all.setSkills(rs.getString("skills"));
				all.setExperience(rs.getString("experience"));
				results.add(all);

			}
			//req.setAttribute("people", results);
			model.addAttribute("att",results);

			st.close();
			st.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//return all;
	
		
		
		System.out.println("this is people show details"+ id);
			return "/People/details";
//        Registration ho= new Registration();
//        Paints ko= (Paints) ho.edit(ids);
//       
//       model.addAttribute("att",ko);
//      
//		return "edit";
//		
		
		//String redirectpassingvalue="redirect:/projectname/method/{id}";
	}
		
	
	
	
	
}
