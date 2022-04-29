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
import kr.co.ict.service.BoardDetailService;
import kr.co.ict.service.BoardListService;
import kr.co.ict.service.IBoardService;

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
		// 어떤 종류의 서비스라도 다 받을 수 있는 서비스 인터페이스 생성
		IBoardService sv = null;
		
		if(uri.equals("/MyFirstWeb/boardList.do")) {
			// 서비스 생성
			sv = new BoardListService();
			// 서비스의 .execute(request, response) 호출
			sv.execute(request, response);
			ui = "/board/getBoardList.jsp";
		} else if(uri.equals("/MyFirstWeb/boardDetail.do")) {			
			sv = new BoardDetailService();
			sv.execute(request, response);
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
			ui = "/boardList.do";   // 리다이렉트시는 폴더명 없이 마지막 주소만 적습니다.
		} else if(uri.equals("/MyFirstWeb/boardDelete.do")) {
			request.setCharacterEncoding("utf-8");
			String strDeleteNum = request.getParameter("boardNum");
			int deleteNum = Integer.parseInt(strDeleteNum);
			System.out.println("삭제예정인 번호 : " + deleteNum);
			dao.boardDelete(deleteNum);
			ui = "/boardList.do";
		} else if(uri.equals("/MyFirstWeb/boardUpdateForm.do")) {
			request.setCharacterEncoding("utf-8");
			String strBoardNum = request.getParameter("boardNum");
			int boardNum = Integer.parseInt(strBoardNum);
			BoardVO board = dao.getBoardDetail(boardNum);
			request.setAttribute("board" , board);
			ui = "/board/boardUpdateForm.jsp";
		} else if(uri.equals("/MyFirstWeb/boardUpdate.do")) {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String writer = request.getParameter("writer");
			String strBoardNum = request.getParameter("boardNum");
			int boardNum = Integer.parseInt(strBoardNum);
			dao.boardUpdate(title, content, writer, boardNum);
			request.setAttribute("title" , title);
			request.setAttribute("content" , content);
			request.setAttribute("writer" , writer);
			request.setAttribute("boardNum", boardNum);

			ui = "boardDetail.do?board_num=" + boardNum;
		}
		
		RequestDispatcher dp = request.getRequestDispatcher(ui);
		dp.forward(request, response);
	}
}
