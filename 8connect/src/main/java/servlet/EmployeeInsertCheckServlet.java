package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entity.EmployeeBean;

/**
 * Servlet implementation class EmployeeInsertCheckServlet
 */
@WebServlet("/employee-insert-check")
public class EmployeeInsertCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeInsertCheckServlet() {
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
		
		String code = request.getParameter("code");
		String name = request.getParameter("name");
		String kanaName = request.getParameter("kanaName");
		String sectionCode = request.getParameter("sectionCode");
		String gender = request.getParameter("gender");
		String birthDay = request.getParameter("birthDay");
		String hireDate = request.getParameter("hireDate");
		
		EmployeeBean employee = new EmployeeBean();
		
		employee.setCode(code);
		employee.setName(name);
		employee.setKanaName(kanaName);
		employee.setSectionCode(sectionCode);
		employee.setGender(gender);
		employee.setBirthDay(birthDay);
		employee.setHireDate(hireDate);
		
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("employee-insert-check.jsp");
		rd.forward(request, response);
		
	}

}
