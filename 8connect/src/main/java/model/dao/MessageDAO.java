package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.MessageBean;

public class MessageDAO {

	/**
	 * すべての掲示板のリストを返します。
	 * @return 掲示板のリスト
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public List<MessageBean> selectAll() throws SQLException, ClassNotFoundException {

		List<MessageBean> messageList = new ArrayList<MessageBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("SELECT message_id, name, title, post_datetime FROM m_employee JOIN t_message ON m_employee.code = t_message.code ORDER BY post_datetime DESC")) {

			// 結果の操作
			while (res.next()) {
				int messageId = res.getInt("message_id");		
				String name = res.getString("name");
				String title = res.getString("title");
				String postDatetime = res.getString("post_datetime");

				MessageBean message = new MessageBean();
				message.setMessageId(messageId);
				message.setName(name);
				message.setTitle(title);
				message.setPostDatatime(postDatetime);

				messageList.add(message);
			}
		}
		return messageList;
	}

	/**
	 * 引数で指定したコードの掲示板オブジェクトを返します。
	 * @return 掲示板オブジェクト
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public MessageBean select(String messageId)
			throws SQLException, ClassNotFoundException {

		MessageBean message = new MessageBean();

		String sql = "SELECT t_message.code, name, message_id, title, message_text, post_datetime FROM m_employee JOIN t_message ON m_employee.code = t_message.code WHERE message_id = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {

			// プレースホルダへの値の設定
			pstmt.setString(1, messageId);

			ResultSet res = pstmt.executeQuery();

			// 結果の操作
			while (res.next()) {
				message.setMessageId(res.getInt("message_id"));
				message.setCode(res.getString("code"));
				message.setName(res.getString("name"));
				message.setTitle(res.getString("title"));
				message.setMessageText(res.getString("message_text"));
				message.setPostDatatime(res.getString("post_datetime"));
			}
		}
		return message;
	}

	public int delete(String messageId) throws ClassNotFoundException, SQLException {

		int cnt = 0; //処理件数

		String sql = "DELETE FROM t_message WHERE message_id = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {

			// プレースホルダへの値の設定
			pstmt.setString(1, messageId);

			// SQLステートメントの実行
			cnt = pstmt.executeUpdate();
		}
		return cnt;

	}

	public int post(String code, String title , String messageText) throws ClassNotFoundException, SQLException {

		int cnt = 0; //処理件数

		String sql = "INSERT INTO t_message VALUES(default,?,?,?,default )";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {

						
			// プレースホルダへの値の設定
			pstmt.setString(1, code);
			pstmt.setString(2, title);
			pstmt.setString(3, messageText);

			// SQLステートメントの実行
			cnt = pstmt.executeUpdate();
		}
		return cnt;

	}
}
