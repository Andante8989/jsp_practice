package kr.co.ict.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	// 생성자까지 만들어주세요
	// 이미 커넥션풀 설정이 되어있으니 UserDAO에서 활성화된 코드만 참조해서
	// 생성자 부분까지만 작성해서 저한테 보내주세요
	
	private DataSource ds;
	
	private static BoardDAO dao = new BoardDAO();
	
	private BoardDAO () {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static BoardDAO getInstance() {
	    if(dao == null) {
	    	dao = new BoardDAO();
	    }
	    return dao;
	}
	
	// 게시판의 전체 글을 가져오는 getBoardList() 메서드를 작성해주세요
	// 전체 글을 가져오므로 List<BoardVO>를 리턴하면 됩니다.
	// 작성시 UserDAO 의 getAllUserList()메서드를 참조해주세요
	
	public List<BoardVO> getBoardList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<BoardVO> boardList = new ArrayList<>();
		
		try {
			con = ds.getConnection();
			String sql = "SELECT * FROM boardTbl";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setBoardNum(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setContent(rs.getString(3));
				board.setWriter(rs.getString(4));
				board.setBdate(rs.getDate(5));
				board.setMdate(rs.getDate(6));
				board.setHit(rs.getInt(7));
				
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
	    		con.close();
	    		pstmt.close();
	    		rs.close();
	    		} catch(Exception e) {
	    			e.printStackTrace();
	    		}
		}
		return boardList;
	}

}
