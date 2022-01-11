package com.pp.peterpet.comment;

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
public class CommentController {
	@Autowired
	private BoardDAO bdao;

	@Autowired
	private UserDAO udao;

	@Autowired
	private CommentDAO cdao;

	// 댓글 등록///////////////////////
	@RequestMapping(value = "/CommentWriteC", method = RequestMethod.POST)
	public String home(HttpServletRequest request) {

		if (cdao.insertComment(request) == 1) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "댓글 등록 성공.");

		} else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "댓글 등록 실패.");
		}

		String url = "BoardViewC?no=" + request.getParameter("boardnum");
		return "redirect:" + url;
	}

	@RequestMapping(value = "/CommentUpdateC", method = RequestMethod.POST)
	public String CommentUpdateC(HttpServletRequest request) {

		if (cdao.updateComment(request) == 1) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "댓글 수정 성공.");

		} else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "댓글 수정 실패.");
		}

		String url = "BoardViewC?no=" + request.getParameter("boardnum");
		return "redirect:"+url;
	}
	
	@RequestMapping(value = "/CommentDeleteC", method = RequestMethod.GET)
	public String CommentDeleteC(HttpServletRequest request) {
		
		int no = Integer.parseInt(request.getParameter("no"));
		cdao.commentDelete(no);
		
		if (cdao.getComment(no) == null || cdao.getComment(no).getC_ischange() == -1) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "댓글 삭제 성공.");
		}else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "댓글 삭제 실패.");
		}
		
		
		String url = "BoardViewC?no="+request.getParameter("boardnum");
		return "redirect:"+url;
		
	}

}
