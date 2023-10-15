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
	public String boardList(BoardVO vo, ModelMap map) throws Exception {
		int rowCnt = 8;
		int tot = boardService.selectBoardTotal(vo);
		int totPg = (int) Math.ceil((double) tot / rowCnt);
		int viewPg = vo.getViewPg();
		if (viewPg > totPg || viewPg < 1)
			viewPg = 1;
		int beginRowNo = tot - (viewPg - 1) * rowCnt;
		int beginIdx = (viewPg - 1) * rowCnt + 1;
		int endIdx = beginIdx + (rowCnt - 1);
		vo.setBeginIdx(beginIdx);
		vo.setEndIdx(endIdx);
		List<?> list = boardService.selectBoardList(vo);
		map.addAttribute("searchText", vo.getSearchText());
		map.addAttribute("beginRowNo", beginRowNo);
		map.addAttribute("tot", tot);
		map.addAttribute("totPg", totPg);
		map.addAttribute("list", list);
		return "board/boardList";
	}
	
	@RequestMapping("/boardDetail.do")
	public String boardDetail(int unq,ModelMap map) throws Exception{
		boardService.updateBoardHits(unq);
		BoardVO vo = boardService.selectBoardDetail(unq);
		String content = vo.getContent();
		vo.setContent(content.replace("\n", "<br/>"));
		map.addAttribute("bvo",vo);
		return "board/boardDetail";
	}
}
