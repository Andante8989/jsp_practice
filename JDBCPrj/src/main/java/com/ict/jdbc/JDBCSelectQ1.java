package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCSelectQ1 {

	public static void main(String[] args) {
		// Scanner를 이용해 user_id를 입력받은 다음
		// 방금 배운 SELECT문 실행 구문들을 응용해서
		// WHERE uid=입력받은 아이디 형식으로
		// 내가 조회한 아이디의 정보만
		// 콘솔에 찍히도록 로직을 작성해주세요
		
		// WHERE절이
		// WHERE user_id = '아이디명'과 같이 따옴표가 포함되니
		// 아이디명 앞 뒤로 따옴표가 들어갈 수 있도록
		// 전달 쿼리명을 신경써서 작성해주세요
		Scanner scan = new Scanner(System.in);
		String sc = scan.nextLine();
		try { 
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC", // 접속할 url
					"root", 
					"mysql");
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM userinfo WHERE user_id='" + sc +"'";
			System.out.println("실행 예정 구문 : " + sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
			} else {
				System.out.println(sc + " 는 없는 ID입니다.");
			}
		} catch (Exception e){
			e.printStackTrace();
		}

	}

}
