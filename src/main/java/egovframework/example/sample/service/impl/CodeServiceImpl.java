package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.CodeService;
import egovframework.example.sample.service.CodeVO;

@Service("codeService")
public class CodeServiceImpl implements CodeService {

	@Resource(name="codeMapper")
	private CodeMapper codeMapper;

	@Override
	public int insertCodes(CodeVO vo) throws Exception {
		return codeMapper.insertCode(vo);
	}

	@Override
	public List<?> selectCodesList() throws Exception {
		return codeMapper.selectCodesList();
	}

	@Override
	public int selectCodesCount() throws Exception {
		return codeMapper.selectCodesCount();
	}

	@Override
	public int deleteCodes(int code) throws Exception {
		return codeMapper.deleteCodes(code);
	}

	@Override
	public CodeVO selectCodesDetail(int code) throws Exception {
		return codeMapper.selectCodesDetail(code);
	}

	@Override
	public int updateCodes(CodeVO vo) throws Exception {
		return codeMapper.updateCodes(vo);
	}

}
