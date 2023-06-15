package kr.co.itwu.log;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/log")
@Controller
public class LogCont {
	
	public LogCont() {
		System.out.println("---------SignController() 객체 생성");
	}
	
	@RequestMapping("/login")
	public String signin() {
		return "/log/login";
	}//signin() end
	
	@RequestMapping("/signup")
	public String signup() {
		return "/log/signup";
	}//signin() end

}//class end
