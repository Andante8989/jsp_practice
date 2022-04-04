package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class PreparedInsert {

	public static void main(String[] args) {
		// insert구문을 구현해보세요
		// Scanner로 id, pw, name, email을 입력받아서
		// INSERT구문의 ?를 채워주시면 됩니다
		// ? 네 개이므로 주의해주세요
		Scanner scan = new Scanner(System.in);
		System.out.println("입력할 아이디를 입력하세요");
	    String id = scan.nextLine();
	    System.out.println("입력할 비밀번호를 입력하세요");
	    String pw = scan.nextLine();
	    System.out.println("입력할 이름을 입력하세요");
	    String name = scan.nextLine();
	    System.out.println("입력할 이메일을 입력하세요");
	    String email = scan.nextLine();
	   
	    
	    String dbtype = "com.mysql.cj.jdbc.Driver";
	    String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	    String connectId = "root";
	    String connectPw = "mysql";
	    
	    try {
	    	Class.forName(dbtype);
	    	Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
	    	String sql = "INSERT INTO userinfo VALUES(?,?,?,?)";
	    	PreparedStatement pstmt = con.prepareStatement(sql);
	    	pstmt.setString(1, id);
	    	pstmt.setString(2, pw);
	    	pstmt.setString(3, name);
	    	pstmt.setString(4, email);
	    	pstmt.executeUpdate();
	    	System.out.println("실행 예정 구문 : " + sql);
	    } catch (Exception e) {
	    	e.printStackTrace();
	    } finally {
	    	scan.close();
	    }
	    
	    

		

	}

}
