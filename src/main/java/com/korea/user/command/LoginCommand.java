package com.korea.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.user.beans.UserDAO;
import com.korea.user.beans.UserDTO;

public class LoginCommand implements Command {

	@Override
	public void execute(Model model) {
		

		}
		
	public void loginSession(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String user_id = (String)model.getAttribute("user_id");
		String user_pw = (String)model.getAttribute("user_pw");
		UserDTO dto = null;
		int result = 0;
		int error = 0;
		UserDAO dao = Common.sqlSession.getMapper(UserDAO.class);
		
		if(user_id.equals("")) {
			error = 1;
			model.addAttribute("error", error);
		}else if(user_pw.equals("")) {
			error = 2;
			model.addAttribute("error", error);
		}else {
		dto = dao.userLogin(user_id, user_pw);
		}
		
		if(dto == null) {
			result = 0;
            model.addAttribute("result", result);
		}else {
			result = 1;
			model.addAttribute("result", result);
			model.addAttribute("dto", dto);
			session.setAttribute("user_uid", dto.getUser_uid());
			session.setAttribute("user_id", dto.getUser_id());
			System.out.println("user_id : " + session.getAttribute("user_id"));
		}
		
	}
		
		
	}
	
