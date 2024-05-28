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
 * Servlet implementation class EmployeeDetailServlet
 */
@WebServlet("/employee-detail")
public class EmployeeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = null;

		HttpSession session = request.getSession();
		
		//スコープからゲットするとき、必ず型キャスト
		String code = request.getParameter("code");
		
		System.out.println("datail" + code);
		
		

		if(session.getAttribute("userId") != null ) {
			url = "employee-detail.jsp";
			EmployeeDAO dao = new EmployeeDAO();
			
			try {
				EmployeeBean employee = dao.select(code);
				
				session.setAttribute("employee", employee);
				
				request.setAttribute("code", code);
				
			}catch(SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
		}else {
			url = "index.html";
		}
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);


	}

}
