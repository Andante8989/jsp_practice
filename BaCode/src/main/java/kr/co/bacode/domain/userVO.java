package kr.co.bacode.domain;

public class userVO {
	 private String uId;
	    private String uPw;
	    private String uName;
	    private String email;
	    private int heart;
	    private String pNum;
	    private String addr;
	    private String nckName;
	    public String getuId() {
	        return uId;
	    }
	    public void setuId(String uId) {
	        this.uId = uId;
	    }
	    public String getuPw() {
	        return uPw;
	    }
	    public void setuPw(String uPw) {
	        this.uPw = uPw;
	    }
	    public String getuName() {
	        return uName;
	    }
	    public void setuName(String uName) {
	        this.uName = uName;
	    }
	    public String getEmail() {
	        return email;
	    }
	    public void setEmail(String email) {
	        this.email = email;
	    }
	    public int getHeart() {
	        return heart;
	    }
	    public void setHeart(int heart) {
	        this.heart = heart;
	    }
	    public String getpNum() {
	        return pNum;
	    }
	    public void setpNum(String pNum) {
	        this.pNum = pNum;
	    }
	    public String getAddr() {
	        return addr;
	    }
	    public void setAddr(String addr) {
	        this.addr = addr;
	    }
	    public String getNckName() {
	        return nckName;
	    }
	    public void setNckName(String nckName) {
	        this.nckName = nckName;
	    }
	    @Override
	    public String toString() {
	        return "userVO [uId=" + uId + ", uPw=" + uPw + ", uName=" + uName + ", email=" + email + ", heart=" + heart
	                + ", pNum=" + pNum + ", addr=" + addr + ", nckName=" + nckName + "]";
	    }

}
