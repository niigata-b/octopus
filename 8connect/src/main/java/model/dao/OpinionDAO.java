package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.OpinionBean;

public class OpinionDAO {

	public List<OpinionBean> selectAll() throws SQLException, ClassNotFoundException {

		List<OpinionBean> opinionList = new ArrayList<OpinionBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("SELECT name, opinion_text, send_datetime FROM m_employee JOIN t_opinion ON m_employee.code = t_opinion.code ORDER BY send_datetime DESC")) {

			// 結果の操作
			while (res.next()) {
				String name = res.getString("name");
				String sendDatetime = res.getString("send_datetime");
				String opinionText = res.getString("opinion_text");

				OpinionBean opinion = new OpinionBean();
				
				opinion.setName(name);
				opinion.setSendDatetime(sendDatetime);
				opinion.setOpinionText(opinionText);

				opinionList.add(opinion);
			}
		}
		return opinionList;
	}
	
	public List<OpinionBean> select(String code) throws SQLException, ClassNotFoundException {

		List<OpinionBean> opinionList = new ArrayList<OpinionBean>();
		
		String sql = "SELECT opinion_text, send_datetime FROM t_opinion WHERE code = ? ORDER BY send_datetime DESC";

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			// プレースホルダへの値の設定
			pstmt.setString(1, code);
			
			ResultSet res = pstmt.executeQuery();

			// 結果の操作
			while (res.next()) {
				String sendDatetime = res.getString("send_datetime");
				String opinionText = res.getString("opinion_text");

				OpinionBean opinion = new OpinionBean();
				
				opinion.setSendDatetime(sendDatetime);
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
	public int insert(String code, String opinionText) 
			throws SQLException, ClassNotFoundException {

		String sql = "INSERT INTO t_opinion VALUES(default ,?, ?, default)";
		
		int count = 0;

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {

			// プレースホルダへの値の設定
			pstmt.setString(1, code);
			pstmt.setString(2, opinionText);

			count = pstmt.executeUpdate();

		}
		
		return count;
	}

}
