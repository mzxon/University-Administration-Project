package kr.co.itwu.log;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.itwu.member.MemberDAO;
import kr.co.itwu.member.MemberDTO;

@RequestMapping("/log")
@Controller
public class LogCont {
	
	public LogCont() {
		System.out.println("---------SignController() 객체 생성");
	}
	
	@Autowired
	MemberDAO memberDAO;
	
	@RequestMapping("/login")
	public String login() {
		return "/log/login";
	}//signin() end
	
	@RequestMapping("/signup")
	public String signup() {
		return "/log/signup";
	}//signin() end
	
	
	//로그인 실행
	@RequestMapping("/loginproc")
	public String loginproc(@RequestParam("code") String code, 
						  @RequestParam("passwd") String passwd) throws Exception {
		
		String path="";
		
		MemberDTO dto = new MemberDTO();
		
//		System.out.println(code);
//		System.out.println(passwd);
		
		dto.setCode(code);
		dto.setPasswd(passwd);
		
		int result = memberDAO.login(dto);
		
//		System.out.println(result);
		
		if (result == 1) {
			return "redirect:/notice/list";
			
		} else {
			return "redirect:/";
		}
		
	}
	

}//class end
