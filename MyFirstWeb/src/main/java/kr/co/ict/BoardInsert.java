package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;

/**
 * Servlet implementation class boardInsert
 */
@WebServlet("/boardInsert")
public class BoardInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		System.out.println("글쓴이 : " + writer);
		System.out.println("본문 : " + content);
		System.out.println("제목 : " + title);
		// dao 생성
		BoardDAO dao = BoardDAO.getInstance();
		// dao의 insert기능 호출
		dao.boardInsert(title, content, writer);
		
		request.setAttribute("title" , title);
		request.setAttribute("content" , content);
		request.setAttribute("writer" , writer);
		// 서블릿 주소로 리다이렉트시 파일이름 노출 안됨
		response.sendRedirect("http://localhost:8181/MyFirstWeb/boardList");
		
		
		
	}

}
