package kr.co.ict.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;

public class BoardInsertService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		BoardDAO dao = BoardDAO.getInstance();
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		dao.boardInsert(title, content, writer);
		request.setAttribute("title" , title);
		request.setAttribute("content" , content);
		request.setAttribute("writer" , writer);
		
	}

}
