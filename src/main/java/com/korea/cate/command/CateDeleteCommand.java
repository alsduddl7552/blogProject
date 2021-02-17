package com.korea.cate.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.cate.beans.CateDAO;

public class CateDeleteCommand implements Command {

	@Override
	public void execute(Model model) {
		int cate_uid = (Integer)model.getAttribute("cate_uid");
		int result = 0;
		int boardResult = 0;
		
		CateDAO dao = Common.sqlSession.getMapper(CateDAO.class);
		
		result = dao.cateDelete(cate_uid);
		boardResult = dao.boardDelete(cate_uid);
		model.addAttribute("result", result);
		model.addAttribute("boardResult", boardResult);
		
	}

}
