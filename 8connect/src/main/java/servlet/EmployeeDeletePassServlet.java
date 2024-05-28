package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.EmployeeDAO;

/**
 * Servlet implementation class EmployeeDeletePassServlet
 */
@WebServlet("/employee-delete-pass")
public class EmployeeDeletePassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeDeletePassServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub


		//セッションオブジェクトの取得
		HttpSession session = request.getSession();

		//セッションオブジェクトから属性値の取得
		String userId = (String) session.getAttribute("userId");
		
		String code = (String)request.getParameter("code");
		
		System.out.println("deletepass" + code);

		//転送先のurl
		String url = null;

		// ログイン認証済みかどうかを確認
		//LoginServletでセッションスコープ値が入っていない場合はログイン認証されていない
		if (userId != null) {
			// 認証済み
			try {
				EmployeeDAO employee = new EmployeeDAO();
				int cnt = employee.delete(code);
				
				if (cnt == 0) {
					url="employee-error.jsp";
				}else {
					url="employee-end.jsp";
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			// 未認証
			url = "login.html";
		}

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}
}

