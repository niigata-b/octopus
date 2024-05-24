package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.EmployeeBean;

public class EmployeeDAO {
	
	public List<EmployeeBean> selectAll() throws SQLException, ClassNotFoundException {
		List<EmployeeBean> employeeList = new ArrayList<EmployeeBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("select code,name,kana_name,section_name,hire_date from m_employee join m_section on m_employee.section_code = m_section.section_code order by code;")) {

			// 結果の操作
			while (res.next()) {
				String code = res.getString("code");
				String name = res.getString("name");
				String kanaName = res.getString("kana_name");
				String sectionName = res.getString("section_name");
				String hireDate = res.getString("hire_date");

				EmployeeBean employee = new EmployeeBean();
				employee.setCode(code);
				employee.setName(name);
				employee.setKanaName(kanaName);
				employee.setSectionName(sectionName);
				employee.setHireDate(hireDate);

				employeeList.add(employee);
			}
		}
		return employeeList;
	}
	
	
	//従業員詳細（selectDetail）
	
	//従業員登録（insertnsert）
	
	//従業員更新（update）
	
	//従業員削除（delete）
	

}

