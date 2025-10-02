package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.domain.UserVO;
import com.javaclass.repository.UserDAO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAOImpl;
	
	// 이메일 중복 확인
	public int emailOverlap(String email) {
		System.out.println("Service : " + email);
		int cnt = userDAOImpl.emailOverlap(email);
		System.out.println("cnt : " + cnt);
		return cnt;
	}
	
	// 회원가입
	public void insertUser(UserVO vo) {
		//System.out.println("Service : " + vo.toString());
		userDAOImpl.insertUser(vo);
	}
	
	// 로그인
	public UserVO loginCheck(UserVO vo) {
		//System.out.println("Service : " + vo.toString());
		return userDAOImpl.loginCheck(vo);
	}
	
	// 이메일 찾기
	public UserVO findEmail(UserVO vo) {
		//System.out.println("Service : " + vo.toString());
		return userDAOImpl.findEmail(vo);
	}
	
	// 비밀번호 찾기
	public UserVO findPassword(UserVO vo) {
		System.out.println("Service : " + vo.toString());
		return userDAOImpl.findPassword(vo);
	}
	
	public List<UserVO> getUserBoardList(HashMap map){
		//System.out.println(map);
		return userDAOImpl.getUserBoardList(map);
	}
	
	public void deleteUserBoard(UserVO vo) {
		userDAOImpl.deleteUserBoard(vo);
	}
	
	public UserVO modifyUserBoard(UserVO vo) {
		return userDAOImpl.modifyUserBoard(vo);
	}
	
	public void updateUserBoard(UserVO vo) {
		userDAOImpl.updateUserBoard(vo);
	}
	
}
