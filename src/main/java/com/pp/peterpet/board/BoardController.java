package com.pp.peterpet.board;


import javax.servlet.http.HttpServletRequest;
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
public class BoardController {
	@Autowired
	private BoardDAO bdao;
	
	@Autowired
	private UserDAO udao;
	
	@RequestMapping(value = "/BoardListC", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {

		udao.loginCheck(request);
		
		//전체리스트 적재
		bdao.getList(request);
		String board_type = request.getParameter("type");
		
		if(board_type.equals("free")) {
			//자랑 게시판
			request.setAttribute("contentPage", "board/free/board_list.jsp");
		}else if(board_type.equals("QA")) {
			//질문 게시판
			request.setAttribute("contentPage", "board/QA/board_list.jsp");
		}else if(board_type.equals("tip")) {
			//팁 게시판	
			request.setAttribute("contentPage", "board/tip/board_list.jsp");
		}else if(board_type.equals("share")) {
			//나눔 게시판
			request.setAttribute("contentPage", "board/share/board_list.jsp");
		}else if(board_type.equals("temp")) {
			//임시보호 게시판
			request.setAttribute("contentPage", "board/temp/board_list.jsp");
		}else if(board_type.equals("other")) {
			//그외동물 게시판	
			request.setAttribute("contentPage", "board/other/board_list.jsp");
		}
		
		//1페이지에 해당하는 각각의 보드들에게 할당
		bdao.paging(1, request);

		return "index";
	}
	
}
