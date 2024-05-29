package servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.EmployeeDAO;

/**
 * Servlet implementation class EmployeeUpdatePassServlet
 */
@WebServlet("/employee-update-pass")
public class EmployeeUpdatePassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeUpdatePassServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		//セッションオブジェクトの取得
		HttpSession session = request.getSession();

		//セッションオブジェクトから属性値の取得
		String userId = (String)session.getAttribute("userId");

		String code = (String)request.getParameter("code");

		String name = (String)request.getParameter("name");
		
		String kanaName = (String)request.getParameter("kanaName");
		
		String sectionCode = (String)request.getParameter("sectionCode");
		
		String gender = (String)request.getParameter("gender");
		
		Date birthDay = Date.valueOf(request.getParameter("birthDay"));
		
		Date hireDate = Date.valueOf(request.getParameter("hireDate"));
		
		System.out.println(code);
		System.out.println(name);
		System.out.println(kanaName);
		System.out.println(sectionCode);
		System.out.println(gender);
		System.out.println(birthDay);
		System.out.println(hireDate);

		//転送先のurl
		String url = null;

		// ログイン認証済みかどうかを確認
		//LoginServletでセッションスコープ値が入っていない場合はログイン認証されていない
		if (userId != null) {
			// 認証済み
			try {
				EmployeeDAO employee = new EmployeeDAO();
				int processingNumber = employee.update(code, name, kanaName, sectionCode, gender, birthDay, hireDate);

				if (processingNumber == 0) {
					url = "employee-error.jsp";
				} else {
					url = "employee-end.jsp";
				}

			} catch (ClassNotFoundException | SQLException | NullPointerException e) {
				e.printStackTrace();
				url="employee-error.jsp";
			}


		} else {
			// 未認証
			url = "index.html";
		}

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
