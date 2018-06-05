package kr.or.picsion.message.dto;

import java.util.Date;

public class Message {

	private int msgNo;
	private String msgContent;
	private Date msgReg;
	private String msgState;
	private int sendUserNo;
	private int receiveUserNo;

	public Message() {}

	public Message(int msgNo, String msgContent, Date msgReg, String msgState, int sendUserNo, int receiveUserNo) {
		this.msgNo = msgNo;
		this.msgContent = msgContent;
		this.msgReg = msgReg;
		this.msgState = msgState;
		this.sendUserNo = sendUserNo;
		this.receiveUserNo = receiveUserNo;
	}

	public int getMsgNo() {
		return msgNo;
	}

	public void setMsgNo(int msgNo) {
		this.msgNo = msgNo;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public Date getMsgReg() {
		return msgReg;
	}

	public void setMsgReg(Date msgReg) {
		this.msgReg = msgReg;
	}

	public String getMsgState() {
		return msgState;
	}

	public void setMsgState(String msgState) {
		this.msgState = msgState;
	}

	public int getSendUserNo() {
		return sendUserNo;
	}

	public void setSendUserNo(int sendUserNo) {
		this.sendUserNo = sendUserNo;
	}

	public int getReceiveUserNo() {
		return receiveUserNo;
	}

	public void setReceiveUserNo(int receiveUserNo) {
		this.receiveUserNo = receiveUserNo;
	}

	@Override
	public String toString() {
		return "Messages [msgNo=" + msgNo + ", msgContent=" + msgContent + ", msgReg=" + msgReg + ", msgState="
				+ msgState + ", sendUserNo=" + sendUserNo + ", receiveUserNo=" + receiveUserNo + "]";
	}

}
