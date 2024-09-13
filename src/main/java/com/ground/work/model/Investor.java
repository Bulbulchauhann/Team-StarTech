package com.ground.work.model;


public class Investor {
    
    private int  investor_id;
    private int user_id;
    private String name;
    private String email;
    private String domain;
    private String company_name;
    private String revenue;
    private String role ;
    private String expertise;
    private String industry ;
    private String mentorship;
    private String availability;
    private String support;
    
    
	public Investor(int investor_id, int user_id, String name, String email, String domain, String company_name,
			String revenue, String role, String expertise, String industry, String mentorship, String availability,
			String support) {
		super();
		this.investor_id = investor_id;
		this.user_id = user_id;
		this.name = name;
		this.email = email;
		this.domain = domain;
		this.company_name = company_name;
		this.revenue = revenue;
		this.role = role;
		this.expertise = expertise;
		this.industry = industry;
		this.mentorship = mentorship;
		this.availability = availability;
		this.support = support;
	}
	
	public Investor() {
		
	}

	public int getInvestor_id() {
		return investor_id;
	}
	public void setInvestor_id(int investor_id) {
		this.investor_id = investor_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getRevenue() {
		return revenue;
	}
	public void setRevenue(String revenue) {
		this.revenue = revenue;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getExpertise() {
		return expertise;
	}
	public void setExpertise(String expertise) {
		this.expertise = expertise;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getMentorship() {
		return mentorship;
	}
	public void setMentorship(String mentorship) {
		this.mentorship = mentorship;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	public String getSupport() {
		return support;
	}
	public void setSupport(String support) {
		this.support = support;
	}
    
    

}

