package com.pp.peterpet.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.catalina.ssi.SSICommand;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class UserDAO {
	@Autowired
	private SqlSession ss;

	// 로그인
	public int login(String userID, String userPassword, String loginType) {

		UserDTO udto = new UserDTO();
		udto.setUserID(userID);
		udto.setUserPassword(userPassword);

		UserDTO result = ss.getMapper(UserMapper.class).login(udto);	
		
		if (result != null) {
			if(result.getLoginType().equals(loginType)) {
				if (result.getUserPassword().equals(userPassword)) {
					return 1; // 로그인 성공
				}
				return 2; // 비밀 번호 틀림
			}else {
				return -1;
			}
		} else {
			return 0; // 해당사용자가 존재하지 않음
		}

	}// loing() end

	// 아이디 중복체크
	public int idCheck(String userID) {

		UserDTO udto = new UserDTO();
		udto.setUserID(userID);

		UserDTO result = ss.getMapper(UserMapper.class).idCheck(udto);

		if (result != null || userID.equals("")) {
			return 0; // 이미존재하는 회원
		} else {
			return 1; // 가입 가능한 회원 아이디
		}
	}// registerCheck() end

	// 닉네임 중복체크
	public int nicknameCheck(String nickname) {
		UserDTO udto = new UserDTO();
		udto.setUserNickname(nickname);

		UserDTO result = ss.getMapper(UserMapper.class).nicknameCheck(udto);

		if (result != null || nickname.equals("")) {
			return 0; // 이미존재하는 닉네임
		} else {
			return 1; // 가입 가능한 회원 닉네임
		}
	}// registerCheck() end

	// DB에 넣기
	public int register(String userID, String userPassword, String userName, String userNickname, String userProfile, String loginType) {
		
		if (userProfile == null) {
			userProfile = "icon.png";
		}
		
		userProfile = "resources/images/"+userProfile;
		
		UserDTO udto = new UserDTO();
		udto.setUserID(userID);
		udto.setUserPassword(userPassword);
		udto.setUserName(userName);
		udto.setUserNickname(userNickname);
		udto.setUserProfile(userProfile);
		udto.setLoginType(loginType);
		
		return ss.getMapper(UserMapper.class).register(udto);
	}// register() end

	// 로그인 되어 있는지 확인
	public static boolean loginCheck(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		String a = (String) hs.getAttribute("userID");

		if (a == null) {
			// 로그인 실패
			request.setAttribute("navBar", "function/navbar.jsp");
			return false;
		} else {
			request.setAttribute("navBar", "function/navbar_logined.jsp");
			return true;
		}
	}

	// 유저의 정보를 가져오는 함수 request 세션에 아이디가 이미 있음
	public UserDTO getUser(HttpServletRequest request) {

		HttpSession hs = request.getSession();
		String userID = (String) hs.getAttribute("userID");

		UserDTO udto = new UserDTO();
		udto.setUserID(userID);

		UserDTO user = ss.getMapper(UserMapper.class).getUser(udto);
		
		return user;
	}
	
	//아이디를 통하여 유저의 정보를 가져오는 함수 getuser와 함수는 같음
	public UserDTO getUser2(String userID) {
		UserDTO udto = new UserDTO();
		udto.setUserID(userID);

		UserDTO user = ss.getMapper(UserMapper.class).getUser(udto);

		return user;
	}
	
	//닉네임을 통하여 유저의 정보를 가져오는 함수
	public UserDTO getUser3(String userNickname) {
		UserDTO udto = new UserDTO();
		udto.setUserNickname(userNickname);

		UserDTO user = ss.getMapper(UserMapper.class).getUser3(udto);

		return user;
	}

	public boolean UserUpdate(HttpServletRequest request) throws IOException {
		Connection con = null;
		PreparedStatement pstmt = null;

		String path = request.getSession().getServletContext().getRealPath("resources/images");
		MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1204, "UTF-8",
				new DefaultFileRenamePolicy());
		String type = mr.getParameter("type");

		String sql = "";
		String value = "";
		int result = 0;

		HttpSession hs = request.getSession();
		String userID = (String) hs.getAttribute("userID");

		if (type.equals("profile")) {
			value = mr.getFilesystemName("profile");
			
			
			if (value == null) {
				value = "icon.png";
			}
			
			value = "resources/images/"+value;
			
			UserDTO udto = new UserDTO();
			udto.setUserID(userID);
			udto.setUserProfile(value);

			result = ss.getMapper(UserMapper.class).UserUpdateProfile(udto);
		} else if (type.equals("password")) {
			value = mr.getParameter("userPassword1");

			UserDTO udto = new UserDTO();
			udto.setUserID(userID);
			udto.setUserPassword(value);

			result = ss.getMapper(UserMapper.class).UserUpdatePassword(udto);
		} else if (type.equals("nickname")) {
			value = mr.getParameter("nickname");

			UserDTO udto = new UserDTO();
			udto.setUserID(userID);
			udto.setUserNickname(value);

			result = ss.getMapper(UserMapper.class).UserUpdateNickname(udto);
		}

		if (result == 1) {
			return true;
		} else {
			return false;
		}
	}

	public int passwordCheck(HttpServletRequest request, String password) {

		HttpSession hs = request.getSession();
		String userID = (String) hs.getAttribute("userID");

		UserDTO udto = new UserDTO();
		udto.setUserID(userID);
		

		UserDTO result = ss.getMapper(UserMapper.class).passwordCheck(udto);

		if (result != null) {
			if (result.getUserPassword().equals(password)) {
				return 1;
			}
		}

		return -1;
	}

}// class end
