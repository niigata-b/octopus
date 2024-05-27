package model.dao;

import java.sql.Connection;
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

}
