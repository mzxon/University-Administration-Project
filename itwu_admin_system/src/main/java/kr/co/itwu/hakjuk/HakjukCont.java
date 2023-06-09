package kr.co.itwu.hakjuk;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/hakjuk")
@Controller
public class HakjukCont {

	public HakjukCont() {
		System.out.println("---------HakjukController() 객체 생성");
	}
	
	@Autowired
	HakjukDAO hakjukDAO;
	
	@RequestMapping("/pw_modify")
	public String pwmodify() {
		return "/hakjuk/pw_modify";
	}//pwmodify() end
	
	@RequestMapping("/hakjukIns")
	public String hakjukIns() {
		return "/hakjuk/hakjukIns";
	}//hakjukIns()
	
	
	@RequestMapping("/tuitionIns")
	public String tuitionIns() {
		return "/hakjuk/tuitionIns";
	}//tuitionIns() end
	
	
	
}//class end
