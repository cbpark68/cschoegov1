package egovframework.example.sample.service.impl;

import org.egovframe.rte.psl.dataaccess.EgovAbstractDAO;
import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.DeptVO;

@Repository("deptDAO")
public class DeptDAO extends EgovAbstractDAO{

	public String InsertDept(DeptVO vo) {
		return (String)insert("deptDAO.InsertDept",vo); 
	}

}
