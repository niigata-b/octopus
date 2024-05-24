package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.entity.UserBean;

public class UserDAO {
	
	/**
	 * すべてのユーザのリストを返します。
	 * @return ユーザのリスト
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public List<UserBean> selectAll(String userId) throws SQLException, ClassNotFoundException {

		List<UserBean> userList = new ArrayList<UserBean>();
		
		String sql = "SELECT * FROM m_user WHERE user_id = ?";

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, userId);
			
			ResultSet res = pstmt.executeQuery();

			// 結果の操作
			if (res.next()) {
				String userId1 = res.getString("user_id");
				String password = res.getString("password");
				String code = res.getString("code");
				int roleId = res.getInt("role_id");

				UserBean user = new UserBean();
				user.setUserId(userId1);
				user.setPassword(password);
				user.setCode(code);
				user.setRoleId(roleId);
				
				//System.out.println(user.getRoleId());

				userList.add(user);
			}
		}
		return userList;
	}
	
	public boolean loginCheck(String userId, String password) throws ClassNotFoundException, SQLException {
		
		String sql = "SELECT * FROM m_user WHERE user_id = ? AND password = ?";
		
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, userId);
			pstmt.setString(2, password);
			
			ResultSet res = pstmt.executeQuery();
			
			if (res.next()) {
				return true;
			}
			
		}
		
		return false;
	}
	
	public String selectName(String code) throws SQLException, ClassNotFoundException {
		String sql = "SELECT name FROM m_user JOIN m_employee ON m_user.code = m_employee.code WHERE m_user.code = ?";
		
		String name = null;
		
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, code);
			
			ResultSet res = pstmt.executeQuery();
			
			
			//結果の操作
			if (res.next()) {
				name = res.getString("name");
				
				UserBean user = new UserBean();
				user.setName(name);
				
				System.out.println(name);
			}
			
		}
		
		return name;
	}

}
