package com.pp.peterpet.board;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.peterpet.board.BoardDTO;
import com.pp.peterpet.user.UserDAO;
import com.pp.peterpet.user.UserDTO;



@Service
public class BoardDAO {
	
	@Autowired
	private SqlSession ss;
	
	@Autowired
	private UserDAO udao;
	
	ArrayList<BoardDTO> boards;

	//보드 글 생성
	public int include(HttpServletRequest request) {
		
		String content = request.getParameter("content");
		
		String thumbnail="resources/images/noimage.png";
		
		if(content.indexOf("<img ") != -1) {
			//이미지가 있다
			int start,end;
			
			start = content.indexOf("resources/");
			thumbnail =  content.substring(start);
			
			end = thumbnail.indexOf("\"");
			thumbnail= thumbnail.substring(0, end);
		}
		
		UserDTO user = udao.getUser(request);
		
		BoardDTO bdto = new BoardDTO();
		bdto.setB_type(request.getParameter("type"));
		bdto.setB_title(request.getParameter("title"));
		bdto.setB_content(content);
		bdto.setB_thumbnail(thumbnail);
		bdto.setB_writer(user.getUserNickname());
		
		return ss.getMapper(BoardMapper.class).include(bdto);
	}

	//보드 리스트 가져오기
	public ArrayList<BoardDTO> getList(HttpServletRequest request) {

		
		String type = request.getParameter("type");
		BoardDTO bdto = new BoardDTO();
		bdto.setB_type(type);
		
		List<BoardDTO> result = ss.getMapper(BoardMapper.class).getList(bdto);
		
		//초기화
		boards = new ArrayList<BoardDTO>();
		for (int i = 0; i < result.size(); i++) {
			boards.add(result.get(i));
		}
		
		return boards;
	}

	//글 자세히 보기
	public BoardDTO getBoard(HttpServletRequest request) {	
		BoardDTO bdto = new BoardDTO();
		bdto.setB_no(Integer.parseInt(request.getParameter("no")));

		return ss.getMapper(BoardMapper.class).getBoard(bdto);
	}

	//글 수정하기
	public int getUpdate(HttpServletRequest request) {		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		System.out.println(content);
		System.out.println(content.indexOf("<img "));
		
		String thumbnail="resources/images/noimage.png";
		
		if(content.indexOf("<img ") != -1) {
			//이미지가 있다
			int start,end;
			
			start = content.indexOf("resources/");
			thumbnail =  content.substring(start);
			
			end = thumbnail.indexOf("\"");
			thumbnail= thumbnail.substring(0, end);
		}
		
		System.out.println(thumbnail);
		
		BoardDTO bdto = new BoardDTO();
		bdto.setB_no(Integer.parseInt(request.getParameter("no")));
		bdto.setB_content(content);
		bdto.setB_thumbnail(thumbnail);
		bdto.setB_title(title);

		return ss.getMapper(BoardMapper.class).getUpdate(bdto);
	}

	//보드 삭제
	public int getDel(HttpServletRequest request) {

		BoardDTO bdto = new BoardDTO();
		
		bdto.setB_no(Integer.parseInt(request.getParameter("no")));
		
		return ss.getMapper(BoardMapper.class).getDel(bdto);
	}

	//보드 제목으로 검색하기
	public ArrayList<BoardDTO> getTitleSearch(HttpServletRequest request) {
		BoardDTO bdto = new  BoardDTO();
		bdto.setB_title(request.getParameter("search"));
		bdto.setB_type(request.getParameter("type"));
		
		List<BoardDTO> result = ss.getMapper(BoardMapper.class).getTitleSearch(bdto);
		boards = new ArrayList<BoardDTO>();
		
		for (int i = 0; i < result.size(); i++) {
			boards.add(result.get(i));
		}
		
		return boards;
	}

	//보드 작성자로 검색하기
	public ArrayList<BoardDTO> getWriterSearch(HttpServletRequest request) {	
		BoardDTO bdto = new BoardDTO();
		bdto.setB_writer(request.getParameter("search"));
		bdto.setB_type(request.getParameter("type"));
		
		List<BoardDTO> result = ss.getMapper(BoardMapper.class).getWriterSearch(bdto);
		boards = new ArrayList<BoardDTO>();
		
		for (int i = 0; i < result.size(); i++) {
			boards.add(result.get(i));
		}

		return boards;
	}
	
	public void paging(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page);
		
		// 전체 페이지 수 계산
		int cnt = 9; //한 페이지당 보여줄 개수
		
		String type = request.getParameter("type");
		if(type.equals("QA") || type.equals("tip")) {
			cnt = 15;
		}
		
		int total = boards.size();//총 데이터 개수
		
		int pageCount = (int) Math.ceil(total/(double)cnt);
		request.setAttribute("pageCount", pageCount);
		
		int start = total - (cnt * (page-1));
		int end = (page == pageCount) ? -1 : start - (cnt + 1);
		
		ArrayList<BoardDTO> items = new ArrayList<BoardDTO>();
		if(!boards.isEmpty()) {
			for (int i = start-1; i > end; i--) {
				items.add(boards.get(i));
			}
		}
		request.setAttribute("boards", items);
	}


	public ArrayList<BoardDTO> getfreeList(String type) {
		int maxcount = 3;
		if(type.equals("QA")) {
			maxcount=7;
		}
		
		BoardDTO bdto = new BoardDTO();
		bdto.setB_type(type);
		
		List<BoardDTO> boardlist = ss.getMapper(BoardMapper.class).getfreeList(bdto);
		
		boards = new ArrayList<BoardDTO>();
		for (int i = 0; i < maxcount; i++) {
			boards.add(boardlist.get(i));
		}
		
		return boards;
	}
}
