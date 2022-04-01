package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		// 스캐너를 이용해서
		// 수정할 아이디, 해당아이데 대한 새로운 비번, 새로운 이름, 새로운 이메일을 입력받아주시면 됩니다
		
		// DB 연동 후 쿼리문을 날려서 수정로직을 돌려주신 다음
		
		// workbench 를 이용해 수정된 내역이 반영되었는지 확인해주세요.
		Scanner scan = new Scanner(System.in);
		System.out.println("바꾸고 싶은 아이디를 입력하세요");
		String upId = scan.nextLine();
		System.out.println("새로운 비밀번호를 입력하세요");
		String upPw = scan.nextLine();
		System.out.println("새로운 이름을 입력하세요");
		String upName = scan.nextLine();
		System.out.println("새로운 이메일을 입력하세요");
		String upEmail = scan.nextLine();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC",
														 "root",
														 "mysql");
			Statement stmt = con.createStatement();
			// UPDATE userinfo SET user_pw='새비번', user_name='새이름', email='새이메일' WHERE user_id='바꿀계정명'
			String upDate = "UPDATE userinfo SET user_pw='" + upPw + "', user_name='" + upName + "', email='" + upEmail + "' WHERE user_id='" + upId + "'";
			System.out.println("실행될 쿼리문 : " + upDate);
			stmt.executeUpdate(upDate);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			scan.close();
		}

	}

}
