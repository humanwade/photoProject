package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class PhotoVO {
	private int PicNum;	//사진번호
	private String PicId; // 저장된 파일이름
	private String PicName;	// 작성자
	private String PicEmail;	// 이메일
	private String PicTitle;	// 제목
	private String PicContent;	// 내용	
	private String PicPassword;	// 비밀번호
	private String PicDate;	// 등록일
	private int PicCount;	// 조회수
	private String CameraType;	//카메라종류
	private String PhotoType;	//사진 카테고리
	private String ShutterSpeed;	//셔터속도
	private String ISO;		//감도값
	private String F_stop; //조리개
	
	
	
	private String PicFname;	// 파일명
	private long PicFsize;		// 파일크기
	
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;

		if (!file.isEmpty()) {
			this.PicFname = file.getOriginalFilename();
			this.PicFsize = file.getSize();

			// PicId만 UUID로 미리 세팅해둠
			UUID uuid = UUID.randomUUID();
			this.PicId = uuid.toString() + "_" + this.PicFname;
		}
	}

	public int getPicNum() {
		return PicNum;
	}

	public void setPicNum(int picNum) {
		PicNum = picNum;
	}

	public String getPicId() {
		return PicId;
	}

	public void setPicId(String picId) {
		PicId = picId;
	}

	public String getPicName() {
		return PicName;
	}

	public void setPicName(String picName) {
		PicName = picName;
	}

	public String getPicEmail() {
		return PicEmail;
	}

	public void setPicEmail(String picEmail) {
		PicEmail = picEmail;
	}

	public String getPicTitle() {
		return PicTitle;
	}

	public void setPicTitle(String picTitle) {
		PicTitle = picTitle;
	}

	public String getPicContent() {
		return PicContent;
	}

	public void setPicContent(String picContent) {
		PicContent = picContent;
	}

	public String getPicPassword() {
		return PicPassword;
	}

	public void setPicPassword(String picPassword) {
		PicPassword = picPassword;
	}

	public String getPicDate() {
		return PicDate;
	}

	public void setPicDate(String picDate) {
		PicDate = picDate;
	}

	public int getPicCount() {
		return PicCount;
	}

	public void setPicCount(int picCount) {
		PicCount = picCount;
	}

	public String getCameraType() {
		return CameraType;
	}

	public void setCameraType(String cameraType) {
		CameraType = cameraType;
	}

	public String getPhotoType() {
		return PhotoType;
	}

	public void setPhotoType(String photoType) {
		PhotoType = photoType;
	}

	public String getShutterSpeed() {
		return ShutterSpeed;
	}

	public void setShutterSpeed(String shutterSpeed) {
		ShutterSpeed = shutterSpeed;
	}

	public String getISO() {
		return ISO;
	}

	public void setISO(String iSO) {
		ISO = iSO;
	}

	public String getF_stop() {
		return F_stop;
	}

	public void setF_stop(String f_stop) {
		F_stop = f_stop;
	}

	public String getPicFname() {
		return PicFname;
	}

	public void setPicFname(String picFname) {
		PicFname = picFname;
	}

	public long getPicFsize() {
		return PicFsize;
	}

	public void setPicFsize(long picFsize) {
		PicFsize = picFsize;
	}

	@Override
	public String toString() {
		return "PhotoVO [PicNum=" + PicNum + ", PicId=" + PicId + ", PicName=" + PicName + ", PicEmail=" + PicEmail
				+ ", PicTitle=" + PicTitle + ", PicContent=" + PicContent + ", PicPassword=" + PicPassword
				+ ", PicDate=" + PicDate + ", PicCount=" + PicCount + ", CameraType=" + CameraType + ", PhotoType="
				+ PhotoType + ", ShutterSpeed=" + ShutterSpeed + ", ISO=" + ISO + ", F_stop=" + F_stop + ", PicFname="
				+ PicFname + ", PicFsize=" + PicFsize + ", file=" + file + "]";
	}


	
	
	
}
