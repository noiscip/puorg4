package kr.or.picsion.picture.dto;

import java.util.Date;
import java.util.List;

public class Picture {

	private int picNo;
	private String picTitle;
	private String picContent;
	private Date picReg;
	private String picPath;
	private String picWater;
	private int picHit;
	private int picPrice;
	private int userNo;
	private int tableNo;
	private String camera;
	private String resolution;
	private Date photoDate;
	private List<String> tagContent;

	public Picture() {}

	public Picture(int picNo, String picTitle, String picContent, Date picReg, String picPath, String picWater,
			int picHit, int picPrice, int userNo, int tableNo, String camera, String resolution, Date photoDate,
			List<String> tagContent) {
		this.picNo = picNo;
		this.picTitle = picTitle;
		this.picContent = picContent;
		this.picReg = picReg;
		this.picPath = picPath;
		this.picWater = picWater;
		this.picHit = picHit;
		this.picPrice = picPrice;
		this.userNo = userNo;
		this.tableNo = tableNo;
		this.camera = camera;
		this.resolution = resolution;
		this.photoDate = photoDate;
		this.tagContent = tagContent;
	}

	public int getPicNo() {
		return picNo;
	}

	public void setPicNo(int picNo) {
		this.picNo = picNo;
	}

	public String getPicTitle() {
		return picTitle;
	}

	public void setPicTitle(String picTitle) {
		this.picTitle = picTitle;
	}

	public String getPicContent() {
		return picContent;
	}

	public void setPicContent(String picContent) {
		this.picContent = picContent;
	}

	public Date getPicReg() {
		return picReg;
	}

	public void setPicReg(Date picReg) {
		this.picReg = picReg;
	}

	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}

	public String getPicWater() {
		return picWater;
	}

	public void setPicWater(String picWater) {
		this.picWater = picWater;
	}

	public int getPicHit() {
		return picHit;
	}

	public void setPicHit(int picHit) {
		this.picHit = picHit;
	}

	public int getPicPrice() {
		return picPrice;
	}

	public void setPicPrice(int picPrice) {
		this.picPrice = picPrice;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getTableNo() {
		return tableNo;
	}

	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}

	public String getCamera() {
		return camera;
	}

	public void setCamera(String camera) {
		this.camera = camera;
	}

	public String getResolution() {
		return resolution;
	}

	public void setResolution(String resolution) {
		this.resolution = resolution;
	}

	public Date getPhotoDate() {
		return photoDate;
	}

	public void setPhotoDate(Date photoDate) {
		this.photoDate = photoDate;
	}

	public List<String> getTagContent() {
		return tagContent;
	}

	public void setTagContent(List<String> tagContent) {
		this.tagContent = tagContent;
	}

	@Override
	public String toString() {
		return "Picture [picNo=" + picNo + ", picTitle=" + picTitle + ", picContent=" + picContent + ", picReg="
				+ picReg + ", picPath=" + picPath + ", picWater=" + picWater + ", picHit=" + picHit + ", picPrice="
				+ picPrice + ", userNo=" + userNo + ", tableNo=" + tableNo + ", camera=" + camera + ", resolution="
				+ resolution + ", photoDate=" + photoDate + ", tagContent=" + tagContent + "]";
	}

}
