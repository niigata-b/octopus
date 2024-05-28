package servlet;

import java.io.IOException;
import java.sql.SQLException;

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
 * Servlet implementation class EmployeeInsertPassServlet
 */
@WebServlet("/employee-insert-pass")
public class EmployeeInsertPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeInsertPassServlet() {
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
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		//セッションオブジェクトから属性値の取得
		String userId = (String) session.getAttribute("userId");
		
		
		
		EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");
		
		System.out.println("パス"+ employee.getCode());
		
		EmployeeDAO dao = new EmployeeDAO();
		int count = 0;
		String url=null;
		
		// ログイン認証済みかどうかを確認
		//LoginServletでセッションスコープ値が入っていない場合はログイン認証されていない
		if (userId != null) {
			// 認証済み
			try {
				
				count = dao.insert(employee);
				
				if (count==0) {
					url="employee-error.jsp";
				}else {
					url="employee-end.jsp";
				}
				

			} catch (ClassNotFoundException | SQLException | NullPointerException e) {
				e.printStackTrace();
				url="employee-error.jsp";
			}

		} else {
			// 未認証
			url = "login.html";
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
			
		}
	}


