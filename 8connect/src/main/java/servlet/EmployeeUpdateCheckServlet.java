package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.entity.EmployeeBean;

/**
 * Servlet implementation class EmployeeUpdateCheckServlet
 */
@WebServlet("/employee-update-check")
public class EmployeeUpdateCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeUpdateCheckServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		EmployeeBean employee = new EmployeeBean();

		// リクエストオブジェクトのエンコーディング方式の指定
		request.setCharacterEncoding("UTF-8");

		//値の取り出し
		String code = request.getParameter("code");
		String name = request.getParameter("name");
		String kanaName = request.getParameter("kanaName");
		String sectionCode = request.getParameter("gender");
		String gender = request.getParameter("code");
		String birthDay = request.getParameter("birthDay");
		String hireDate = request.getParameter("hireDate");

		//employeeに値をセット
		employee.setCode(code);
		employee.setName(name);
		employee.setKanaName(kanaName);
		employee.setSectionCode(sectionCode);
		employee.setGender(gender);
		employee.setBirthDay(birthDay);
		employee.setHireDate(hireDate);

		//セッションオブジェクトの取得
		HttpSession session = request.getSession();
		// リクエストスコープへの属性の設定
		session.setAttribute("code", code);
		session.setAttribute("name", name);
		session.setAttribute("kanaName", kanaName);
		session.setAttribute("sectionCode", sectionCode);
		session.setAttribute("gender", gender);
		session.setAttribute("birthDay", birthDay);
		session.setAttribute("hireDate", hireDate);

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher("employee-update-check.jsp");
		rd.forward(request, response);
	}

}
