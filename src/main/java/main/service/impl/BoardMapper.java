package main.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import main.service.BoardVO;

@Mapper("boardMapper")
public interface BoardMapper {

	int insertBoard(BoardVO vo);

	List<?> selectBoardList(BoardVO vo);

}
