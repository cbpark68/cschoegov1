package main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import main.service.BoardService;
import main.service.BoardVO;
import main.web.BoardController;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Resource(name="boardMapper")
	public BoardMapper boardMapper;

	@Override
	public int insertBoard(BoardVO vo) throws Exception {
		return boardMapper.insertBoard(vo);
	}

	@Override
	public List<?> selectBoardList(BoardVO vo) throws Exception {
		return boardMapper.selectBoardList(vo);
	}

	@Override
	public int selectBoardTotal(BoardVO vo) throws Exception {
		return boardMapper.selectBoardTotal(vo);
	}

	@Override
	public BoardVO selectBoardDetail(int unq) throws Exception {
		return boardMapper.selectBoardDetail(unq);
	}

	@Override
	public int updateBoardHits(int unq) throws Exception {
		return boardMapper.updateBoardHits(unq);
	}

}
