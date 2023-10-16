package main.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import main.service.MemberVO;

@Mapper("memberMapper")
public interface MemberMapper {

	int insertMember(MemberVO vo);

	int selectMemberIdCheck(String userid);

	List<?> selectPostList(String dong);

}
