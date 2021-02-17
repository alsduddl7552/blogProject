package com.korea.cate.command;

import java.util.List;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.board.beans.BoardDTO;
import com.korea.cate.beans.CateDAO;
import com.korea.cate.beans.CateDTO;

public class ListCateCommand implements Command{

	@Override
	public void execute(Model model) {
		List<CateDTO> list = null;
		List<BoardDTO> list2 = null;
		
		CateDAO dao = Common.sqlSession.getMapper(CateDAO.class);
		
		list = dao.cateList();
		list2 = dao.boardTotalList();
		
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
	}

}
