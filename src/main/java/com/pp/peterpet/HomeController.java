package com.pp.peterpet;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pp.peterpet.board.BoardDAO;
import com.pp.peterpet.user.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private BoardDAO bdao;
	
	@Autowired
	private UserDAO udao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		udao.loginCheck(request);
		
		//request.setAttribute("navBar", "function/navbar.jsp");
		
		String type = "free";
		request.setAttribute("freeBoards",  bdao.getfreeList(type));
		type = "QA";
		request.setAttribute("QABoards",  bdao.getfreeList(type));
		type = "share";
		request.setAttribute("shareBoards",  bdao.getfreeList(type));
		
		
		request.setAttribute("contentPage", "home.jsp");
		return "index";
	}
}
