package com.korea.user.command;

import org.springframework.ui.Model;

import com.korea.blog.Common;
import com.korea.user.beans.UserDAO;

public class PwSearchCommand implements Command{

	@Override
	public void execute(Model model) {
		String user_id = (String)model.getAttribute("user_id");
		String user_name = (String)model.getAttribute("user_name");
		String user_pw = "";
		int result = 0;
		int error = 0;
		
		UserDAO dao = Common.sqlSession.getMapper(UserDAO.class);
		
		if(user_id.equals("")) {
			error = 1;
			model.addAttribute("error", error);
		}else if(user_name.equals("")) {
			error = 2;
			model.addAttribute("error", error);
		}else {
		user_pw = dao.pwSearch(user_id, user_name);
		}
		
		if(user_pw==null) {
			result = 0;
			System.out.println("user_name : " + user_name);
			System.out.println("result : " + result);
			model.addAttribute("result", result);
		}else {
			result = 1;
			System.out.println("result : " + result);
			model.addAttribute("result", result);
			model.addAttribute("user_pw", user_pw);
		}
		
		
		
	}

}
