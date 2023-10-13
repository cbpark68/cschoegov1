package egovframework.example.sample.service;

import java.util.List;

public interface DeptService {
	public void insertDept(DeptVO vo) throws Exception;
	public List<?> selectDeptList(DeptVO vo) throws Exception;
	public DeptVO selectDeptDetail(int deptno) throws Exception;
	public void deleteDept(int deptno) throws Exception;
	public void updateDept(DeptVO vo) throws Exception;
}
