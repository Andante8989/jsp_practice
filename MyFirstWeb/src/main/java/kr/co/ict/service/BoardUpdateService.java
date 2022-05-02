package kr.co.ict.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;

public class BoardUpdateService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		BoardDAO dao = BoardDAO.getInstance();
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
		
	}

}
