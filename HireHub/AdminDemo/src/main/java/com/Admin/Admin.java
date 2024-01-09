package com.Admin;

public class Admin {
	private int id;
	private String name;
	private String nic;
	private String phone;
	private String address;
	public Admin(int id, String name, String nic, String phone, String address) {
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.phone = phone;
		this.address = address;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getNic() {
		return nic;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getAddress() {
		return address;
	}
	
}
