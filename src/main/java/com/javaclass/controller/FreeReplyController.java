package com.javaclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javaclass.domain.FreeReplyVO;
import com.javaclass.service.FreeReplyService;

@RestController
public class FreeReplyController {
	
	@Autowired
	FreeReplyService freeReplyService;
	
	@PostMapping("replies/new")
	public String insert(FreeReplyVO vo) {
		Integer result = freeReplyService.insertFreeReply(vo);
		if(result == 1) return "success";
		else return "fail";
	}
	
	@GetMapping("replies")
	public List<FreeReplyVO> selectAll(Integer boardId){
		List<FreeReplyVO> list = freeReplyService.selectAllReply(boardId);
		return list;
	}
	@DeleteMapping("replies/{commentId}")
	public Integer delete(@PathVariable Integer commentId) {
		
		return freeReplyService.deleteReply(commentId);
	}
	
	
	 
	
	
	
}
