package com.javaclass.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.FreeReplyVO;

@Repository
public class FreeReplyDAOImpl implements FreeReplyDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public Integer insertFreeReply(FreeReplyVO vo) {
		return mybatis.insert("FreeReplyDAO.insertFreeReply", vo);
	}
	
	public List<FreeReplyVO> selectAllReply(Integer boardId){
		return mybatis.selectList("FreeReplyDAO.selectAllReply", boardId);
	}
	
	public int deleteReply(Integer commentId) {
		System.out.println("===> Mybatis deleteReply() 호출");	
		System.out.println(commentId);
		return mybatis.delete("FreeReplyDAO.deleteReply", commentId);
	}
	
}
