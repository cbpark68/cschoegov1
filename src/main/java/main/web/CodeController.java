package main.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import main.service.CodeService;
import main.service.CodeVO;

@Controller
public class CodeController {

	@Resource(name="codeService")
	public CodeService codeService;
	
	@RequestMapping("codeWrite.do")
	public String codeWrite() {
		return "code/codeWrite";
	}
	
	@RequestMapping("codeWriteSave.do")
	public String codeWriteSave(CodeVO vo) throws Exception{
		codeService.insertCodes(vo);
		return "redirect:codeList.do";
	}
	
	@RequestMapping("codeList.do")
	public String codeList(ModelMap map) throws Exception{
		int tot = codeService.selectCodesCount();
		List<?> list = codeService.selectCodesList();
		map.addAttribute("list",list);
		map.addAttribute("tot",tot);
		return "code/codeList";
	}

	@RequestMapping("codeDelete.do")
	public String codeDelete(int code) throws Exception{
		codeService.deleteCodes(code);
		return "redirect:codeList.do";
	}
	
	@RequestMapping("codeModify.do")
	public String codeModify(int code,ModelMap map) throws Exception{
		CodeVO vo = codeService.selectCodesDetail(code);
		map.addAttribute("cvo",vo);
		return "code/codeModify";
	}
	
	@RequestMapping("codeModifySave.do")
	public String codeModifySave(CodeVO vo) throws Exception{
		codeService.updateCodes(vo);
		return "redirect:codeList.do";
	}
}
