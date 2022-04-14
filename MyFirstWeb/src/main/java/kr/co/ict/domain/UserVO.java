package kr.co.ict.domain;

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
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", email=" + email + "]";
	}
	
	
	// toString 도 생성해주면, System.out.println()과 같은 조회구문에서
	// 자료 주소값 대신 실제로 들어있는 데이터를 화면에 보여줍니다
	// 우클릭 -> source -> generateToString() 실행 -> 모든변수 선택후 생성
	
}
