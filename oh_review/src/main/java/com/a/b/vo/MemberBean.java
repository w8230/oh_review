package com.a.b.vo;
public class MemberBean {
	private String member_id;
	private String member_password;
	private String member_name;
	private String member_blog;
	private String member_email;
	private String member_address;
	private String member_address_detail;
	private String member_postcode;
	private String UPDATEDATE;
	private String member_img;
	


	public MemberBean() {
		super();
	}
	public MemberBean(String member_id, String member_password) {
		this.member_id=member_id;
		this.member_password=member_password;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_blog() {
		return member_blog;
	}
	public void setMember_blog(String member_blog) {
		this.member_blog = member_blog;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_address_detail() {
		return member_address_detail;
	}
	public void setMember_address_detail(String member_address_detail) {
		this.member_address_detail = member_address_detail;
	}
	public String getMember_postcode() {
		return member_postcode;
	}
	public void setMember_postcode(String member_postcode) {
		this.member_postcode = member_postcode;
	}
	public String getUPDATEDATE() {
		return UPDATEDATE;
	}
	public void setUPDATEDATE(String uPDATEDATE) {
		this.UPDATEDATE = uPDATEDATE;
	}
	public String getMember_img() {
		return member_img;
	}
	public void setMember_img(String member_img) {
		this.member_img = member_img;
	}
	
}
