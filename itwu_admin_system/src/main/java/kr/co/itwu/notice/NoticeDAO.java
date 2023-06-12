package kr.co.itwu.notice;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	public NoticeDAO() {
		System.out.println("-------------NoticeDAO() 객체 생성");
	}//NoticeDAO() end

	
	@Autowired
	SqlSession sqlSession;
	
	//공지사항 목록
	public List<Map<String, Object>> list(){
		return sqlSession.selectList("notice.list");
	}
	
	//공지사항 등록
	public void insert(Map<String, Object> map) {
		sqlSession.insert("notice.insert", map);
	}
	
	//공지사항 상세
	public Map<String, Object> detail(int no){
		return sqlSession.selectOne("notice.detail", no);
	}
}
