package com.korea.board.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.board.beans.BoardDAO;
import com.korea.board.beans.BoardDTO;

public class BoardViewCommand implements Command{

	@Override
	public void execute(Model model) {
		int board_uid = (Integer)model.getAttribute("board_uid");
		BoardDTO dto = null;
		
		BoardDAO dao = Common.sqlSession.getMapper(BoardDAO.class);
		
		dto = dao.boardView(board_uid);
		
		model.addAttribute("dto", dto);
		
	}

}
