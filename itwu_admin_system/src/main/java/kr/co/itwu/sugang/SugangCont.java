package kr.co.itwu.sugang;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sugang")
@Controller
public class SugangCont {
	
	public SugangCont() {
		System.out.println("---------SugangController() 객체 생성");
	}
	
	@RequestMapping("/suganglist")
	public String suganglist() {
		return "/sugang/suganglist";
	}//suganglist() end
	
	@RequestMapping("/sugangmylist")
	public String sugangmylist() {
		return "/sugang/sugangmylist";
	}//sugangmylist() end
	
	@RequestMapping("/sugangtimetable")
	public String timetable() {
		return "/sugang/sugangtimetable";
	}//timetable() end
	
	@RequestMapping("/sugangcart")
	public String cart() {
		return "/sugang/sugangcart";
	}//cart() end

}//class end
