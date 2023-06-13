package kr.co.itwu.tuition;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TuitionDAO {
	
	public TuitionDAO() {
		System.out.println("---------TuitionDAO() 객체 생성");
	}
	
	@Autowired
	SqlSession sqlSession;
	
	//등록금 목록
	public List<Map<String, Object>> list(){
		return sqlSession.selectList("tuition.list");
	}//list() end
	
	

}//class end
