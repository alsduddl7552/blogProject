package com.korea.user.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.user.beans.UserDAO;

public class IdSearchCommand implements Command {

	@Override
	public void execute(Model model) {
		String user_name = (String)model.getAttribute("user_name");
		String user_mail = (String)model.getAttribute("user_mail");
		String user_id = "";
		int result = 0;
		int error = 0;
		
		UserDAO dao = Common.sqlSession.getMapper(UserDAO.class);
		
		if(user_name.equals("")) {
			error = 1;
			model.addAttribute("error", error);
		}else if(user_mail.equals("")) {
			error = 2;
			model.addAttribute("error", error);
		}else {
		user_id = dao.idSearch(user_name, user_mail);
		}
		
		if(user_id==null) {
			result = 0;
			System.out.println("user_name : " + user_name);
			System.out.println("result : " + result);
			model.addAttribute("result", result);
		}else {
			result = 1;
			System.out.println("result : " + result);
			model.addAttribute("result", result);
			model.addAttribute("user_id", user_id);
		}
		
		
		
	}

}
