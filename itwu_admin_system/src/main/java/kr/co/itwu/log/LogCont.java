package kr.co.itwu.log;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.itwu.member.MemberDAO;
import kr.co.itwu.member.MemberDTO;

@RequestMapping("/log")
@Controller
public class LogCont {
	
	public LogCont() {
		System.out.println("---------LogController() 객체 생성");
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
	
	
	/*
	 * @RequestMapping("/loginerror") public String
	 * loginerror(@RequestParam("login_error") String loginError, RedirectAttributes
	 * ra) { ra.addFlashAttribute("message", "loginError"); return "redirect:/"; }
	 */
	
	
	//로그인 실행
	@RequestMapping("/loginproc")
	public String loginproc(MemberDTO dto, HttpServletRequest request) throws Exception {
		
		//세션생성 
		HttpSession session = request.getSession();
		//세션 유효시간
		session.setMaxInactiveInterval(3600);

		MemberDTO res = memberDAO.login(dto);

//		System.out.println(code);
		
//		dto.setCode(code);
//		dto.setPasswd(passwd);
		
//		int result = memberDAO.login(dto);
		
//		System.out.println(result);
		
		if(res != null) {
			//세션 저장
			session.setAttribute("res", res);
			return "redirect:/notice/list";
		} else {
			return "redirect:/";
		}
	
	}//loginproc() end
	
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}//logout() end
	

}//class end
