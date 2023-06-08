package kr.co.itwu.sign;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/sign")
@Controller
public class SignCont {
	
	public SignCont() {
		System.out.println("---------SignController() 객체 생성");
	}
	
	@RequestMapping("/signin")
	public String signin() {
		return "/sign/signin";
	}//signin() end
	
	@RequestMapping("/signup")
	public String signup() {
		return "/sign/signup";
	}//signin() end

}//class end
