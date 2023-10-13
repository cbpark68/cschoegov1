package egovframework.example.sample.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.example.sample.service.CodeVO;

@Mapper("codeMapper")
public interface CodeMapper {

	int insertCode(CodeVO vo);

	List<?> selectCodesList();

	int selectCodesCount();

	int deleteCodes(int code);

	CodeVO selectCodesDetail(int code);

	int updateCodes(CodeVO vo);
}
