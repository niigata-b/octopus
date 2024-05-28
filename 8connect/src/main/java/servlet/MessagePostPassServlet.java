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

import model.dao.MessageDAO;

/**
 * Servlet implementation class MessagePostPassServlet
 */
@WebServlet("/message-post-pass")
public class MessagePostPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MessagePostPassServlet() {
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
		String code = (String) session.getAttribute("code");
		String title = (String) session.getAttribute("title");
		String messageText = (String) session.getAttribute("messageText");

		//転送先のurl
		String url = null;

		// ログイン認証済みかどうかを確認
		//LoginServletでセッションスコープ値が入っていない場合はログイン認証されていない
		if (userId != null) {
			// 認証済み
			try {
				MessageDAO dao = new MessageDAO();

				// DAOの利用
				int cnt = dao.post(code, title, messageText);

				if (cnt == 0) {
					url = "message-error.jsp";
				} else {
					url = "message-end.jsp";
				}



			} catch (ClassNotFoundException | SQLException | NullPointerException e) {
				e.printStackTrace();
				url="message-error.jsp";
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


