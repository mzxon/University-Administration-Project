package kr.co.itwu.hakgwa;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HakgwaDAO {
	
	public HakgwaDAO() {
		System.out.println("---------HakgwaDAO() 객체 생성");
	}
	
	@Autowired
	SqlSession sqlSession;
	
	//학과 목록
	public List<Map<String, Object>> hakgwalist(){
		return sqlSession.selectList("hakgwa.list");
	}//hakgwalist() end
	
	//학과 등록
	public void insert(Map<String, Object> map) {
		sqlSession.insert("hakgwa.insert", map);
	}//insert() end
	

}//class end
