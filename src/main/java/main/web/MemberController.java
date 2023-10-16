package main.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.MemberService;
import main.service.MemberVO;

@Controller
public class MemberController {

	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping("/memberWrite.do")
	public String memberWrite() throws Exception{
		return "member/memberWrite";
	}
	
	@RequestMapping("/memberWriteSave.do")
	@ResponseBody
	public String memberWriteSave(MemberVO vo) throws Exception{
		String rtn = "error";
		int rs = memberService.insertMember(vo);
		if(rs == 1)
			rtn = "success";
		return rtn;
	}

	@RequestMapping("/idCheck.do")
	@ResponseBody
	public String idCheck(String userid) throws Exception{
		String rtn = "error";
		int rs = memberService.selectMemberIdCheck(userid);
		if(rs == 0)
			rtn = "success";
		return rtn;
	}
	
	@RequestMapping("/post1.do")
	public String post1() throws Exception{
		return "member/post1";
	}

	@RequestMapping("/post2.do")
	public String post1(String dong,ModelMap map) throws Exception{
		List<?> list = memberService.selectPostList(dong);
		map.addAttribute("list",list);
		return "member/post2";
	}
}
