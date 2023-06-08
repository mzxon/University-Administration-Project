package kr.co.itwu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeCont {
	
	public HomeCont() {
		System.out.println("---------HomeController() 객체 생성");
	}
	
	@RequestMapping("/")
	public String Home() {
		return "/notice/list";
	}//home() end

}//class end
