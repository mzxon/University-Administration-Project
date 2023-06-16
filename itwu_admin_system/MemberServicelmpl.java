package kr.co.itwu.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServicelmpl implements MemberService {

	@Autowired
	private MemberDAO memberDao;
	
	@Override
	public int login(MemberDTO dto) throws Exception{
		return memberDao.login(dto);
	}
}
