package com.ground.work.model;


public class Contactus {
   
	private String name;
	private String email;
	private String message;
	
	
	public Contactus(String name,String email,String message) {
		this.name=name;
		this.email=email;
		this.message=message;
	}
	
	public Contactus() {
		
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
