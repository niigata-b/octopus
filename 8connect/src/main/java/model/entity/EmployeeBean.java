package model.entity;

import java.io.Serializable;

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
	private String birthDay;
	
	/**
	 * 入社日
	 */
	private String hireDate;
	
	/**
	 * 部署名
	 */
	private String sectioName;

	
	


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


	public String getBirthDay() {
		return birthDay;
	}


	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}


	public String getHireDate() {
		return hireDate;
	}


	public void setHireDate(String hireDate) {
		this.hireDate = hireDate;
	}
	
	public String getSectioName() {
		return sectioName;
	}


	public void setSectioName(String sectioName) {
		this.sectioName = sectioName;
	}
	

}
