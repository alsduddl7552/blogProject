package com.korea.user.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface Command {
	void execute(Model model);

}
