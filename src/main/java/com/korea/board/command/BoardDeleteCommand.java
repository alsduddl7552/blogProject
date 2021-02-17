package com.korea.board.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.board.beans.BoardDAO;
import com.korea.board.beans.BoardDTO;

public class BoardDeleteCommand implements Command {

	@Override
	public void execute(Model model) {
		int board_uid = (Integer)model.getAttribute("board_uid");
		int result = 0;
		
		BoardDAO dao = Common.sqlSession.getMapper(BoardDAO.class);
		
		result = dao.boardDelete(board_uid);
		
		model.addAttribute("result", result);

	}

}
