package kr.co.bacode.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import kr.co.bacode.domain.userVO;

public class userDAO {
    
    private DataSource ds;
        // DAO 생성
        private static userDAO dao = new userDAO();

        private userDAO() {
            try {
                Context ct = new InitialContext();
                ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        // 싱글턴 패턴
        public static userDAO getInstance() {
            if(dao == null) {
                dao = new userDAO();
            }
            return dao;
        }
        
        
        public userVO userLoginCheck(String userId) {
        	Connection con = null;
        	ResultSet rs = null;
        	PreparedStatement pstmt = null;
        	
        	userVO user = new userVO();
        
        	try {
        		con = ds.getConnection();
        		
        		String sql = "SELECT * FROM usertbl WHERE uid=?";  
        		pstmt = con.prepareStatement(sql);
        		pstmt.setString(1, userId);
        		rs = pstmt.executeQuery(); 
        		System.out.println("데이터 입력 전 : " + user);
        		if(rs.next()); {
        			user.setuId(rs.getString(1));
            		user.setuPw(rs.getString(2));
        		}
        		System.out.println("데이터 입력 후 : " + user);
        	} catch (Exception e) {
        		e.printStackTrace();
        	} finally {
        		try {
        			con.close();
        			rs.close();
        			pstmt.close();
        		} catch(Exception e) {
        			e.printStackTrace();
        		}
        	}
        	return user;
        } // userLoginCheck 끝나는 지점
}
