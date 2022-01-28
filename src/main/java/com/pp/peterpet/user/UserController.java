package com.pp.peterpet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.pp.peterpet.board.BoardDAO;
import com.pp.peterpet.user.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {

	@Autowired
	private UserDAO udao;

	// 로그인 페이지 진입 컨트롤러/////////////////////////////
	@RequestMapping(value = "/UserLoginC", method = RequestMethod.GET)
	public String UserLoginCG(HttpServletRequest request) {
		UserDAO.loginCheck(request);
		request.setAttribute("contentPage", "account/login.jsp");

		return "index";
	}

	// 로그인 기능////////////////////////////////
	@RequestMapping(value = "/UserLoginC", method = RequestMethod.POST)
	public String UserLoginCP(HttpServletRequest request) throws IOException {
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");

		if (userID == null || userID.equals("") || userPassword == null || userPassword.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "모든 내용을 입력해주세요.");

			return "redirect:UserLoginC";
		}

		int result = udao.login(userID, userPassword);

		if (result == 1) {
			request.getSession().setAttribute("userID", userID);
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "로그인에 성공했습니다.");

			return "redirect:/";
		} else if (result == 2) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "비밀번호를 다시 확인하세요.");
			return "redirect:UserLoginC";
		} else if (result == 0) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "아이디가 존재하지 않습니다.");
			return "redirect:UserLoginC";
		} else if (result == -1) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "데이터베이스 오류가 발생했습니다.");
			return "redirect:UserLoginC";
		}

		return "index";
	}

	// 로그아웃/////////////////////
	@RequestMapping(value = "/UserLogoutC", method = RequestMethod.GET)
	public String UserLogoutCG(HttpServletRequest request) {
		request.getSession().invalidate(); // 세션 값 소멸
		request.getSession().setAttribute("messageType", "성공 메시지");
		request.getSession().setAttribute("messageContent", "로그아웃 하였습니다.");

		return "redirect:/";
	}

	// 회원 가입 페이지 진입/////////////////////////
	@RequestMapping(value = "/UserRegisterC", method = RequestMethod.GET)
	public String UserRegisterCG(HttpServletRequest request) {
		if (udao.loginCheck(request)) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "로그인 상태로 회원가입을 할 수 없습니다.");
			request.setAttribute("contentPage", "home.jsp");

			return "index";
		} else {
			request.setAttribute("contentPage", "account/join.jsp");
			return "index";
		}
	}

	// 회원 가입
	@RequestMapping(value = "/UserRegisterC", method = RequestMethod.POST)
	public String UserRegisterCP(HttpServletRequest request) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("resources/images");

		MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1204, "UTF-8",
				new DefaultFileRenamePolicy());
		String userID = mr.getParameter("userID");
		String userPassword1 = mr.getParameter("userPassword1");
		String userPassword2 = mr.getParameter("userPassword2");
		String userName = mr.getParameter("userName");
		String userNickname = mr.getParameter("nickname");
		String userProfile = mr.getFilesystemName("profile");

		// null 값을 받으면 반환
		if (userID == null || userID.equals("") || userPassword1 == null || userPassword1.equals("")
				|| userPassword2 == null || userPassword2.equals("") || userName == null || userName.equals("")
				|| userNickname == null || userNickname.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "항목을 다 입력해주세요.");

			return "redirect:UserRegisterC";
		}

		if (!userPassword1.equals(userPassword2)) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "비밀번호가 일치하지 않습니다.");

			return "redirect:UserRegisterC";
		}

		int result = udao.register(userID, userPassword1, userName, userNickname, userProfile);

		if (result == 1) {
			request.getSession().setAttribute("userID", userID);
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "회원가입에 성공하였습니다.");

			return "redirect:/";
		} else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "이미 존제하는 회원입니다.");

			return "redirect:UserRegisterC";
		}
	}

	// 아이디 중복 검사////////////////////
	@RequestMapping(value = "/UserIDCheckServlet", method = RequestMethod.POST)
	public void UserIDCheckServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userID = request.getParameter("userID");

		if (userID == null || userID.equals(""))
			response.getWriter().write("-1");

		response.getWriter().write(udao.idCheck(userID) + "");
	}

	// 닉네임 중복  검사/////////////////////
	@RequestMapping(value = "/NicknameCheckServlet", method = RequestMethod.POST)
	public void NicknameCheckServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String nickname = request.getParameter("nickname");

		if (nickname == null || nickname.equals(""))
			response.getWriter().write("-1");

		response.getWriter().write(udao.nicknameCheck(nickname) + "");
	}
	
	// 회원 정보페이지 진입///////////////////
	@RequestMapping(value = "/UserInfoC", method = RequestMethod.GET)
	public String UserInfoC(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		if(udao.loginCheck(request)) {
			request.setAttribute("User", udao.getUser(request));
			request.setAttribute("contentPage", "account/info.jsp");
			return "index";
		}else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "로그인을 해야 정보를 불러 올 수 있습니다.");
			return "redirect:/";
		}
	}
	
	// 회원 정보페이지 진입///////////////////
	@RequestMapping(value = "/OtherUserInfoC", method = RequestMethod.GET)
	public String OtherUserInfoC(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		udao.loginCheck(request);
		
		String userNickname = request.getParameter("userNickname");
		
		UserDTO user = udao.getUser3(userNickname);
		request.setAttribute("User", user);
		
		if(request.getSession().getAttribute("userID") != null && request.getSession().getAttribute("userID").equals(user.userID)) {
			return "redirect:UserInfoC";
		}else {
			request.setAttribute("contentPage", "account/otherInfo.jsp");
			return "index";
		}		
	}
	
	// 회원 정보페이지 진입
	@RequestMapping(value = "/UserInfoUpdateC", method = RequestMethod.GET)
	public String UserInfoUpdateCG(HttpServletRequest request) throws IOException, ServletException {
		if(udao.loginCheck(request)) {
			request.setAttribute("User", udao.getUser(request));
			String type = request.getParameter("type");
			
			if(type.equals("profile")) {
				request.setAttribute("contentPage", "account/profileUpdate.jsp");
			}else if(type.equals("password")) {
				request.setAttribute("contentPage", "account/passwordUpdate.jsp");
			}else if(type.equals("nickname")) {
				request.setAttribute("contentPage", "account/nicknameUpdate.jsp");
			}
		}else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "로그인을 해야 정보를 불러 올 수 있습니다.");

			return "redirect:/";
		}
		return "index";
	}
	
	// 회원 정보페이지 진입
	@RequestMapping(value = "/UserInfoUpdateC", method = RequestMethod.POST)
	public String UserInfoUpdateCP(HttpServletRequest request) throws IOException, ServletException {
		if(udao.UserUpdate(request)) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "회원 정보를 수정했습니다.");
		}
	
		return "redirect:UserInfoC";
	}
	
	// 회원 정보페이지 진입
	@RequestMapping(value = "/UserPasswordCheckServlet", method = RequestMethod.POST)
	public void UserPasswordCheckServlet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		String password = request.getParameter("Password");
		
		if(password == null || password.equals("")) response.getWriter().write("-1");
		
		response.getWriter().write(udao.passwordCheck(request, password) + "");
	}
}
