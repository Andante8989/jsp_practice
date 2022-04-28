package kr.co.ict;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}
	
	protected void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String ui = null;
		BoardDAO dao = BoardDAO.getInstance();
		if(uri.equals("/MyFirstWeb/boardList.do")) {
			 List<BoardVO> boardList = dao.getBoardList();  // DB연결해 전체 목록 가져다 주고 종료
			 request.setAttribute("boardList" , boardList);
			 ui = "/board/getBoardList.jsp";
		} else if(uri.equals("/MyFirstWeb/boardDetail.do")) {			
			String strBoardNum = request.getParameter("board_num");
			int boardNum = Integer.parseInt(strBoardNum);			
			BoardVO board = dao.getBoardDetail(boardNum);		
			request.setAttribute("board" , board);
			ui = "/board/boardDetail.jsp";
		} else if(uri.equals("/MyFirstWeb/boardInsertForm.do")) {
			ui = "/board/boardInsertForm.jsp";
		} else if(uri.equals("/MyFirstWeb/boardInsert.do")) {
			String writer = request.getParameter("writer");
			String content = request.getParameter("content");
			String title = request.getParameter("title");
			dao.boardInsert(title, content, writer);
			request.setAttribute("title" , title);
			request.setAttribute("content" , content);
			request.setAttribute("writer" , writer);
			ui = "http://localhost:8181/MyFirstWeb/boardList";
		}
		
		RequestDispatcher dp = request.getRequestDispatcher(ui);
		dp.forward(request, response);
	}
}
