package com.ground.work.model;

public class Startup {
	
	    private int startups_id;
	    private int user_Id;
	    private String name;
	    private String email;
	    private String domain;
	    private String sector;
	    private String pitchdeck;
	    private String revenue;
	    private String funding;
	    private String productStage;
	    private String runway;
	    private String notableInvestors;
	    
	    
	    
		public Startup(int startups_id, int user_Id, String name, String email, String domain, String sector,
				String pitchdeck, String revenue, String funding, String productStage, String runway,
				String notableInvestors) {
			super();
			this.startups_id = startups_id;
			this.user_Id = user_Id;
			this.name = name;
			this.email = email;
			this.domain = domain;
			this.sector = sector;
			this.pitchdeck = pitchdeck;
			this.revenue = revenue;
			this.funding = funding;
			this.productStage = productStage;
			this.runway = runway;
			this.notableInvestors = notableInvestors;
		}
		
		public Startup() {
			
		}

		public int getStartups_id() {
			return startups_id;
		}
		public void setStartups_id(int startups_id) {
			this.startups_id = startups_id;
		}
		public int getUserId() {
			return user_Id;
		}
		public void setUserId(int userId) {
			this.user_Id = userId;
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
		public String getSector() {
			return sector;
		}
		public void setSector(String sector) {
			this.sector = sector;
		}
		public String getPitchdeck() {
			return pitchdeck;
		}
		public void setPitchdeck(String pitchdeck) {
			this.pitchdeck = pitchdeck;
		}
		public String getRevenue() {
			return revenue;
		}
		public void setRevenue(String revenue) {
			this.revenue = revenue;
		}
		public String getFunding() {
			return funding;
		}
		public void setFunding(String funding) {
			this.funding = funding;
		}
		public String getProductStage() {
			return productStage;
		}
		public void setProductStage(String productStage) {
			this.productStage = productStage;
		}
		public String getRunway() {
			return runway;
		}
		public void setRunway(String runway) {
			this.runway = runway;
		}
		public String getNotableInvestors() {
			return notableInvestors;
		}
		public void setNotableInvestors(String notableInvestors) {
			this.notableInvestors = notableInvestors;
		}

	

   
}

