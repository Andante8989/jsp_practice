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
	
	public List<BoardVO> getBoardList(int pageNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<BoardVO> boardList = new ArrayList<>();
		
		try {
			con = ds.getConnection();
			// 페이지 번호에 따른 시작 인덱스 번호는 자바변수로 먼저 구합니다.
			int num = (pageNum -1) * 10;
			String sql = "SELECT * FROM boardTbl ORDER BY board_num DESC limit ?, 10;";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
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
	
	// boardTbl에서 row 1개를 가져오거나 (글번호존재시), 안가져옴(없는글번호 입력시)
	public BoardVO getBoardDetail(int boardNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		BoardVO board = new BoardVO();
		// upHit(boardNum); getBoardDetail 내부에서 호출하도록 해도 조회수는 올라감 다만 수정을 해도 hit이 1올라가는 단점
		try {
			con = ds.getConnection();
			String sql = "SELECT * FROM boardTbl WHERE board_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			 board.setBoardNum(rs.getInt(1));
			 board.setTitle(rs.getString(2));
			 board.setContent(rs.getString(3));
			 board.setWriter(rs.getString(4));
			 board.setBdate(rs.getDate(5));
			 board.setMdate(rs.getDate(6));
			 board.setHit(rs.getInt(7));
			} else {
				System.out.println("계정이 없습니다");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return board;
	}
	
	public void boardInsert(String title, String content, String writer) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			String sql = "INSERT INTO boardTbl(title, content, writer) VALUES(?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, writer);
			pstmt.executeUpdate();	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();	
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	} // boardInsert 끝나는 지점
	
	public void boardDelete(int boardNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			String sql = "DELETE FROM boardTbl WHERE board_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	} // boardDelete 끝나는 지점
	
	public void boardUpdate(String title, String content, String writer, int boardNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			String sql = "UPDATE boardTbl SET title=?, content=?, writer=?, mdate=now() WHERE board_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, writer);
			pstmt.setInt(4, boardNum);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	} // boardUpdate 끝나는 지점
	
	public void upHit (int boardNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			String sql = "UPDATE boardTbl SET hit = hit + 1 WHERE board_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	} // upHit 종료지점, 조회수 증가 로직 끝
	
	public int getBoardCount () {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// int라서 일단 0으로 선언
		int boardCount = 0;
		try { 
			con = ds.getConnection();
			String sql = "SELECT count(*) FROM boardTbl;";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			// 위에 선언했던 boardCount에 입력
			if(rs.next()) {
				boardCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return boardCount;
	} // getAllBoardCount 종료 지점
	
	

}
