package main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.stereotype.Service;

import main.service.DeptService;
import main.service.DeptVO;

@Service("deptService")
public class DeptServiceImpl extends EgovAbstractServiceImpl implements DeptService {

	/** SampleDAO */
	// TODO ibatis 사용
	//@Resource(name="deptDAO")
	//private DeptDAO deptDAO;
	// TODO mybatis 사용
	 @Resource(name="deptMapper")
	private DeptMapper deptDAO;
	
	@Override
	public void insertDept(DeptVO vo) throws Exception {
		deptDAO.insertDept(vo);
	}

	@Override
	public List<?> selectDeptList(DeptVO vo) throws Exception {
		return deptDAO.selectDeptList(vo);
	}

	@Override
	public DeptVO selectDeptDetail(int deptno) throws Exception {
		return deptDAO.selectDeptDetail(deptno);
	}

	@Override
	public void deleteDept(int deptno) throws Exception {
		deptDAO.deleteDept(deptno);
	}

	@Override
	public void updateDept(DeptVO vo) throws Exception {
		deptDAO.updateDept(vo);
	}

}
