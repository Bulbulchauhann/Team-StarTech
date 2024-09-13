package com.ground.work.model;

public class Event {
    private int id;
    private String venue;
    private String name;
    private String date;
    private String description;

    public Event(int id,String venue, String name, String date, String description) {
        this.id = id;
        this.venue= venue;
        this.name = name;
        this.date = date;
        this.description = description;
    }

    public Event() {
		
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}
}
