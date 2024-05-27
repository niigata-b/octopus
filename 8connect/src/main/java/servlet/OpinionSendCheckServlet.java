package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.entity.OpinionBean;

/**
 * Servlet implementation class OpinionSendCheckServlet
 */
@WebServlet("/opinion-send-check")
public class OpinionSendCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpinionSendCheckServlet() {
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
		
		OpinionBean opinion = new OpinionBean();
		
		// リクエストオブジェクトのエンコーディング方式の指定
		request.setCharacterEncoding("UTF-8");
		
		//値の取り出し
		String opinionText = request.getParameter("opinionText");
		
		//emplyeeに値をセット
		opinion.setOpinionText(opinionText);
		
		
		//セッションオブジェクトの取得
		HttpSession session = request.getSession();
		// リクエストスコープへの属性の設定
		session.setAttribute("opinionText", opinionText);

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher("opinion-send-check.jsp");
		rd.forward(request, response);
		
	}

}
