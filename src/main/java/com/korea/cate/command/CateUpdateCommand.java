package com.korea.cate.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.cate.beans.CateDAO;

public class CateUpdateCommand implements Command{

	@Override
	public void execute(Model model) {
		String cate_name = (String)model.getAttribute("cate_name");
		int cate_uid = (Integer)model.getAttribute("cate_uid");
		int result = 0;
		int error = 0;
		
		CateDAO dao = Common.sqlSession.getMapper(CateDAO.class);
		
		if(cate_name.equals("")) {
			error = 1;
			model.addAttribute("error", error);
		}else {
		result = dao.cateUpdate(cate_uid, cate_name);
		}
		
		model.addAttribute("result", result);
	}

}
