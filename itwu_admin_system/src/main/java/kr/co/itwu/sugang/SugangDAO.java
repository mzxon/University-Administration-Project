package kr.co.itwu.sugang;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SugangDAO {

	public SugangDAO() {
		System.out.println("-------SugangDAO() 객체 생성");
	}//SugangDAO() end
	
	
	@Autowired
	SqlSession sqlSession;
	
	
	
	
	
}
