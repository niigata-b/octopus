package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MessageDAO;
import model.entity.MessageBean;

/**
 * Servlet implementation class MessageDetailServlet
 */
@WebServlet("/message-detail")
public class MessageDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//セッションオブジェクトの取得
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		if (request.getParameter("messageId") != null) {
			session.setAttribute("messageId", request.getParameter("messageId"));
			
		}
		
		//セッションオブジェクトから属性値の取得
		String userId = (String) session.getAttribute("userId");
		
				
		//転送先のurl
		String url = null;
				
		// ログイン認証済みかどうかを確認
		//LoginServletでセッションスコープ値が入っていない場合はログイン認証されていない
		if (userId != null) {
			// 認証済み
			try {
					MessageDAO dao = new MessageDAO();
					
					String messageId = (String) session.getAttribute("messageId");
					
					// DAOの利用
					MessageBean message = dao.select(messageId);
					
					String code = message.getCode();
					System.out.println("servlet" + code);
						
					// セッションスコープへの属性の設定
					session.setAttribute("message", message);
					request.setAttribute("code", code);
					
					System.out.println("詳細Servlet：" + message.getPostDatetime()); 
						
					url = "message-detail.jsp";
					
						
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
