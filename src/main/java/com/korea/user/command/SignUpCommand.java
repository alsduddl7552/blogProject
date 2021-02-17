package com.korea.user.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.user.beans.UserDAO;
import com.korea.user.beans.UserDTO;

public class SignUpCommand implements Command{
	

	@Override
	public void execute(Model model) {
		UserDTO dto = (UserDTO)model.getAttribute("dto");
		int error = 0;
		UserDAO dao = Common.sqlSession.getMapper(UserDAO.class);
		
		if(dto.getUser_id().equals("")) {
			error = 1;
			model.addAttribute("error", error);
		}else if(dto.getUser_pw().equals("")) {
			error = 2;
			model.addAttribute("error", error);
		}else if(dto.getUser_name().equals("")) {
			error = 3;
			model.addAttribute("error", error);
		}else if(dto.getUser_phone().equals("")) {
			error = 4;
			model.addAttribute("error", error);
		}else if(dto.getUser_mail().equals("")) {
			error = 5;
			model.addAttribute("error", error);
		}else {
		model.addAttribute("result", dao.userSignUp(dto));
		}
		
	}}
