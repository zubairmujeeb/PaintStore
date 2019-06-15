package com.ps.springmvc.pshaiderpaint.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class paintdetails {

	public String id;
	public String nameitem;
	public String desciption;
	
	public String images;
	
	
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String packingsize;
	public String getdesciption() {
		return desciption;
	}
	public void setdesciption(String desciption) {
		this.desciption = desciption;
	}
	public String getpackingsize() {
		return packingsize;
	}
	public void setpackingsize(String packingsize) {
		this.packingsize = packingsize;
	}
	public Paints paintnamesid;
	public Paints getPaintnamesid() {
		return paintnamesid;
	}
	public void setPaintnamesid(Paints paintnamesid) {
		this.paintnamesid = paintnamesid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNameitem() {
		return nameitem;
	}
	public void setNameitem(String nameitem) {
		this.nameitem = nameitem;
	}
	
	
	
	

	
}
