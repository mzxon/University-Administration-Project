package kr.co.itwu.sugang;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import kr.co.itwu.member.MemberDTO;

@Repository
public class SugangDAO {

	public SugangDAO() {
		System.out.println("-------SugangDAO() 객체 생성");
	}//SugangDAO() end
	
	
	@Autowired
	SqlSession sqlSession;
	
	//수강신청
	public void insert(Map<String, Object> map) {
		sqlSession.insert("sugang.insert", map);
	}
	
	//수강신청내역
	public List<Map<String, Object>> mylist(String id){
		return sqlSession.selectList("sugang.mylist", id);
	}
	
	
	//장바구니신청내역
	public List<Map<String, Object>> cart(String id){
		return sqlSession.selectList("sugang.cart", id);
	}
		
	
	
}
