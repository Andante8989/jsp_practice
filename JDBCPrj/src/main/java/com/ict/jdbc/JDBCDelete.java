package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCDelete {

	public static void main(String[] args) {
		// Scanner로 삭제할 아이디를 입력받으면
		
		// DB에 삭제용 쿼리문을 날려주는 로직을 작성해주세요
		
		// 삭제되었는지는 SELECT 코드나 혹은 workbech를 이용해 확인해주세요
		Scanner scan = new Scanner(System.in);
		System.out.println("지울 아이디를 입력하세요");
		String dele = scan.nextLine();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // 접속 타겟이 MySQL 버전인 경우 좌측과 같이 작성
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC", // 접속할 url
					                                     "root", 
														 "mysql");
			Statement stmt = con.createStatement();
			String into = "DELETE FROM userinfo WHERE user_id='" + dele + "'";
			System.out.println("실행 예정 구문 : " + into);
			stmt.executeUpdate(into);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			scan.close();
		}


	}

}
