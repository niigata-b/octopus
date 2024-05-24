package model.dao;

import java.sql.Connection;
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
				ResultSet res = stmt.executeQuery("SELECT name, title, post_datetime FROM m_employee JOIN t_message ON m_employee.code = t_message.code ORDER BY post_datetime;")) {

			// 結果の操作
			while (res.next()) {
				String name = res.getString("name");
				String title = res.getString("title");
				String postDatetime = res.getString("post_datetime");

				MessageBean message = new MessageBean();
				message.setName(name);
				message.setTitle(title);
				message.setPostDatatime(postDatetime);

				messageList.add(message);
			}
		}
		return messageList;
	}

}
