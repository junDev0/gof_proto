package member;

public class MemberBean {
	private String name,email,password,grade,phone
				  ,regDate,birth,profImg,cardNum;
	private boolean isRcvEmail;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getProfImg() {
		return profImg;
	}
	public void setProfImg(String profImg) {
		this.profImg = profImg;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public boolean isRcvEmail() {
		return isRcvEmail;
	}
	public void setRcvEmail(boolean isRcvEmail) {
		this.isRcvEmail = isRcvEmail;
	}
}
