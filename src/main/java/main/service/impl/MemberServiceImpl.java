package main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import main.service.MemberService;
import main.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Resource(name="memberMapper")
	private MemberMapper memberMapper;

	@Override
	public int insertMember(MemberVO vo) throws Exception {
		return memberMapper.insertMember(vo);
	}

	@Override
	public int selectMemberIdCheck(String userid) throws Exception {
		return memberMapper.selectMemberIdCheck(userid);
	}

	@Override
	public List<?> selectPostList(String dong) throws Exception {
		return memberMapper.selectPostList(dong);
	}

}
