package com.korea.blog;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.korea.cate.command.CateCreateCommand;
import com.korea.cate.command.CateDeleteCommand;

@Controller
@RequestMapping("/cate")
public class CateController {

	@RequestMapping("/cateCreateOk")
	public void cateCreatOk(Model model, String cate_name) {
		model.addAttribute("cate_name", cate_name);
		new CateCreateCommand().execute(model);
	}
	

	
}
