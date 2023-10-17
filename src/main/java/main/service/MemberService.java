package main.service;

import java.util.List;

public interface MemberService {
	public int insertMember(MemberVO vo) throws Exception;
	public int selectMemberIdCheck(String userid) throws Exception;
	public List<?> selectPostList(String dong) throws Exception;
	public int selectMemberCnt(MemberVO vo) throws Exception;
}
