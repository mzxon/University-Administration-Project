package kr.co.itwu.member;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/member")
@Controller
public class MemberCont {
	
	public MemberCont() {
		System.out.println("---------MemberController() 객체 생성");
	}
	
	@Autowired
	MemberDAO memberDAO;
	
	//학생 본인 정보 수정
	@RequestMapping("/studentmodify")
	public String studentmodify() {
		return "/member/studentmodify";
	}//studentmodify() end
	
	
	//관리자 학생 목록 조회
	@RequestMapping("/studentlist")
	public ModelAndView memberlist() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/studentlist");
		mav.addObject("studentlist", memberDAO.studentlist());
		return mav;
	}//studentlist() end
	
	
	//관리자 학생 정보 등록 화면
	@RequestMapping("/studentwrite")
	public String studentwrite() {
		return "/member/studentwrite";
	}//studentwrite() end
	
	
	//관리자 학생 정보 등록 구현
	@RequestMapping("/studentIns")
	public String studentIns(@RequestParam Map<String, Object> map) {
		
		memberDAO.studentinsert(map);
		
		return "redirect:/member/studentlist";
	}//studentIns() end
	
	
	//관리자 교수 목록 조회
	@RequestMapping("/prolist")
	public ModelAndView prolist() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/prolist");
		mav.addObject("prolist", memberDAO.prolist());
		return mav;
	}//studentlist() end
	
	
	//관리자 교수 정보 등록 화면
	@RequestMapping("/prowrite")
	public String prowrite() {
		return "/member/prowrite";
	}//prowrite() end
	
	
	//관리자 교수 정보 등록 실행
	@RequestMapping("/proIns")
	public String proIns(@RequestParam Map<String, Object> map) {
		
		memberDAO.proinsert(map);
		
		return "redirect:/member/prolist";
	}//proIns() end
	
	
	
	
	
	
	

}//class end
