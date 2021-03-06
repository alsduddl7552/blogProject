package com.korea.board.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.board.beans.BoardDAO;
import com.korea.board.beans.BoardDTO;

public class BoardUpdateCommand implements Command {

	@Override
	public void execute(Model model) {
		BoardDTO dto = (BoardDTO)model.getAttribute("dto");
		int result = 0;
		int error = 0;
		BoardDAO dao = Common.sqlSession.getMapper(BoardDAO.class);
		
		if(dto.getBoard_title().equals("")) {
			error = 1;
			model.addAttribute("error", error);
		}else if(dto.getBoard_content().equals("")) {
			error = 2;
			model.addAttribute("error", error);
		}else {
		result = dao.boardUpdate(dto);
		}
		
		model.addAttribute("result", result);

	}

}
