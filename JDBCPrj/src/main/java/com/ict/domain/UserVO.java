package com.ict.domain;

public class UserVO {
	// VO 클래스는 일반적으로 특정 테이블의 자료를 한 row단위로 저장할수 있도록
	// 컬럼정보를 변수로 나열한것입니다.
	private String userId;
	private String userPw;
	private String userName;
	private String email;
	// getter/setter를 생성해주세요
	// 우클릭 -> Source -> generate getters and setters -> 모든변수체크 -> generate
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
