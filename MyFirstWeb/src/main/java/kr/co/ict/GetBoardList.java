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
 * Servlet implementation class getBoardList
 */
@WebServlet("/boardList")
public class GetBoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBoardList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 
		
		*/
		 String strPageNum = request.getParameter("pageNum");
		 int pageNum = Integer.parseInt(strPageNum);
		 BoardDAO dao = BoardDAO.getInstance(); //싱글턴에 의해 static영역 변수 주소만 받아옴
		 List<BoardVO> boardList = dao.getBoardList(pageNum);  // DB연결해 전체 목록 가져다 주고 종료
		 request.setAttribute("boardList" , boardList);
		
		 // 포워딩으로 getBoardList.jsp와 연결하기
		RequestDispatcher dp = request.getRequestDispatcher("/board/getBoardList.jsp");
		dp.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
