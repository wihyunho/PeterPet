package com.pp.peterpet.board;


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
public class BoardController {
	@Autowired
	private BoardDAO bdao;
	
	@Autowired
	private UserDAO udao;
	
	@Autowired
	private CommentDAO cdao;
	
	//보드 페이지 진입//////////////
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
	
	//보드 페이징 작업////////////////
	@RequestMapping(value = "/BoardPageC", method = RequestMethod.GET)
	public String BoardPageC(HttpServletRequest request) {
		
		udao.loginCheck(request);
		
		int p = Integer.parseInt(request.getParameter("p"));
		bdao.getList(request);
		bdao.paging(p, request);
		
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

		return "index";
	}
	
	//게시물 자세히 보기 ////////////////////
	@RequestMapping(value = "/BoardViewC", method = RequestMethod.GET)
	public String BoardViewC(HttpServletRequest request) {
		BoardDTO b = bdao.getBoard(request);
		
		if(UserDAO.loginCheck(request)) {			
			UserDTO u = udao.getUser(request);
			request.setAttribute("userNickname", u.getUserNickname());
		}
		ArrayList<CommentDTO> commentList = cdao.getCommentList(request);
		
		request.setAttribute("commentList", commentList);
		request.setAttribute("board", b);
		
		if(b.b_type.equals("free")) {
			request.setAttribute("contentPage", "board/free/board_view.jsp");
		} else if(b.b_type.equals("QA")) {
			request.setAttribute("contentPage", "board/QA/board_view.jsp");
		} else if(b.b_type.equals("tip")) {
			//팁 게시판	
			request.setAttribute("contentPage", "board/tip/board_view.jsp");
		}else if(b.b_type.equals("share")) {
			//나눔 게시판
			request.setAttribute("contentPage", "board/share/board_view.jsp");
		}else if(b.b_type.equals("temp")) {
			//임시보호 게시판
			request.setAttribute("contentPage", "board/temp/board_view.jsp");
		}else if(b.b_type.equals("other")) {
			//그외동물 게시판	
			request.setAttribute("contentPage", "board/other/board_view.jsp");
		}
		
		//자신이 있던 페이지 목록
		String curPageNo = request.getParameter("p");
		request.setAttribute("curPageNo", curPageNo);

		return "index";
	}
	
	//게시물 검색///////////////////
	@RequestMapping(value = "/BoardSearchC", method = RequestMethod.POST)
	public String BoardSearchC(HttpServletRequest request) {
		//네비게이션 바 생성 작업
		udao.loginCheck(request);
		
		if(request.getParameter("field").equals("title")) {	
			//서치 목록 적제
			bdao.getTitleSearch(request);
		}else {
			//서치 목록 적제
			bdao.getWriterSearch(request);
		}
		
		String board_type = request.getParameter("type");
		if(board_type.equals("free")) {
			request.setAttribute("contentPage", "board/free/board_list.jsp");
		}else if(board_type.equals("QA")) {
			request.setAttribute("contentPage", "board/QA/board_list.jsp");
		}else if(board_type.equals("tip")) {
			request.setAttribute("contentPage", "board/tip/board_list.jsp");
		}else if(board_type.equals("share")) {
			request.setAttribute("contentPage", "board/share/board_list.jsp");
		}else if(board_type.equals("temp")) {
			request.setAttribute("contentPage", "board/temp/board_list.jsp");
		}else if(board_type.equals("other")) {
			request.setAttribute("contentPage", "board/other/board_list.jsp");
		}
		
		//검색 1페이지에 해당하는 각각의 보드들에게 할당
		bdao.paging(1, request);

		return "index";
	}
	
