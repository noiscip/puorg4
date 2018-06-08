package kr.or.picsion.notice.dto;

import kr.or.picsion.user.dto.User;

public class Notice {

	private int noticeNo;
	private String readCheck;
	private int receiveUserNo;
	private User receiveUser;
	private int sendUserNo;
	private User sendUser;
	private int tableNo;
	
	public Notice() {}
	
	public Notice(int noticeNo, String readCheck, int receiveUserNo, User receiveUser, int sendUserNo, User sendUser,
			int tableNo) {
		this.noticeNo = noticeNo;
		this.readCheck = readCheck;
		this.receiveUserNo = receiveUserNo;
		this.receiveUser = receiveUser;
		this.sendUserNo = sendUserNo;
		this.sendUser = sendUser;
		this.tableNo = tableNo;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getReadCheck() {
		return readCheck;
	}

	public void setReadCheck(String readCheck) {
		this.readCheck = readCheck;
	}

	public int getReceiveUserNo() {
		return receiveUserNo;
	}

	public void setReceiveUserNo(int receiveUserNo) {
		this.receiveUserNo = receiveUserNo;
	}

	public User getReceiveUser() {
		return receiveUser;
	}

	public void setReceiveUser(User receiveUser) {
		this.receiveUser = receiveUser;
	}

	public int getSendUserNo() {
		return sendUserNo;
	}

	public void setSendUserNo(int sendUserNo) {
		this.sendUserNo = sendUserNo;
	}

	public User getSendUser() {
		return sendUser;
	}

	public void setSendUser(User sendUser) {
		this.sendUser = sendUser;
	}

	public int getTableNo() {
		return tableNo;
	}

	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", readCheck=" + readCheck + ", receiveUserNo=" + receiveUserNo
				+ ", receiveUser=" + receiveUser + ", sendUserNo=" + sendUserNo + ", sendUser=" + sendUser
				+ ", tableNo=" + tableNo + "]";
	}
	
	
}
