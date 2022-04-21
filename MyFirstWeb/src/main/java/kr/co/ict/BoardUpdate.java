package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;

/**
 * Servlet implementation class BoardUpdate
 */
@WebServlet("/boardUpdate")
public class BoardUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		String strBoardNum = request.getParameter("boardNum");
		int boardNum = Integer.parseInt(strBoardNum);
		System.out.println("title = " + title);
		System.out.println("content = " + content);
		System.out.println("writer = " + writer);
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.boardUpdate(title, content, writer, boardNum);
		
		request.setAttribute("title" , title);
		request.setAttribute("content" , content);
		request.setAttribute("writer" , writer);
		request.setAttribute("boardNum", boardNum);
		
		
		response.sendRedirect("http://localhost:8181/MyFirstWeb/boardDetail?board_num=" + boardNum);
		
	}

}
