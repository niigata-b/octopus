package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.EmployeeDAO;
import model.entity.EmployeeBean;

/**
 * Servlet implementation class EmployeeListServlet
 */
@WebServlet("/employee-list")
public class EmployeeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeListServlet() {
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
		request.setCharacterEncoding("UTF-8");
		
		
		
		String url = null;
		
		List<EmployeeBean> employeeList = null;

		//DAO作成
		EmployeeDAO dao = new EmployeeDAO();

		HttpSession session = request.getSession();

		//ログイン認証ができているか判断
		if(session.getAttribute("userId") != null ) {
			
			String search = request.getParameter("search");
			
			if(search == null) {
				search = "全て";
			}
			
			url = "employee-list.jsp";
			
			
			try {
				
				if(search.equals("全て")) {
				//DAOを利用して全従業員を取得
					employeeList = dao.selectAll();
				}else {
					employeeList = dao.selectSection(search);
					System.out.println(employeeList);
				}
				//リクエストスコープ
				request.setAttribute("employeeList", employeeList);


			}catch(SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			
		}else {
			url = "index.html";
		}
		
		//転送
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
