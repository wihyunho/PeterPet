package com.pp.peterpet.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class SocialController {
	@Autowired
	private UserDAO udao;
	
	//회원 가입
	@RequestMapping(value = "/googleRegister", method = RequestMethod.POST)
	public String googleRegister(HttpServletRequest request) {
		if (udao.loginCheck(request)) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "로그인 상태로 회원가입을 할 수 없습니다.");
			request.setAttribute("contentPage", "home.jsp");

			return "index";
		} else {
			if(udao.getUser2(request.getParameter("userID2"))==null){
			request.setAttribute("contentPage", "account/google_join.jsp");
			request.setAttribute("userID",  request.getParameter("userID2"));
			request.setAttribute("userPassword",  request.getParameter("userPassword2"));
			request.setAttribute("userName",  request.getParameter("userName2"));
			request.setAttribute("profile",  request.getParameter("profile2"));
			
			return "index";
			}else {
				request.getSession().setAttribute("messageType", "오류 메시지");
				request.getSession().setAttribute("messageContent", "가입되어 있는 email입니다.");
				
				return "redirect:SelectRegisterC";
			}
			
		}
	}
	
	//회원 가입
	@RequestMapping(value = "/googleRegister2", method = RequestMethod.POST)
	public String googleRegister2(HttpServletRequest request) {
		String userID = request.getParameter("userID");
	
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("userName");
		String userNickname = request.getParameter("nickname");
		String userProfile = request.getParameter("profile");
		String loginType = request.getParameter("loginType");
		

		int result = udao.register(userID, userPassword, userName, userNickname, userProfile, loginType);

		if (result == 1) {
			request.getSession().setAttribute("userID", userID);
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "회원가입에 성공하였습니다.");

			return "redirect:/";
		} else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "에러 났다.");

			return "redirect:UserRegisterC";
		}
	}
}
