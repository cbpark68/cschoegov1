package egovframework.example.sample.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;
import org.egovframe.rte.psl.dataaccess.util.EgovMap;

import egovframework.example.sample.service.DeptVO;

@Mapper("deptMapper")
public interface DeptMapper {

	void insertDept(DeptVO vo) throws Exception;
	public List<?> selectDeptList(DeptVO vo) throws Exception;
	DeptVO selectDeptDetail(int deptno);
	void deleteDept(int deptno);
	void updateDept(DeptVO vo);

}
