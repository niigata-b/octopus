package servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String code = (String)request.getParameter("code");
		
		String name = (String)request.getParameter("name");
		
		String kanaName = (String)request.getParameter("kanaName");
		
		String sectionCode = (String)request.getParameter("sectionCode");
		
		String gender = (String)request.getParameter("gender");
		
		Date birthDay = Date.valueOf(request.getParameter("birthDay"));
		
		Date hireDate = Date.valueOf(request.getParameter("hireDate"));
		
		request.setAttribute("code", code);
		
		request.setAttribute("name", name);
		
		request.setAttribute("kanaName", kanaName);
		
		request.setAttribute("sectionCode", sectionCode);
		
		request.setAttribute("gender", gender);
		
		request.setAttribute("birthDay", birthDay);
		
		request.setAttribute("hireDate", hireDate);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("employee-update-check.jsp");
		rd.forward(request,response);
	}

}
