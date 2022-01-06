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
	public int login(String userID, String userPassword) {
		
		UserDTO udto = new UserDTO();
		udto.setUserID(userID);
		udto.setUserPassword(userPassword);
		
		
		UserDTO result =  ss.getMapper(UserMapper.class).login(udto);
		
		if (result != null) {
			if (result.getUserPassword().equals(userPassword)) {
				return 1; // 로그인 성공
			}
			return 2; // 비밀 번호 틀림
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
			return 0; 	// 이미존재하는 회원
		} else {
			return 1;	// 가입 가능한 회원 아이디
		}
	}// registerCheck() end
	
	// 닉네임 중복체크
	public int nicknameCheck(String nickname) {
		UserDTO udto = new UserDTO();
		udto.setUserNickname(nickname);
		
		UserDTO result = ss.getMapper(UserMapper.class).nicknameCheck(udto);
		
		if (result !=null || nickname.equals("")) {
			return 0; 	// 이미존재하는 닉네임
		} else {
			return 1;	// 가입 가능한 회원 아이디
		}
	}// registerCheck() end

	// DB에 넣기
	public int register(String userID, String userPassword, String userName, String userNickname, String userProfile) {
		if(userProfile == null) {
			userProfile = "icon.png";
		}

		UserDTO udto = new UserDTO(userID, userPassword, userName, userNickname, userProfile);
		
		return ss.getMapper(UserMapper.class).register(udto);
	}// register() end

	//로그인 되어 있는지 확인
	public static boolean loginCheck(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		String a = (String)hs.getAttribute("userID");
		
		if(a == null) {
			//로그인 실패
			request.setAttribute("navBar", "function/navbar.jsp");
			return false;
		} else {
			request.setAttribute("navBar", "function/navbar_logined.jsp");
			return true;
		}
	}

	//유저의 정보를 가져오는 함수
	public static UserDTO getUser(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		HttpSession hs = request.getSession();
		String userID = (String)hs.getAttribute("userID");
		
		String SQL = "SELECT * FROM Account WHERE userID = ?";
		
		UserDTO user = new UserDTO();
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user.setUserID(rs.getString("userID"));
				user.setUserPassword(rs.getString("userPassword"));
				user.setUserName(rs.getString("userName"));
				user.setUserNickname(rs.getString("userNickname"));
				user.setUserProfile(rs.getString("userProfile"));

				return user; 	// 이미존재하는 닉네임
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		} // finally end
		return user;
	}

	public static boolean UserUpdate(HttpServletRequest request) throws IOException {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		String path = request.getSession().getServletContext().getRealPath("images");
		MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1204, "UTF-8", new DefaultFileRenamePolicy());
		String type = mr.getParameter("type");
		
		String sql = "";
		String value = "";
		
		HttpSession hs = request.getSession();
		String userID = (String)hs.getAttribute("userID");
		
		if(type.equals("profile")) {
			sql = "update Account set userProfile= ? where userID=?";
			value = mr.getFilesystemName("profile");

			if(value == null) {
				value = "icon.png";
			}
		}else if(type.equals("password")) {
			sql = "update Account set userPassword= ? where userID=?";
			value = mr.getParameter("userPassword1");
		} else if (type.equals("nickname")) {
			sql = "update Account set userNickname= ? where userID=?";
			value = mr.getParameter("nickname");
		}
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, value);
			pstmt.setString(2, userID);
			
			if(pstmt.executeUpdate()==1) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		request.getSession().setAttribute("messageType", "오류 메시지");
		request.getSession().setAttribute("messageContent", "데이터베이스 오류입니다.");
		return false;
	}
	

	public int passwordCheck(HttpServletRequest request, String password) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		HttpSession hs = request.getSession();
		String userID = (String)hs.getAttribute("userID");
		String SQL = "SELECT * FROM Account WHERE userID =?";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString("userPassword").equals(password)) {
					return 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		} // finally end
		return -1;
	}
	
}// class end
