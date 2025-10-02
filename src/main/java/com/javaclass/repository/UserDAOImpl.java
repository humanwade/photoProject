package com.javaclass.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 이메일 중복 확인
	public int emailOverlap(String email) {
		System.out.println("dao : " + email);
		int cnt = sqlSession.selectOne("org.javassem.UserMapper.emailOverlap", email);
		System.out.println("cnt : " + cnt);
		return cnt;
	}
	
	// 회원가입
	public void insertUser(UserVO vo) {
		//System.out.println("dao : " + vo.toString());
		sqlSession.insert("org.javassem.UserMapper.insertUser", vo);
	}
	
	// 로그인
	public UserVO loginCheck(UserVO vo) {
		//System.out.println("dao : " + vo.toString());
		return sqlSession.selectOne("org.javassem.UserMapper.loginCheck", vo);
	}
	
	// 이메일 찾기
	public UserVO findEmail(UserVO vo) {
		System.out.println("dao : " + vo.toString());
		return sqlSession.selectOne("org.javassem.UserMapper.findPassword", vo);
	}
	
	// 비밀번호 찾기
	public UserVO findPassword(UserVO vo) {
		System.out.println("dao : " + vo.toString());
		return sqlSession.selectOne("org.javassem.UserMapper.findPassword", vo);
	}
	
	public void deleteUserBoard(UserVO vo) {
		//System.out.println("mybatis deleteBoard() 호출");
		sqlSession.delete("org.javassem.UserMapper.deleteUserBoard", vo);
	}
	
	public List<UserVO> getUserBoardList(HashMap map){
		
		List<UserVO> list = sqlSession.selectList("org.javassem.UserMapper.getUserBoardList", map);
		return list;
	}
	public UserVO modifyUserBoard(UserVO vo) {
		return sqlSession.selectOne("org.javassem.UserMapper.modifyUserBoard",vo);
	}
	
	public void updateUserBoard(UserVO vo) {
		//System.out.println("mybatis updateBoard() 호출");
		sqlSession.update("org.javassem.UserMapper.updateUserBoard", vo);
	}
}
