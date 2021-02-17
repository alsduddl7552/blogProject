package com.korea.blog;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.korea.cate.command.ListCateCommand;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	   // MyBatis
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	   @Autowired
	   public void setSqlSession(SqlSession sqlSession) {
	      this.sqlSession = sqlSession;
	      Common.sqlSession = sqlSession;
	   }
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		new ListCateCommand().execute(model);
		
		return "index";
	}
	
}
