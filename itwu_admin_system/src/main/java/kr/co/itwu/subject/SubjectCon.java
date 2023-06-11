package kr.co.itwu.subject;

import java.io.File;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/subject")
@Controller
public class SubjectCon {

	public SubjectCon() {
		System.out.println("-----------SubjectController() 객체 생성");
	}
	
	@Autowired
	SubjectDAO subjectDao;
	
	//강의 목록
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("subject/list");
		mav.addObject("list", subjectDao.list());
		
		return mav;
	}//list() end
	
	
	//강의 등록 화면
	@RequestMapping("/write")
	public String write() {
		return "subject/write";
	}//write() end
	
	//등록한 강의 db에 등록
	@RequestMapping("/insert")
	public String insert(@RequestParam Map<String, Object>map
						,@RequestParam MultipartFile img
						,HttpServletRequest req) {
		//업로드된 파일은 /storage 폴더에 저장
		//파일 업로드할때 리네임 되지 않음
		
		String filename="-";
		long filesize=0;
		if(img != null && !img.isEmpty()) {
			filename=img.getOriginalFilename();
			filesize=img.getSize();
			try {
				ServletContext application=req.getSession().getServletContext();
				String path=application.getRealPath("/storage"); //실제 경로
				img.transferTo(new File(path+"\\"+filename)); //파일저장
				
			}catch (Exception e) {
				e.printStackTrace(); //System.out.println(e);
			}		
		}
		map.put("filename", filename);
		map.put("filesize", filesize);
		
		subjectDao.insert(map);
		return "redirect:/product/list";
	}//insert() end
	
	
	
	
	
	
	
	
	
	
	
}//class() end