	//게시물 쓰기 진입//////////////////////////////////////
	@RequestMapping(value = "/BoardWriteC", method = RequestMethod.GET)
	public String BoardWriteCG(HttpServletRequest request) {
		if(udao.loginCheck(request)) {
			String board_type = request.getParameter("type");
			if(board_type.equals("free")) {
				//자랑 게시판
				request.setAttribute("contentPage", "board/free/board_Write.jsp");
			}else if(board_type.equals("QA")) {
				//질문 게시판
				request.setAttribute("contentPage", "board/QA/board_Write.jsp");
			}else if(board_type.equals("tip")) {
				//팁 게시판	
				request.setAttribute("contentPage", "board/tip/board_Write.jsp");
			}else if(board_type.equals("share")) {
				//나눔 게시판
				request.setAttribute("contentPage", "board/share/board_Write.jsp");
			}else if(board_type.equals("temp")) {
				//임시보호 게시판
				request.setAttribute("contentPage", "board/temp/board_Write.jsp");
			}else if(board_type.equals("other")) {
				//그외동물 게시판	
				request.setAttribute("contentPage", "board/other/board_Write.jsp");
			}
		}else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "회원만 글을 작성할 수 있습니다.");
			request.setAttribute("contentPage", "home.jsp");
		}

		return "index";
	}
	
	//게시물 등록////////////////////////////////
	@RequestMapping(value = "/BoardWriteC", method = RequestMethod.POST)
	public String BoardWriteCP(HttpServletRequest request) {
		if(bdao.include(request) == 1) {
			udao.loginCheck(request);
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "글 등록 성공.");
			
		}else {
			udao.loginCheck(request);
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "글 등록 실패.");		
		}	
		
		String type = request.getParameter("type");
		String url = "BoardListC?type="+type;
		
		return "redirect:"+url;
	}
	
	//써머노트 이미지 업로드 ajax 통신//////////////////////
	@RequestMapping(value = "/SummernoteImage", method = RequestMethod.POST)
	public void SummernoteImage(HttpServletRequest request, HttpServletResponse response) throws IOException {
		  // 이미지 업로드할 경로
	    String path = request.getSession().getServletContext().getRealPath("resources/images");
	    int size = 10 * 1024 * 1024;  // 업로드 사이즈 제한 10M 이하
		
		String fileName = ""; // 파일명
		
		try{
	        // 파일업로드 및 업로드 후 파일명 가져옴
			MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			String file = (String)files.nextElement(); 
			fileName = multi.getFilesystemName(file); 
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	    // 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
		String uploadPath = "resources/images/" + fileName;
		
	    // 생성된 경로를 JSON 형식으로 보내주기 위한 설정
		JSONObject jobj = new JSONObject();
		jobj.put("url", uploadPath);
		
		response.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한 세팅
		
		response.getWriter().write(jobj.toJSONString() + "");
	}
	
	//게시물 업데이트 진입/////////////////////////////
	@RequestMapping(value = "/BoardUpdateC", method = RequestMethod.GET)
	public String BoardUpdateCG(HttpServletRequest request, HttpServletResponse response) throws IOException {
		udao.loginCheck(request);
		
		String page = request.getParameter("p");
		request.setAttribute("board", bdao.getBoard(request)); 
		request.setAttribute("page", page); 
		
		String board_type = request.getParameter("type");
		if(board_type.equals("free")) {
			request.setAttribute("contentPage", "board/free/board_Update.jsp");
		}else if(board_type.equals("QA")) {
			request.setAttribute("contentPage", "board/QA/board_Update.jsp");
		}else if(board_type.equals("tip")) {
			request.setAttribute("contentPage", "board/tip/board_Update.jsp");
		}else if(board_type.equals("share")) {
			request.setAttribute("contentPage", "board/share/board_Update.jsp");
		}else if(board_type.equals("temp")) {
			request.setAttribute("contentPage", "board/temp/board_Update.jsp");
		}else if(board_type.equals("other")) {
			request.setAttribute("contentPage", "board/other/board_Update.jsp");
		}
		
		return "index";
	}
	
	//게시물 업데이트/////////////////////////
	@RequestMapping(value = "/BoardUpdateC", method = RequestMethod.POST)
	public String BoardUpdateCP(HttpServletRequest request) throws IOException {
		udao.loginCheck(request);
		
		if(bdao.getUpdate(request) == 1) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "글수정을 성공했습니다.");
		}else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "글수정을 실패했습니다.");
		}

		String url = "BoardViewC?p=" + request.getParameter("page") + "&no=" + request.getParameter("no");
		return "redirect:"+url;
	}
	
	//게시물 삭제
	@RequestMapping(value = "/BoardDeleteC", method = RequestMethod.GET)
	public String BoardDeleteC(HttpServletRequest request) {
		udao.loginCheck(request);
		
		if(bdao.getDel(request) == 1) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "글삭제를 성공했습니다.");
		}else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "글삭제를 실패했습니다.");
		}
		String type = request.getParameter("type");
		String url = "BoardListC?type="+type;
		
		return "redirect:"+url;
	}
	
}
