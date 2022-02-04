package com.pp.peterpet.chat;


import java.io.IOException;
import java.net.URLDecoder;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.pp.peterpet.user.UserDAO;


@Controller
public class ChatController {
	@Autowired
	private UserDAO udao;
	
	@Autowired
	private ChatDAO cdao;

	
	//채팅함 진입////////////////////////////
	@RequestMapping(value = "/ChatBox", method = RequestMethod.GET)
	public String ChatBox(HttpServletRequest request) {

		if (!udao.loginCheck(request)) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "현재 로그인이 되어 있지 않습니다.");
			
			return "redirect:/";
		}

		request.setAttribute("userID", (String) request.getSession().getAttribute("userID"));
		request.setAttribute("contentPage", "chat/box.jsp");

		return "index";
	}
	
	//채팅창 진입/////////////
	@RequestMapping(value = "/Chat", method = RequestMethod.GET)
	public String Chat(HttpServletRequest request) {
		if(!udao.loginCheck(request)) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "현재 로그인이 되어 있지 않습니다.");

			return "redirect:/";
		}
		String toID;
		String toNickname = request.getParameter("toNickname");
		
		if(toNickname == null) {
			toID = (String) request.getParameter("toID");
		}else {
			toID = udao.getUser3(toNickname).getUserID();
		}
		
		if (toID == null) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "대화 상대가 지정되지 않았습니다.");
			return "redirect:/";
		}
		
		if(request.getSession().getAttribute("userID").equals(toID)) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "자기 자신에게는 메시지를 보낼 수 없습니다.");

			return "redirect:/";
		}
		String userID =(String) request.getSession().getAttribute("userID");
		int isdel =  cdao.CheckDel(userID,toID);
		
	
		//내가 나간상태였는데 다시 들어온 경우
		if(isdel == 1) {
			//채팅의 상태들을 다시 0로 모두 변경
			cdao.reInside(userID,toID);
			
			isdel = 0;
		}
	
		request.getSession().setAttribute("isDelete", isdel);
		request.setAttribute("userID", udao.getUser2(userID));
		request.setAttribute("toID",  udao.getUser2(toID));

		return "chat/chat";
	}
	
	//채팅 목록 가져오는 ajax///////
	@RequestMapping(value = "/ChatBoxServlet", method = RequestMethod.POST)
	public void ChatBoxServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userID = request.getParameter("userID");
		
		if(userID == null || userID.equals("")) {
			response.getWriter().write("");
		} else {
			try {
				userID =URLDecoder.decode(userID, "UTF-8");
				response.getWriter().write(cdao.getBoxs(userID) + "");
			} catch (Exception e) {
				response.getWriter().write("");
			}
			
		}
	}
	
	
	@RequestMapping(value = "/ChatListServlet", method = RequestMethod.POST)
	public void ChatListServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String fromID = request.getParameter("fromID");
		String toID = request.getParameter("toID");
		String listType = request.getParameter("listType");
		
		//사용자 대상자 메시지중 하나라도 값이 없다면
		if(fromID == null || fromID.equals("") || toID ==null || toID.equals("")
				|| listType==null || listType.equals("")) {
			response.getWriter().write("");
		}else {
			try {
				response.getWriter().write(cdao.getID(fromID, toID, listType) + "");
			} catch (Exception e) {
				response.getWriter().write("");
			}
		}
	}
	
	@RequestMapping(value = "/ChatUnreadServlet", method = RequestMethod.POST)
	public void ChatUnreadServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userID = request.getParameter("userID");
		if(userID == null || userID.equals("")) {
			response.getWriter().write("0");
		} else {
			userID =URLDecoder.decode(userID, "UTF-8");
			response.getWriter().write(cdao.getAllUnreadChat(userID) + "");
		}
	}

	@RequestMapping(value = "/ChatSubmitServlet", method = RequestMethod.POST)
	public void ChatSubmitServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String fromID = request.getParameter("fromID");
		String toID = request.getParameter("toID");
		String chatContent = request.getParameter("chatContent");
		
		//사용자 대상자 메시지중 하나라도 값이 없다면
		if(fromID == null || fromID.equals("") || toID ==null || toID.equals("")
				|| chatContent==null || chatContent.equals("")) {
			response.getWriter().write("0");
		}else if(fromID.equals(toID)){
			//자기 자신에게 메세지를 보낼 수 없음
			response.getWriter().write("-1");
		}else {
		
			fromID = URLDecoder.decode(fromID, "UTF-8");
			toID =  URLDecoder.decode(toID, "UTF-8");
			chatContent = URLDecoder.decode(chatContent, "UTF-8");
			response.getWriter().write(cdao.submit(fromID, toID, chatContent) + "");	
		}
	}
	
	@RequestMapping(value = "/IsDeleteServlet", method = RequestMethod.POST)
	public void IsDeleteServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String fromID = request.getParameter("fromID");
		String toID = request.getParameter("toID");
		
		//사용자 대상자 메시지중 하나라도 값이 없다면
		if(fromID == null || fromID.equals("") || toID ==null || toID.equals("")) {
			response.getWriter().write("0");
		}else{
			fromID = URLDecoder.decode(fromID, "UTF-8");
			toID =  URLDecoder.decode(toID, "UTF-8");
			int isdel = cdao.CheckDel(fromID, toID);
			request.getSession().setAttribute("isDelete", isdel);
			response.getWriter().write(isdel + "");
		}
	}
	
	@RequestMapping(value = "/ChatRemoveC", method = RequestMethod.GET)
	public void ChatRemoveC(HttpServletRequest request, HttpServletResponse response) throws IOException {

		
		//나
		String toID = request.getParameter("toID");
		
		//상대방
		String fromID = request.getParameter("fromID");
		
		if(cdao.DeleteChat(toID, fromID)) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "대화방을 나갔습니다.");
		}else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "알수없는 오류가 발생하였습니다.");
		}
			
		return;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
