package model.entity;

import java.io.Serializable;
import java.sql.Date;

public class EmployeeBean implements Serializable {
	
	/**
	 * 従業員コード
	 */
	private String code;
	
	/**
	 * 名前
	 */
	private String name;
	
	/**
	 * ふりがな
	 */
	private String kanaName;
	
	/**
	 * 部署コード
	 */
	private String sectionCode;
	
	/**
	 * 性別
	 */
	private String gender;
	
	/**
	 * 生年月日
	 */
	private Date birthDay;
	
	/**
	 * 入社日
	 */
	private Date hireDate;
	
	/**
	 * 部署名
	 */
	private String sectionName;

	
	


	/** 
	 * コンストラクタ
	 */
	public EmployeeBean() {
		
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


	public String getKanaName() {
		return kanaName;
	}


	public void setKanaName(String kanaName) {
		this.kanaName = kanaName;
	}


	public String getSectionCode() {
		return sectionCode;
	}


	public void setSectionCode(String sectionCode) {
		this.sectionCode = sectionCode;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public Date getBirthDay() {
		return birthDay;
	}


	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}


	public Date getHireDate() {
		return hireDate;
	}


	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	
	public String getSectionName() {
		return sectionName;
	}


	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	

}
