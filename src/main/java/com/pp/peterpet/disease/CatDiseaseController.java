package com.pp.peterpet.disease;


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
public class CatDiseaseController {
	@Autowired
	private UserDAO udao;
	
	//강아지 jsp로 이동
	@RequestMapping(value = "/CatDiseaseC", method = RequestMethod.GET)
	public String DogDiseaseC(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat.jsp");
		return "index";
	}
	
	
}
