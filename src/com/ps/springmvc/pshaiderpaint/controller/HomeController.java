package com.ps.springmvc.pshaiderpaint.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ps.springmvc.pshaiderpaint.models.Paints;
import com.ps.springmvc.pshaiderpaint.models.Registration;
import com.ps.springmvc.pshaiderpaint.models.paintdetails;

import antlr.collections.List;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String showhome() {
		/*
		 * ModelAndView mv = new ModelAndView("page");
		 * mv.addObject("userclicked",true);
		 */

		return "Shared/Shared";

	}

	@RequestMapping("/getdetails")
	public String alldetails() {

		return "details";

	}

	@RequestMapping("/Contact")
	public String Contactform() {

		return "Contact";

	}

	@RequestMapping("/Registration")
	public String getindex() {

		return "index";

	}

	@RequestMapping("/getregisterd")
	public String homepage(Model model, HttpServletRequest req) {

		String name = req.getParameter("name");
		String password = req.getParameter("pwd");
		String email = req.getParameter("email");
		String number = req.getParameter("number");

		Registration reg = new Registration();
		reg.setName(name);
		reg.setEmail(email);
		reg.setPassword(password);
		reg.setMobilenumber(number);

		model.addAttribute("registration", reg);
		reg.SaveData(name, email, password, number); // saving data

		return "index";

	}

	@RequestMapping(value = "/allpaints")
	public String showallpaints(Model model, HttpServletRequest req)
			throws InstantiationException, IllegalAccessException, ClassNotFoundException {

		String url = "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";
		// String querry= "SELECT * FROM usrdetails";
		String querryrecord = "SELECT * FROM paintsnames";

		try {
			// DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			// int count = st.executeUpdate(querryrecord);

			// st = con.createStatement();
			ResultSet rs = st.executeQuery(querryrecord);

			ArrayList results = new ArrayList();

			while (rs.next()) {
				rs.getString("name");
				Paints all = new Paints();
				all.setId(rs.getString("id"));
				all.setName(rs.getString("name"));
				all.setDescription(rs.getString("description"));
				all.setPrice(rs.getString("price"));
				all.setTypeofpaint(rs.getString("painttype"));
				all.setLogourl(rs.getString("logourl"));

				results.add(all);
				// model.addAttribute("paint", all);
				System.out.println("Record has been Displayed !" + all.logourl);

			}

			req.setAttribute("paint", results);

			st.close();
			st.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "home";

	}

	@RequestMapping("/showpage")
	public String showpage(@RequestParam("id") int id, HttpServletRequest req, Model model)
			throws ClassNotFoundException {

		String url = "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";

		String querryrecord = "SELECT * FROM paintsdetails where paintnamesid='" + id + "';";

		try {
			// DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(querryrecord);

			ArrayList results = new ArrayList();

			while (rs.next()) {

				paintdetails all = new paintdetails();

				all.setNameitem(rs.getString("nameitem"));
				all.setdesciption(rs.getString("desciption"));
				all.setpackingsize(rs.getString("packingsize"));
				all.setId(rs.getString("id"));
				all.setImages(rs.getString("images"));

				results.add(all);

				System.out.println("Record has been Displayed description !" + all.paintnamesid);

			}

			Paints ko = new Paints();
			ko.showcruntpage(id, req);
			HttpSession session = req.getSession(false);
			String myName = (String) session.getAttribute("name");
			System.out.println("this is my name of session" + myName);

			// System.out.println("This is ko"+ko.toString());
			model.addAttribute("att", myName);

			req.setAttribute("paint", results);

			st.close();
			st.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "view";

	}

	@RequestMapping("/edit")
	public String updateedit(@RequestParam("ids") int ids, Model model) throws ClassNotFoundException {

		Registration ho = new Registration();
		Paints ko = (Paints) ho.edit(ids);

		model.addAttribute("att", ko);

		return "edit";

		// String redirectpassingvalue="redirect:/projectname/method/{id}";
	}

	@RequestMapping("/save")
	public String saveupdateddata(@RequestParam("t1") String t1, @RequestParam("t2") String t2,
			@RequestParam("t3") String t3, @RequestParam("id") String id) {
		String url = "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";
		String updatequerry = "update paintsnames SET name='" + t1 + "', description='" + t2 + "', price='" + t3
				+ "' where id='" + id + "'";
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			int count = st.executeUpdate(updatequerry);

			// st = con.createStatement();
			// rs = st.executeQuery(querryrecord);
			st.close();
			st.close();
			System.out.println(count + "Record has been Modified !");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "home";

	}

}
