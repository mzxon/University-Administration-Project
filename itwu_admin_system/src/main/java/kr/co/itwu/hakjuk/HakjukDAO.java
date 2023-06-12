package kr.co.itwu.hakjuk;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HakjukDAO {
	
	public HakjukDAO() {
		System.out.println("---------HakjukDAO() 객체 생성");
	}//HakjukDAO() end
	
	
	@Autowired
	SqlSession sqlSession;
	
	
	public List<Map<String, Object>> hakgwalist(){
		return sqlSession.selectList("hakjuk.hakgwalist");
	}//hakgwalist() end
	
	
	
	
	
	

}//class end
