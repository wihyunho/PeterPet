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
public class DogDiseaseController {
	@Autowired
	private UserDAO udao;
	
	//보드 페이지 진입//////////////
	@RequestMapping(value = "/DiseaseC", method = RequestMethod.GET)
	public String DiseaseC(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/a.jsp");
		return "index";
	}	

	//강아지 jsp로 이동
	@RequestMapping(value = "/DogDiseaseC", method = RequestMethod.GET)
	public String DogDiseaseC(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog.jsp");
		return "index";
	}
	

	@RequestMapping(value = "/DogDisease_Eyes_1", method = RequestMethod.GET)
	public String DogDisease_Eyes_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/eyes/eyes1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Eyes_2", method = RequestMethod.GET)
	public String DogDisease_Eyes_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/eyes/eyes2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Eyes_3", method = RequestMethod.GET)
	public String DogDisease_Eyes_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/eyes/eyes3.jsp");
		return "index";
	}
}
