package kr.co.itwu.hakjuk;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/hakjuk")
@Controller
public class HakjukCont {

	public HakjukCont() {
		System.out.println("---------HakjukController() 객체 생성");
	}
	
	@RequestMapping("/hakjukmodify")
	public String modify() {
		return "/hakjuk/hakjukmodify";
	}//modify() end
	
	@RequestMapping("/pw_modify")
	public String pwmodify() {
		return "/hakjuk/pw_modify";
	}//pwmodify() end
	
	
}//class end
