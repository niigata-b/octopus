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

import model.dao.UserDAO;
import model.entity.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		List<UserBean> userList = null;
		
		UserBean user = new UserBean();
		
		// リクエストオブジェクトのエンコーディング方式の指定
		request.setCharacterEncoding("UTF-8");
				
		//値の取り出し
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		//Beanに値をセット
		user.setUserId(userId);
		user.setPassword(password);
		
		//DAOの利用
		UserDAO dao = new UserDAO();
		
		//転送先
		String url = null;
		
		// DAOの利用
		try {
			if (dao.loginCheck(userId, password)) {
				// 認証成功
				url = "menu";
				
				//DAOを実行してユーザマスタの値をすべて取得
				userList = dao.selectAll(userId);
				
				
				int roleId = user.getRoleId();
				
				//従業員コードから名前を取得
				String name = dao.selectName(code);
				
				// セッションオブジェクトの取得
				HttpSession session = request.getSession();

				// セッションスコープへの属性の設定
				//ログインが成功しない場合はセッションスコープに値は入らない＝null
				session.setAttribute("name", name);
				session.setAttribute("roleId", roleId);
				session.setAttribute("userId", userId);

			} else {
				// 認証失敗
				url = "login-failure.html";
			}
			
		} catch (ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		
		//リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
