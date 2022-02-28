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
	
	@RequestMapping(value = "/DogDisease_Eyes_4", method = RequestMethod.GET)
	public String DogDisease_Eyes_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/eyes/eyes4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Eyes_5", method = RequestMethod.GET)
	public String DogDisease_Eyes_5(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/eyes/eyes5.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_1", method = RequestMethod.GET)
	public String DogDisease_Act_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_2", method = RequestMethod.GET)
	public String DogDisease_Act_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_3", method = RequestMethod.GET)
	public String DogDisease_Act_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_4", method = RequestMethod.GET)
	public String DogDisease_Act_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_5", method = RequestMethod.GET)
	public String DogDisease_Act_5(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act5.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_6", method = RequestMethod.GET)
	public String DogDisease_Act_6(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act6.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_7", method = RequestMethod.GET)
	public String DogDisease_Act_7(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act7.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_8", method = RequestMethod.GET)
	public String DogDisease_Act_8(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act8.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_9", method = RequestMethod.GET)
	public String DogDisease_Act_9(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act9.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Act_10", method = RequestMethod.GET)
	public String DogDisease_Act_10(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/act/act10.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Nose_1", method = RequestMethod.GET)
	public String DogDisease_Nose_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/nose/nose1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Nose_2", method = RequestMethod.GET)
	public String DogDisease_Nose_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/nose/nose2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Nose_3", method = RequestMethod.GET)
	public String DogDisease_Nose_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/nose/nose3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Nose_4", method = RequestMethod.GET)
	public String DogDisease_Nose_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/nose/nose4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Nose_5", method = RequestMethod.GET)
	public String DogDisease_Nose_5(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/nose/nose5.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_1", method = RequestMethod.GET)
	public String DogDisease_Food_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_2", method = RequestMethod.GET)
	public String DogDisease_Food_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_3", method = RequestMethod.GET)
	public String DogDisease_Food_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_4", method = RequestMethod.GET)
	public String DogDisease_Food_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_5", method = RequestMethod.GET)
	public String DogDisease_Food_5(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food5.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_6", method = RequestMethod.GET)
	public String DogDisease_Food_6(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food6.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_7", method = RequestMethod.GET)
	public String DogDisease_Food_7(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food7.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Food_8", method = RequestMethod.GET)
	public String DogDisease_Food_8(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/food/food8.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Leg_1", method = RequestMethod.GET)
	public String DogDisease_Leg_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/leg/leg1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Leg_2", method = RequestMethod.GET)
	public String DogDisease_Leg_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/leg/leg2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Breathe_1", method = RequestMethod.GET)
	public String DogDisease_Breathe_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/breathe/breathe1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Breathe_2", method = RequestMethod.GET)
	public String DogDisease_Breathe_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/breathe/breathe2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Breathe_3", method = RequestMethod.GET)
	public String DogDisease_Breathe_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/breathe/breathe3.jsp");
		return "index";
	}

	@RequestMapping(value = "/DogDisease_Gentials_1", method = RequestMethod.GET)
	public String DogDisease_Gentials_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/genitals/genitals1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Gentials_2", method = RequestMethod.GET)
	public String DogDisease_Gentials_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/genitals/genitals2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Ears_1", method = RequestMethod.GET)
	public String DogDisease_Ears_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/ears/ears1.jsp");
		return "index";
	}	
	
	@RequestMapping(value = "/DogDisease_Ears_2", method = RequestMethod.GET)
	public String DogDisease_Ears_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/ears/ears2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Ears_3", method = RequestMethod.GET)
	public String DogDisease_Ears_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/ears/ears3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Pee_1", method = RequestMethod.GET)
	public String DogDisease_Pee_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/pee/pee1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Pee_2", method = RequestMethod.GET)
	public String DogDisease_Pee_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/pee/pee2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Pee_3", method = RequestMethod.GET)
	public String DogDisease_Pee_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/pee/pee3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Pee_4", method = RequestMethod.GET)
	public String DogDisease_Pee_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/pee/pee4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Skin_1", method = RequestMethod.GET)
	public String DogDisease_Skin_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/skin/skin1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Skin_2", method = RequestMethod.GET)
	public String DogDisease_Skin_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/skin/skin2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Skin_3", method = RequestMethod.GET)
	public String DogDisease_Skin_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/skin/skin3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Skin_4", method = RequestMethod.GET)
	public String DogDisease_Skin_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/skin/skin4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Skin_5", method = RequestMethod.GET)
	public String DogDisease_Skin_5(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/skin/skin5.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Skin_6", method = RequestMethod.GET)
	public String DogDisease_Skin_6(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/skin/skin6.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Skin_7", method = RequestMethod.GET)
	public String DogDisease_Skin_7(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/skin/skin7.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Digestion_1", method = RequestMethod.GET)
	public String DogDisease_Digestion_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/digestion/digestion1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Digestion_2", method = RequestMethod.GET)
	public String DogDisease_Digestion_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/digestion/digestion2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Digestion_3", method = RequestMethod.GET)
	public String DogDisease_Digestion_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/digestion/digestion3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Digestion_4", method = RequestMethod.GET)
	public String DogDisease_Digestion_4(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/digestion/digestion4.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Digestion_5", method = RequestMethod.GET)
	public String DogDisease_Digestion_5(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/digestion/digestion5.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Digestion_6", method = RequestMethod.GET)
	public String DogDisease_Digestion_6(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/digestion/digestion6.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Digestion_7", method = RequestMethod.GET)
	public String DogDisease_Digestion_7(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/digestion/digestion7.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Teeth_1", method = RequestMethod.GET)
	public String DogDisease_Teeth_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/teeth/teeth1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Teeth_2", method = RequestMethod.GET)
	public String DogDisease_Teeth_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/teeth/teeth2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Teeth_3", method = RequestMethod.GET)
	public String DogDisease_Teeth_3(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/teeth/teeth3.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Temperature_1", method = RequestMethod.GET)
	public String DogDisease_Temperature_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/temperature/temperature1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Bronchial_1", method = RequestMethod.GET)
	public String DogDisease_Bronchial_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/bronchial/bronchial1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Vessel_1", method = RequestMethod.GET)
	public String DogDisease_Vessel_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/vessel/vessel1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Vessel_2", method = RequestMethod.GET)
	public String DogDisease_Vessel_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/vessel/vessel2.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Etc_1", method = RequestMethod.GET)
	public String DogDisease_Etc_1(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/etc/etc1.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/DogDisease_Etc_2", method = RequestMethod.GET)
	public String DogDisease_Etc_2(HttpServletRequest request) {
		udao.loginCheck(request);
		
		request.setAttribute("contentPage", "disease/dog/etc/etc2.jsp");
		return "index";
	}
}
