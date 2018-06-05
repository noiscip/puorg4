package kr.or.picsion.user.dto;

import java.util.Date;

public class User {

	private int userNo;
	private String userId;
	private String pwd;
	private String userName;
	private int point;
	private Date userReg;
	private int blaTypeNo;
	private int roleNo;
	private String accountLinkId;
	private String prPicture;
	private String prContent;

	public User() {}

	public User(int userNo, String userId, String pwd, String userName, int point, Date userReg, int blaTypeNo,
			int roleNo, String accountLinkId, String prPicture, String prContent) {
		this.userNo = userNo;
		this.userId = userId;
		this.pwd = pwd;
		this.userName = userName;
		this.point = point;
		this.userReg = userReg;
		this.blaTypeNo = blaTypeNo;
		this.roleNo = roleNo;
		this.accountLinkId = accountLinkId;
		this.prPicture = prPicture;
		this.prContent = prContent;
	}
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Date getUserReg() {
		return userReg;
	}

	public void setUserReg(Date userReg) {
		this.userReg = userReg;
	}

	public int getBlaTypeNo() {
		return blaTypeNo;
	}

	public void setBlaTypeNo(int blaTypeNo) {
		this.blaTypeNo = blaTypeNo;
	}

	public int getRoleNo() {
		return roleNo;
	}

	public void setRoleNo(int roleNo) {
		this.roleNo = roleNo;
	}

	public String getAccountLinkId() {
		return accountLinkId;
	}

	public void setAccountLinkId(String accountLinkId) {
		this.accountLinkId = accountLinkId;
	}

	public String getPrPicture() {
		return prPicture;
	}

	public void setPrPicture(String prPicture) {
		this.prPicture = prPicture;
	}

	public String getPrContent() {
		return prContent;
	}

	public void setPrContent(String prContent) {
		this.prContent = prContent;
	}

	@Override
	public String toString() {
		return "Users [userNo=" + userNo + ", userId=" + userId + ", pwd=" + pwd + ", userName=" + userName + ", point="
				+ point + ", userReg=" + userReg + ", blaTypeNo=" + blaTypeNo + ", roleNo=" + roleNo
				+ ", accountLinkId=" + accountLinkId + ", prPicture=" + prPicture + ", prContent=" + prContent + "]";
	}

}
