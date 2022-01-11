package com.pp.peterpet.tour;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.pp.peterpet.board.BoardDAO;
import com.pp.peterpet.comment.CommentDAO;
import com.pp.peterpet.comment.CommentDTO;
import com.pp.peterpet.user.UserDAO;
import com.pp.peterpet.user.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TourController {
	@Autowired
	private UserDAO udao;
	
	//보드 페이지 진입//////////////
	@RequestMapping(value = "/TourHomeC", method = RequestMethod.GET)
	public String TourHomeC(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "tour/TourApi1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/TourViewC", method = RequestMethod.GET)
	public String TourViewC(HttpServletRequest request) {
		udao.loginCheck(request);
		
		String ty = request.getParameter("ty");
		String co = request.getParameter("co");
		
		request.setAttribute("ty", ty);
		request.setAttribute("co", co);
		
		request.setAttribute("contentPage", "tour/TourApi2.jsp");
		return "index";
	}
}
