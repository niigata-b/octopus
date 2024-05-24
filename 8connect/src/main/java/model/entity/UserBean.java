package model.entity;

import java.io.Serializable;

public class UserBean implements Serializable {
	
	/**
	 * ユーザID
	 */
	private String userId;
	
	/**
	 * パスワード
	 */
	private String password;
	
	/**
	 * 従業員コード
	 */
	private String code;
	
	/**
	 * ロールID
	 */
	private int roleId;
	
	/**
	 * 名前
	 */
	private String name;
	
	


	/**
	 * コンストラクタ
	 */
	public UserBean() {
		
	}
	
	
	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public int getRoleId() {
		return roleId;
	}


	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


}
