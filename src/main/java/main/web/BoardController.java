package main.web;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.BoardService;
import main.service.BoardVO;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Resource(name = "boardService")
	public BoardService boardService;

	@RequestMapping("/boardWrite.do")
	public String boardWrite() {
		return "board/boardWrite";
	}

	@RequestMapping("/boardWriteSave.do")
	@ResponseBody
	public String boardWriteSave(BoardVO vo) throws Exception {
		int rs = boardService.insertBoard(vo);
		String rtn = "err";
		if (rs > 0)
			rtn = "ok";
		return rtn;
	}
	
	@RequestMapping("/boardList.do")
	public String boardList(BoardVO vo,ModelMap map) throws Exception{
		List<?> list = boardService.selectBoardList(vo);
		map.addAttribute("list",list);
		return "board/boardList";
	}
}
