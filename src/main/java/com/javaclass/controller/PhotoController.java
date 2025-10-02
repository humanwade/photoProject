package com.javaclass.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.PhotoVO;
import com.javaclass.service.PhotoService;

@Controller
public class PhotoController {
	
	@Autowired
	private PhotoService photoService;

	// 📌 글 목록 (사용자)
	@RequestMapping("photoGetBoardList.do")
	public void getPhotoList(PhotoVO vo, Model model) {
		List<PhotoVO> result = photoService.getPhotoList(vo);
		model.addAttribute("photoList", result);
	}

	// 📌 글 목록 (관리자)
	@RequestMapping("adminPictureBoard")
	public void adminGetPhotoList(PhotoVO vo, Model model) {
		List<PhotoVO> result = photoService.getPhotoList(vo);
		model.addAttribute("photoList", result);
	}

	// 📌 글 등록 + 파일 저장
	@RequestMapping(value = "/photoSaveBoard.do")
	public String insertPhoto(PhotoVO vo, HttpServletRequest request) throws IOException {
	    if (vo.getFile() != null && !vo.getFile().isEmpty()) {

	        // UUID 기반 picId 생성
	        vo.setFile(vo.getFile());

	        String userEmail = vo.getPicEmail();
	        String safeEmail = userEmail.replaceAll("[^a-zA-Z0-9]", "_");

	        String uploadFolder = "C:/photoProject/" + safeEmail;
	        File dir = new File(uploadFolder);
	        if (!dir.exists()) dir.mkdirs();

	        File saveFile = new File(dir, vo.getPicId());
	        vo.getFile().transferTo(saveFile);

	        vo.setPicEmail(safeEmail); // DB 저장용 이메일
	    }

	    photoService.insertPhoto(vo);
	    return "redirect:photoGetBoardList.do";
	}

	// 📌 글 수정
	@RequestMapping("photoUpdateBoard.do")
	public String updatePhoto(PhotoVO vo) {
		photoService.updatePhoto(vo);
		return "redirect:photoGetBoardList.do";
	}

	// 📌 글 삭제
	@RequestMapping("photoDeleteBoard.do")
	public String deletePhoto(PhotoVO vo) {
		photoService.deletePhoto(vo);
		return "redirect:photoGetBoardList.do";
	}

	@RequestMapping("/adminDeletePictureBoard")
	public String deletePictureBoard(PhotoVO vo) {
		photoService.deletePictureBoard(vo);
		return "redirect:adminPictureBoard";
	}

	// 📌 상세 조회
	@RequestMapping("/photoGetBoard.do")
	public void getPhoto(PhotoVO vo, Model model) {
		PhotoVO result = photoService.getPhoto(vo);
		model.addAttribute("photo", result);
	}

	// 📌 메인 노출 이미지
	@RequestMapping("home-pages/home-01.do")
	public void getShowPic(PhotoVO vo, Model model) {
		List<PhotoVO> result = photoService.getShowPic(vo);
		model.addAttribute("photoList", result);
	}

	// 📌 검색 결과 이미지
	@RequestMapping("home-pages/search-home-01.do")
	public String searchPic(String query, Model model) {
		List<PhotoVO> result = photoService.searchPic(query);
		model.addAttribute("photoList", result);
		model.addAttribute("query", query);
		return "home-pages/search-home-01";
	}

	// ✅ 외부 저장소 이미지 미리보기용 서빙
	@GetMapping("/photoImage/{email}/{filename:.+}")
	@ResponseBody
	public void serveImage(
			@PathVariable("email") String email,
			@PathVariable("filename") String filename,
			HttpServletResponse response) throws IOException {

		// 안전한 이메일 폴더명으로 변환
		String safeEmail = email.replaceAll("[^a-zA-Z0-9]", "_");
		File imageFile = new File("C:/photoProject/" + safeEmail + "/" + filename);

		if (!imageFile.exists()) {
			response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			return;
		}

		// MIME 타입 자동 설정 (ex. image/jpeg)
		String contentType = Files.probeContentType(imageFile.toPath());
		if (contentType == null) contentType = "application/octet-stream";

		response.setContentType(contentType);
		StreamUtils.copy(new FileInputStream(imageFile), response.getOutputStream());
	}
}
