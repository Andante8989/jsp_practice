package kr.co.bacode;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bacode.domain.userDAO;
import kr.co.bacode.domain.userVO;

/**
 * Servlet implementation class userLoginCheck
 */
@WebServlet("/userLoginCheck")
public class userLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
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
		request.setCharacterEncoding("utf-8");
		// 로그인폼에서 받아온 id, pw
		String formId = request.getParameter("uId");
		String formPw = request.getParameter("uPw");
		
		// db에서 받아온 id,pw 미리 선언
		String dbId = null;
		String dbPw = null;
		String reUrl = null;
		// dao 생성
		userDAO dao = userDAO.getInstance();
		
		// dao의 login check메소드 호출
		userVO user = dao.userLoginCheck(formId);
		
		// user목록에서 id가져오고 만약 없다면 null값이 저장됨 
		dbId = user.getuId(); 
		System.out.println(dbId);
		dbPw = user.getuPw();
		
		if(dbId != null && formId.equals(dbId)) {
			if(formPw.equals(dbPw)) {
				System.out.println("로그인에 성공하였습니다.");
				reUrl = "loginWelcome.jsp";
			} else { 
				System.out.println("비밀번호가 틀렸습니다.");
				reUrl = "passwordFail.jsp";
			}
		} else {
			System.out.println("아이디가 틀렸습니다.");
			reUrl = "http://localhost:8181/BaCode/user/loginIdFail.jsp";
		}
		
		response.sendRedirect(reUrl);
	}

}
