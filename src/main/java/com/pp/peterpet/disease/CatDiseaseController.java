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
	
	
	//고양이 jsp로 이동
	@RequestMapping(value = "/CatDiseaseC", method = RequestMethod.GET)
	public String CatDiseaseC(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat.jsp");
		return "index";
	}
	
	
	 
	  
	  @RequestMapping(value = "/CatDisease_Stom_1", method = RequestMethod.GET)
	  public String CatDisease_Stom_1(HttpServletRequest request) {
	  udao.loginCheck(request);
	  
	  request.setAttribute("contentPage", "disease/cat/stom/stom1.jsp"); return
	  "index"; }
	 
	
	
	@RequestMapping(value = "/CatDisease_Leg_1", method = RequestMethod.GET)
	public String CatDisease_Leg_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/leg/leg1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Inetes_1", method = RequestMethod.GET)
	public String CatDisease_Inetes_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/intes/intes1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Inetes_2", method = RequestMethod.GET)
	public String CatDisease_Inetes_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/intes/intes2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Skin_1", method = RequestMethod.GET)
	public String CatDisease_Skin_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/skin/skin1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Skin_2", method = RequestMethod.GET)
	public String CatDisease_Skin_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/skin/skin2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Skin_3", method = RequestMethod.GET)
	public String CatDisease_Skin_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/skin/skin3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Skin_4", method = RequestMethod.GET)
	public String CatDisease_Skin_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/skin/skin4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Eyes_1", method = RequestMethod.GET)
	public String CatDisease_Eyes_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/eyes/eyes1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Eyes_2", method = RequestMethod.GET)
	public String CatDisease_Eyes_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/eyes/eyes2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Eyes_3", method = RequestMethod.GET)
	public String CatDisease_Eyes_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/eyes/eyes3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Breathe_1", method = RequestMethod.GET)
	public String CatDisease_Breathe_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/breathe/breathe1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Gen_1", method = RequestMethod.GET)
	public String CatDisease_Gen_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/gen/gen1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Food_1", method = RequestMethod.GET)
	public String CatDisease_Food_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/food/food1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Food_2", method = RequestMethod.GET)
	public String CatDisease_Food_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/food/food2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Food_3", method = RequestMethod.GET)
	public String CatDisease_Food_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/food/food3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Food_4", method = RequestMethod.GET)
	public String CatDisease_Food_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/food/food4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Act_1", method = RequestMethod.GET)
	public String CatDisease_Act_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/act/act1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Act_2", method = RequestMethod.GET)
	public String CatDisease_Act_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/act/act2.jsp");
		return "index";
	}
	
	
	@RequestMapping(value = "/CatDisease_Act_3", method = RequestMethod.GET)
	public String CatDisease_Act_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/act/act3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Act_4", method = RequestMethod.GET)
	public String CatDisease_Act_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/act/act4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/CatDisease_Act_5", method = RequestMethod.GET)
	public String CatDisease_Act_5(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/cat/act/act5.jsp");
		return "index";
	}
	
	
	
	
}
