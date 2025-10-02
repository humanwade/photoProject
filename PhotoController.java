package com.javaclass.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.PhotoVO;
import com.javaclass.service.PhotoService;

@Controller
public class PhotoController {
	
	@Autowired
	private PhotoService photoService;
	
	@RequestMapping("photoGetBoardList.do")
	public void getPhotoList(PhotoVO vo, Model model) {
		List<PhotoVO> result = photoService.getPhotoList(vo);
		
		model.addAttribute("photoList", result);
	}
	
	@RequestMapping("adminPictureBoard")
	public void adminGetPhotoList(PhotoVO vo, Model model) {
		List<PhotoVO> result = photoService.getPhotoList(vo);
		
		model.addAttribute("photoList", result);
	}
	
	// 글 등록
	@RequestMapping(value = "/photoSaveBoard.do")
	public String insertPhoto(PhotoVO vo) throws IOException {
		
					
		photoService.insertPhoto(vo);
		return "redirect:photoGetBoardList.do";
	}
	
	// 글 수정
	@RequestMapping("photoUpdateBoard.do")
	public String updatePhoto(PhotoVO vo) {
		//System.out.println("photoUpdateBoard.do 호출");
		//System.out.println("컨트롤러" + vo.toString());
		
		photoService.updatePhoto(vo);
		return "redirect:photoGetBoardList.do";
	}
	
	// 글 삭제
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
	
	// 글 상세 조회
	@RequestMapping("/photoGetBoard.do")
	public void getPhoto(PhotoVO vo, Model model) {
		PhotoVO result =photoService.getPhoto(vo);
		model.addAttribute("photo", result);
	}
	
	@RequestMapping("home-pages/home-01.do")
	public void getShowPic(PhotoVO vo, Model model) {
		
		List<PhotoVO> result = photoService.getShowPic(vo);
		
		model.addAttribute("photoList", result);
	}
	
	//검색 사진 출력
	@RequestMapping("home-pages/search-home-01.do")
	public void searchPic(PhotoVO vo, Model model) {
		List<PhotoVO> result = photoService.searchPic(vo);
		System.out.println("home-pages/search-home-01 호출");
		model.addAttribute("photoList", result);
		
	}
			

}
