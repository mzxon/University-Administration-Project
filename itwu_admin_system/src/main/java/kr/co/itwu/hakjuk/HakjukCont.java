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
	public String hakjukmodify() {
		return "/hakjuk/hakjukmodify";
	}//hakjukmodify() end
	
	@RequestMapping("/pw_modify")
	public String pwmodify() {
		return "/hakjuk/pw_modify";
	}//pwmodify() end
	
	@RequestMapping("/hakjukIns")
	public String hakjukIns() {
		return "/hakjuk/hakjukIns";
	}//hakjukIns()
	
	@RequestMapping("/hakgwalist")
	public String hakgwalist() {
		return "/hakjuk/hakgwalist";
	}//hakgwalist() end
	
	@RequestMapping("/hakgwaIns")
	public String hakgwaIns() {
		return "/hakjuk/hakgwaIns";
	}//hakgwaIns()end
	
	@RequestMapping("/tuitionIns")
	public String tuitionIns() {
		return "/hakjuk/tuitionIns";
	}//tuitionIns() end
	
	
	
}//class end
