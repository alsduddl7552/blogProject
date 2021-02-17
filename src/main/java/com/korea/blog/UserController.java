package com.korea.blog;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.user.beans.UserDTO;
import com.korea.user.command.IdSearchCommand;
import com.korea.user.command.LoginCommand;
import com.korea.user.command.PwSearchCommand;
import com.korea.user.command.SignUpCommand;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	@RequestMapping("/login")
	public void login() {
		
	}
	
	@RequestMapping("/logOut")
	public void logOut() {
		
	}
	
	@RequestMapping("/loginOk")
	public void loginOk(HttpServletRequest request, Model model, String user_id, String user_pw) {
		model.addAttribute("user_id", user_id);
		model.addAttribute("user_pw", user_pw);
		new LoginCommand().loginSession(request, model);
	}
	
	@RequestMapping("/signUp")
	public void signUp() {
		
	}
	
	@RequestMapping("/signUpOk")
	public void signUp(Model model, UserDTO dto) {
		model.addAttribute("dto", dto);
		new SignUpCommand().execute(model);
	}
	
	@RequestMapping("/idsearch")
	public void idsearch() {
	
	}
	
	@RequestMapping("/idsearchOk")
	public void idsearchOk(Model model, String user_name, String user_mail) {
		model.addAttribute("user_name", user_name);
		model.addAttribute("user_mail", user_mail);
		new IdSearchCommand().execute(model);
		
	}
	
	@RequestMapping("/pwsearch")
	public void pwsearch() {
		
	}
	
	@RequestMapping("/pwsearchOk")
	public void pwsearchOk(Model model, String user_id, String user_name) {
		model.addAttribute("user_id", user_id);
		model.addAttribute("user_name", user_name);
		new PwSearchCommand().execute(model);
		
	}
	
}
