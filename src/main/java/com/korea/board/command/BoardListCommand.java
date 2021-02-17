package com.korea.board.command;

import java.util.List;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.board.beans.BoardDAO;
import com.korea.board.beans.BoardDTO;


public class BoardListCommand implements Command{

	@Override
	public void execute(Model model) {
		
		int cate_uid = (Integer)model.getAttribute("cate_uid");
		List<BoardDTO> list = null;
		String cate_title = "";
		
		BoardDAO dao = Common.sqlSession.getMapper(BoardDAO.class);
		
		cate_title = dao.cateTitle(cate_uid);
		list = dao.boardList(cate_uid);
		
		model.addAttribute("cate_title", cate_title);
		model.addAttribute("list", list);
		
	}

}
