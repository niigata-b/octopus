package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.entity.MessageBean;

/**
 * Servlet implementation class MessagePostCheckServlet
 */
@WebServlet("/message-post-check")
public class MessagePostCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MessagePostCheckServlet() {
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

		//Beanの呼び出し
		MessageBean message = new MessageBean();

		// リクエストオブジェクトのエンコーディング方式の指定
		request.setCharacterEncoding("UTF-8");

		//値を取り出す
		String title = request.getParameter("title");
		String messageText = request.getParameter("messageText");

		//取り出した値をセット
		message.setTitle(title);
		message.setMessageText(messageText);

		//セッションオブジェクトの取得
		HttpSession session = request.getSession();
		// リクエストスコープへの属性の設定
		session.setAttribute("title", title);
		session.setAttribute("messageText", messageText);

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher("message-post-check.jsp");
		rd.forward(request, response);
	}

}
