package kr.co.ict.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.domain.BoardDAO;

public class BoardDeleteService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sId = (String)session.getAttribute("s_id");
		String boardWriter = request.getParameter("boardWriter");
		if (sId != null && boardWriter.equals(sId)) {
			request.setCharacterEncoding("utf-8");
			BoardDAO dao = BoardDAO.getInstance();
			String strDeleteNum = request.getParameter("boardNum");
			int deleteNum = Integer.parseInt(strDeleteNum);
			dao.boardDelete(deleteNum);
		}
	}

}
