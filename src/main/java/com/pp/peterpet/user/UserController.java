package com.pp.peterpet.user;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
public class UserController {
	@Autowired
	private BoardDAO bdao;
	
	@Autowired
	private UserDAO udao;
	
	//로그인 페이지 진입 컨트롤러/////////////////////////////
	@RequestMapping(value = "/UserLoginC", method = RequestMethod.GET)
	public String UserLoginCG(HttpServletRequest request) {
		UserDAO.loginCheck(request);
		request.setAttribute("contentPage", "account/login.jsp");
		
		return "index";
	}
	
	//로그인 기능
	@RequestMapping(value = "/UserLoginC", method = RequestMethod.POST)
	public String UserLoginCP(HttpServletRequest request, HttpServletResponse response) {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		
		if(userID == null || userID.equals("") ||
			userPassword == null || userPassword.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "모든 내용을 입력해주세요.");
			response.sendRedirect("UserLoginC");
			
			return;
		}
		
		int result = new UserDAO().login(userID, userPassword);
		
		if(result == 1) {
			request.getSession().setAttribute("userID", userID);
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "로그인에 성공했습니다.");
			response.sendRedirect("HC");
		}else if(result == 2) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "비밀번호를 다시 확인하세요.");
			response.sendRedirect("UserLoginC");
		} else if(result == 0) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "아이디가 존재하지 않습니다.");
			response.sendRedirect("UserLoginC");
		}  else if(result == -1) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "데이터베이스 오류가 발생했습니다.");
			response.sendRedirect("UserLoginC");
		} 
		
		return "index";
	}
	
}
