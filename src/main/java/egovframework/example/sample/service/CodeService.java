package egovframework.example.sample.service;

import java.util.List;

public interface CodeService {
	public int insertCodes(CodeVO vo) throws Exception;
	public List<?> selectCodesList() throws Exception;
	public int selectCodesCount() throws Exception;
	public int deleteCodes(int code) throws Exception;
	public CodeVO selectCodesDetail(int code) throws Exception;
	public int updateCodes(CodeVO vo) throws Exception;
}
