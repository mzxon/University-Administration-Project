package kr.co.itwu.member;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	public MemberDAO() {
		System.out.println("---------MemberDAO() 객체 생성");
	}
	
	@Autowired
	SqlSession sqlSession;
	
	
	//학생 목록
	public List<Map<String, Object>> studentlist(){
		return sqlSession.selectList("member.studentlist");
	}//studentlist() end
	
	
	//학생 등록
	public void studentinsert(Map<String, Object> map) {
		sqlSession.insert("member.studentIns", map);
	}//insert() end
	
	
	//교수 목록
	public List<Map<String, Object>> prolist(){
		return sqlSession.selectList("member.prolist");
	}//prolist() end
	
	
	//교수 등록
	public void proinsert(Map<String, Object> map) {
		sqlSession.insert("member.proIns", map);
	}//insert() end
	
	
	//로그인
	public MemberDTO login(MemberDTO dto){
		return sqlSession.selectOne("member.login", dto);
	}
	
	
	
	

}//class end
