package com.payment;


public class User {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String packages;
    private String amount;
    private String method;
	public User(int id, String name, String email, String phone, String packages, String amount, String method) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.packages = packages;
		this.amount = amount;
		this.method = method;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPackages() {
		return packages;
	}
	public void setPackages(String packages) {
		this.packages = packages;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
    
	
	
    
    
   
	

	  
}
