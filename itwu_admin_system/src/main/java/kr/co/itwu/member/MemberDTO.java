package kr.co.itwu.member;

import java.util.Date;

public class MemberDTO {
	
	private String code;
	private String name;
	private String passwd;
	private String phone;
	private String email;
	private String grade;
	private String academic_status;
	private Date admission_date;
	private String hcode;
	
	public MemberDTO() {
		super();
	}	
	
	public MemberDTO(String code, String name, String passwd, String phone, String email, String grade,
			String academic_status, Date admission_date, String hcode) {
		super();
		this.code = code;
		this.name = name;
		this.passwd = passwd;
		this.phone = phone;
		this.email = email;
		this.grade = grade;
		this.academic_status = academic_status;
		this.admission_date = admission_date;
		this.hcode = hcode;
	}

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAcademic_status() {
		return academic_status;
	}
	public void setAcademic_status(String academic_status) {
		this.academic_status = academic_status;
	}
	public Date getAdmission_date() {
		return admission_date;
	}
	public void setAdmission_date(Date admission_date) {
		this.admission_date = admission_date;
	}
	public String getHcode() {
		return hcode;
	}
	public void setHcode(String hcode) {
		this.hcode = hcode;
	}
	@Override
	public String toString() {
		return "MemberDTO [code=" + code + ", name=" + name + ", passwd=" + passwd + ", phone=" + phone + ", email="
				+ email + ", grade=" + grade + ", academic_status=" + academic_status + ", admission_date="
				+ admission_date + ", hcode=" + hcode + "]";
	}
	
	

}
