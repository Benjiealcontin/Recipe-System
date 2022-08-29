package com.operation.Model;

public class Email {

	private String username;
	private String email;
	private String code;
	
	public Email() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Email(String username, String email, String code) {
		super();
		this.username = username;
		this.email = email;
		this.code = code;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
}
