package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.EmployeeBean;
import model.entity.OpinionBean;

public class OpinionDAO {

	public List<OpinionBean> selectAll() throws SQLException, ClassNotFoundException {

		List<OpinionBean> opinionList = new ArrayList<OpinionBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("SELECT * FROM t_opinion")) {

			// 結果の操作
			while (res.next()) {
				String code = res.getString("code");
				String opinionText = res.getString("opinionText");

				OpinionBean opinion = new OpinionBean();
				opinion.setCode(code);
				opinion.setOpinionText(opinionText);

				opinionList.add(opinion);
			}
		}
		return opinionList;
	}

	/**
	 * 引数で指定したコードの従業員オブジェクトを返します。
	 * @return 従業員オブジェクト
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public OpinionBean select(String code, String opinionText)
			throws SQLException, ClassNotFoundException {

		OpinionBean opinion = new OpinionBean();

		String sql = "SELECT * FROM t_opinion WHERE code = ? AND opinionText = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {

			// プレースホルダへの値の設定
			pstmt.setString(1, code);
			pstmt.setString(2, opinionText);

			ResultSet res = pstmt.executeQuery();

			// 結果の操作
			while (res.next()) {
				opinion.setCode(res.getString("code"));
				opinion.setOpinionText(res.getString("opinionText"));
			}
		}
		return opinion;
	}
	
	/**
	 * 引数で指定したコードの従業員オブジェクトを返します。
	 * @return 従業員オブジェクト
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public int insert(String code, String ) 
			throws SQLException, ClassNotFoundException {

		String opinionText;

		String sql = "INSERT INTO t_opinion VALUES(default ,?, ?, default)";
		
		int count = 0;

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {

			// プレースホルダへの値の設定
			pstmt.setString(1, code);
			pstmt.setString(2, name);
			pstmt.setInt(3, age);
			pstmt.setString(4, section);

			count = pstmt.executeUpdate();

		}
		
		return count;
	}

}
