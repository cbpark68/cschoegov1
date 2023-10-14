package main.service;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo) throws Exception;
	public List<?> selectBoardList(BoardVO vo) throws Exception;
}
