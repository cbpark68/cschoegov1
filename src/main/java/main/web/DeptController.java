package main.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import main.service.DeptService;
import main.service.DeptVO;

@Controller
public class DeptController {
	@Resource(name="deptService")
	private DeptService deptService;

	@RequestMapping("/deptWrite.do")
	public String deptWrite() {
		return "dept/deptWrite";
	}
	
	@RequestMapping("/deptWriteSave.do")
	public String detpWriteSave(DeptVO vo) {
		System.out.println("부서번호:"+vo.getDeptno());
		System.out.println("부서명:"+vo.getDname());
		System.out.println("부서위치:"+vo.getLoc());
		try {
			deptService.insertDept(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	@RequestMapping("/deptList.do")
	public String selectDeptList(DeptVO vo,ModelMap map) throws Exception{
		List list = deptService.selectDeptList(vo);
		map.addAttribute("deptList",list);
		return "dept/deptList";
	}
	
	@RequestMapping("/deptDetail.do")
	public String selectDeptDetail(int deptno,ModelMap map) throws Exception{
		DeptVO vo = deptService.selectDeptDetail(deptno);
		map.addAttribute("dvo", vo);
		return "dept/deptDetail";
	}
	
	@RequestMapping("/deptDelete.do")
	public String deleteDept(int deptno) throws Exception{
		deptService.deleteDept(deptno);
		return "";
	}
	
	@RequestMapping("/deptModify.do")
	public String modifyDept(int deptno,ModelMap map) throws Exception{
		DeptVO vo = deptService.selectDeptDetail(deptno);
		map.addAttribute("dvo",vo);
		return "dept/deptModify";
	}
	
	@RequestMapping("/deptModifySave.do")
	public String modifySaveDept(DeptVO vo ) throws Exception{
		deptService.updateDept(vo);
		return "";
	}
}
