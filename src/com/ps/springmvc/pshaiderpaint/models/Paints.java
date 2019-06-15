package com.ps.springmvc.pshaiderpaint.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Paints {

	public String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String name;
	public String price;
	public String logourl;
	
	public String getLogourl() {
		return logourl;
	}
	public void setLogourl(String logourl) {
		this.logourl = logourl;
	}
	public String description;
	public String typeofpaint;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTypeofpaint() {
		return typeofpaint;
	}
	public void setTypeofpaint(String typeofpaint) {
		this.typeofpaint = typeofpaint;
	}
	
	
	public Object showcruntpage(int id,HttpServletRequest req) throws ClassNotFoundException {

		//String url = "jdbc:mysql://localhost:3306/haiderpaint";
		String url= "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";
		String querry = "SELECT * FROM paintsnames where id ='"+id+"'";

		Paints all = new Paints();
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(querry);

			if (rs.next()) {
				System.out.println("This is name"+rs.getString("name"));

				all.setName(rs.getString("name"));
				 HttpSession session = req.getSession();
				session.setAttribute("name", rs.getString("name"));
			}

			st.close();
			st.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return all;
	}
	
	
	
}
