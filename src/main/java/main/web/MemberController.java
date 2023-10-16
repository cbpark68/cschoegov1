package main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/memberWrite.do")
	public String memberWrite() throws Exception{
		return "member/memberWrite";
	}

}
