package kr.or.picsion.blame.dto;

import java.util.Date;

public class Blame {

	private int blaNo;
	private String blaUserNo;
	private String blaContent;
	private Date blaReg;
	private int tableNo;
	private int brdNo;
	private int cmtNo;
	private int picNo;
	private int userNo;

	public Blame() {}

	public Blame(int blaNo, String blaUserNo, String blaContent, Date blaReg, int tableNo, int brdNo, int cmtNo,
			int picNo, int userNo) {
		this.blaNo = blaNo;
		this.blaUserNo = blaUserNo;
		this.blaContent = blaContent;
		this.blaReg = blaReg;
		this.tableNo = tableNo;
		this.brdNo = brdNo;
		this.cmtNo = cmtNo;
		this.picNo = picNo;
		this.userNo = userNo;
	}

	public int getBlaNo() {
		return blaNo;
	}

	public void setBlaNo(int blaNo) {
		this.blaNo = blaNo;
	}

	public String getBlaUserNo() {
		return blaUserNo;
	}

	public void setBlaUserNo(String blaUserNo) {
		this.blaUserNo = blaUserNo;
	}

	public String getBlaContent() {
		return blaContent;
	}

	public void setBlaContent(String blaContent) {
		this.blaContent = blaContent;
	}

	public Date getBlaReg() {
		return blaReg;
	}

	public void setBlaReg(Date blaReg) {
		this.blaReg = blaReg;
	}

	public int getTableNo() {
		return tableNo;
	}

	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}

	public int getBrdNo() {
		return brdNo;
	}

	public void setBrdNo(int brdNo) {
		this.brdNo = brdNo;
	}

	public int getCmtNo() {
		return cmtNo;
	}

	public void setCmtNo(int cmtNo) {
		this.cmtNo = cmtNo;
	}

	public int getPicNo() {
		return picNo;
	}

	public void setPicNo(int picNo) {
		this.picNo = picNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Blame [blaNo=" + blaNo + ", blaUserNo=" + blaUserNo + ", blaContent=" + blaContent + ", blaReg="
				+ blaReg + ", tableNo=" + tableNo + ", brdNo=" + brdNo + ", cmtNo=" + cmtNo + ", picNo=" + picNo
				+ ", userNo=" + userNo + "]";
	}

}
