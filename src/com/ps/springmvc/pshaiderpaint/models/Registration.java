package com.ps.springmvc.pshaiderpaint.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Registration {

	public String name;
	public String email;
	public String password;
	public String mobilenumber;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void SaveData(String aname, String aemail, String apassword, String mnumber) {

		String url = "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";
		// String querry= "SELECT * FROM usrdetails";
		String querryrecord = "INSERT INTO registration(name,email,password,mobilenumber) VALUE ('" + aname + "','"
				+ aemail + "','" + apassword + "','" + mnumber + "')";

		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			int count = st.executeUpdate(querryrecord);

			// st = con.createStatement();
			// rs = st.executeQuery(querryrecord);
			st.close();
			st.close();
			System.out.println(count + "Record has been saved !");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public Object edit(int id) throws ClassNotFoundException {

		//String url = "jdbc:mysql://localhost:3306/haiderpaint";
		String url= "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";
		String querry = "SELECT * FROM paintsnames where id='"+id+"'";

		Paints all = new Paints();
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(querry);

			if (rs.next()) {

				all.setId(rs.getString("id"));
				all.setName(rs.getString("name"));
				all.setDescription(rs.getString("description"));
				all.setPrice(rs.getString("price"));
				all.setTypeofpaint(rs.getString("painttype"));

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
