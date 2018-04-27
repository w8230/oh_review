package com.a.b.vo;

public class EnterBean {
	private String enter_id;
	private String enter_password;
	private String enter_name;
	private String enter_number;
	private String enter_tel;
	private String enter_email;
	
	public EnterBean() {
		super();
	}
	public EnterBean(String enter_id, String enter_password) {
		this.enter_id=enter_id;
		this.enter_password=enter_password;
	}
	
	public String getEnter_id() {
		return enter_id;
	}
	public void setEnter_id(String enter_id) {
		this.enter_id = enter_id;
	}
	public String getEnter_password() {
		return enter_password;
	}
	public void setEnter_password(String enter_password) {
		this.enter_password = enter_password;
	}
	public String getEnter_name() {
		return enter_name;
	}
	public void setEnter_name(String enter_name) {
		this.enter_name = enter_name;
	}
	public String getEnter_number() {
		return enter_number;
	}
	public void setEnter_number(String enter_number) {
		this.enter_number = enter_number;
	}
	public String getEnter_tel() {
		return enter_tel;
	}
	public void setEnter_tel(String enter_tel) {
		this.enter_tel = enter_tel;
	}
	public String getEnter_email() {
		return enter_email;
	}
	public void setEnter_email(String enter_email) {
		this.enter_email = enter_email;
	}
}
