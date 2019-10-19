package kr.magasin.member.model.vo;

import java.sql.Date;

public class Member {
	private String id;
	private String pw;
	private String name;
	private String addr;
	private String phone;
	private int birthdate;
	private String gender;
	private String grade;
	private String email;
	private Date enrollDate;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Member(String id, String pw, String name, String addr, String phone, int birthdate, String gender,
			String grade, String email, Date enrollDate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.addr = addr;
		this.phone = phone;
		this.birthdate = birthdate;
		this.gender = gender;
		this.grade = grade;
		this.email = email;
		this.enrollDate = enrollDate;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(int birthdate) {
		this.birthdate = birthdate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
}
