package kr.co.itwu.subject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/subject")
@Controller
public class SubjectCon {

	public SubjectCon() {
		System.out.println("---------SubjectController() 객체 생성");
	}
	
	@RequestMapping("/subjectwrite")
	public String subjectwrite() {
		return "/subject/subjectwrite";
	}//subjectwrite() end
	
	@RequestMapping("/subjectlist")
	public String subjectlist() {
		return "/subject/subjectlist";
	}//subjectlist() end
	
}//class() end
