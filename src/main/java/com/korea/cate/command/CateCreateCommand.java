package com.korea.cate.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.cate.beans.CateDAO;

public class CateCreateCommand implements Command{

	@Override
	public void execute(Model model) {
		String cate_name = (String)model.getAttribute("cate_name");
		int result = 0;
		int error =  0;
		CateDAO dao = Common.sqlSession.getMapper(CateDAO.class);
		
		if(cate_name.equals("")) {
			error = 1;
			model.addAttribute("error", error);
		}else {
		result = dao.cateCreate(cate_name);
		}
		
		model.addAttribute("result", result);
	}

}
