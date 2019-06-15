package com.ps.springmvc.pshaiderpaint.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Order {

	
	public int id;
	
	public String name;
	
	public String email;
	
	public String mobilenumber;
	
	public String city;
	
	public String surfacetopainted;
	
	public String sales;
	
	public String subject;
	
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSurfacetopainted() {
		return surfacetopainted;
	}

	public void setSurfacetopainted(String surfacetopainted) {
		this.surfacetopainted = surfacetopainted;
	}

	public String getSales() {
		return sales;
	}

	public void setSales(String sales) {
		this.sales = sales;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String message;
	
	
	
	public void SaveData(String aname, String aemail, String amobilenumber , String acity,String surfacetobepainted,String asales, String amessage, String asubje) {

		String url = "jdbc:mysql://localhost:3306/haiderpaint";

		String username = "root";

		String password = "root";
		// String querry= "SELECT * FROM usrdetails";
		String querryrecord = "INSERT INTO  orderdetails(name,email,mobilenumber,city,surfacetopainted,sales,message,subject) VALUE ('" + aname + "','"
				+ aemail + "','" + amobilenumber + "','" + acity + "','"+surfacetobepainted+"','"+asales+"','"+amessage+"','"+asubje+"')";

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
	
	static final String BODY = String.join(
    	    System.getProperty("line.separator"),
    	    "<h1>Amazon SES SMTP Email Test</h1>",
    	    "<p>This email was sent with Amazon SES using the ", 
    	    "<a href='https://github.com/javaee/javamail'>Javamail Package</a>",
    	    " for <a href='https://www.java.com'>Java</a>."
    	);
	
	
	

	public static void EmailApi( String too, String sub, String message) {
		//String to = email;// send too
		String to = too;
	    String from = "zubairmujeeb387@gmail.com";//   from part
	    String username = "zubairmujeeb387@gmail.com";
	    String password= "dotnetjava@123";
	    String host = "localhost";//or IP address  

	   //Get the session object  
	    java.util.Properties properties = System.getProperties();  
	    properties.put("mail.smtp.host", "smtp.gmail.com");
	    properties.put("mail.smtp.port", "465");
	    properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    properties.put("mail.smtp.socketFactory.fallback", "false");
	    Session mailsession= Session.getDefaultInstance(properties,null);
	    mailsession.setDebug(true);

	   //compose the message  
	    try{  
	       MimeMessage msg = new MimeMessage(mailsession);  
	       msg.setFrom(new InternetAddress(from));  
	       msg.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
	       msg.setSubject(sub);  
	       msg.setText(BODY,"text/html");  

	       // Send message  
	       Transport transport = mailsession.getTransport("smtp");
	       transport.connect("smtp.gmail.com",username,password);
	       transport.sendMessage(msg, msg.getAllRecipients());
	       Transport.send(msg);  
	       System.out.println("message sent successfully....");  

	    }catch (MessagingException mex) {mex.printStackTrace();} 
		
	}

	
	
	
	
	
	
}
