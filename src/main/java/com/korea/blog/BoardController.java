package com.korea.blog;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.board.beans.BoardDTO;
import com.korea.board.command.BoardDeleteCommand;
import com.korea.board.command.BoardInsertCommand;
import com.korea.board.command.BoardListCommand;
import com.korea.board.command.BoardUpdateCommand;
import com.korea.board.command.BoardViewCommand;
import com.korea.cate.command.CateDeleteCommand;
import com.korea.cate.command.CateUpdateCommand;
import com.korea.user.beans.UserDTO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@RequestMapping("/boardList")
	public void boardList(Model model, int cate_uid) {
		model.addAttribute("cate_uid", cate_uid);
		new BoardListCommand().execute(model);
		
	}
	
	@RequestMapping("/cateUpdateOk")
	public void cateUpdateOk(Model model, int cate_uid, String cate_name) {
		model.addAttribute("cate_uid", cate_uid);
		model.addAttribute("cate_name", cate_name);
		new CateUpdateCommand().execute(model);
	}
	
	@RequestMapping("/cateDeleteOk")
	public void cateDeleteOk(Model model, int cate_uid) {
		model.addAttribute("cate_uid", cate_uid);
		new CateDeleteCommand().execute(model);
	}
	
	@RequestMapping("/boardCreate")
	public void boardCreate() {
	}
	
	@RequestMapping("/boardCreateOK")
	public void boardCreateOK(Model model, BoardDTO dto) {
		model.addAttribute("dto", dto);
		new BoardInsertCommand().execute(model);
	}
	
	@RequestMapping("/boardView")
	public void boardView(Model model, int board_uid){
		model.addAttribute("board_uid", board_uid);
		new BoardViewCommand().execute(model);
	}
	
	@RequestMapping("/boardUpdate")
	public void boardUpdate(Model model, int board_uid) {
		model.addAttribute("board_uid", board_uid);
		new BoardViewCommand().execute(model);
	}
	
	@RequestMapping("/boardUpdateOk")
	public void boardUpdateOk(Model model, BoardDTO dto) {
		model.addAttribute("dto", dto);
		new BoardUpdateCommand().execute(model);
	}
	
	@RequestMapping("/boardDeleteOk")
	public void boardDeleteOk(Model model, int board_uid) {
		model.addAttribute("board_uid", board_uid);
		new BoardDeleteCommand().execute(model);
	}
	
}
