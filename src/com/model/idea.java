package com.model;




public class idea {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEntreprenureName() {
		return entreprenureName;
	}
	public void setEntreprenureName(String entreprenureName) {
		this.entreprenureName = entreprenureName;
	}
	public String getAbstractIdea() {
		return abstractIdea;
	}
	public void setAbstractIdea(String abstractIdea) {
		this.abstractIdea = abstractIdea;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	private String entreprenureName;
	private String abstractIdea;
	private String email;
	private String city;
	private int amount;
	private int activeFlag;
	private String idea;
	public String getIdea() {
		return idea;
	}
	public void setIdea(String idea) {
		this.idea = idea;
	}
	private String created_date;
	private String updated_date;
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	public String getUpdated_date() {
		return updated_date;
	}
	public void setUpdated_date(String updated_date) {
		this.updated_date = updated_date;
	}	
}
