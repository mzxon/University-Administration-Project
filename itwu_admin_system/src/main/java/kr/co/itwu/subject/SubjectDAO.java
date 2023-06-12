package kr.co.itwu.subject;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubjectDAO {
	
	
	public SubjectDAO() {
		System.out.println("-------SubjectDAO() 객체 생성");
	}//SubjectDAO() end
	
	
	@Autowired
	SqlSession sqlSession;
	
	//강의목록
	public List<Map<String, Object>> list(){
		return sqlSession.selectList("subject.list");
	}

	//강의등록
    public void insert(Map<String, Object> map) {
	   sqlSession.insert("subject.insert", map);
    }
    
    //파일명가져오기
    public String filename(String subcode) {
    	return sqlSession.selectOne("subject.filename", subcode);
    }
    
    //강의삭제
    public void delete(String subcode) {
    	sqlSession.delete("subject.delete", subcode);
    }
	  
    //강의상세보기
    public Map<String, Object> detail(String subcode){
    	return sqlSession.selectOne("subject.detail", subcode);
    }
    
    //강의수정
    public void update(Map<String, Object> map) {
    	sqlSession.update("subject.update", map);
    }
	
	
	
}
