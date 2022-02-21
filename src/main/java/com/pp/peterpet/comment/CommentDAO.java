package com.pp.peterpet.comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.peterpet.user.UserDAO;
import com.pp.peterpet.user.UserDTO;


@Service
public class CommentDAO {
	
	@Autowired
	private SqlSession ss;
	
	@Autowired
	private UserDAO udao;
	
	//댓글 등록
	public int insertComment(HttpServletRequest request) {
		String comment = request.getParameter("comment");
		comment = comment.replace(" ", "&nbsp;").replace("<", "&lt;").replace(">", "&gt;").replace("\r\n", "<br>");
		
		UserDTO user = udao.getUser(request);
		
		CommentDTO cdto = new CommentDTO();
		cdto.setB_no(Integer.parseInt(request.getParameter("boardnum")));
		cdto.setC_writer(user.getUserNickname());
		cdto.setC_parent(Integer.parseInt(request.getParameter("commentnum")));
		cdto.setC_comment(comment);
		
		return ss.getMapper(CommentMapper.class).insertComment(cdto);
	}

	//댓글 조회
	public ArrayList<CommentDTO> getCommentList(HttpServletRequest request) {	
		CommentDTO cdto = new CommentDTO();
		cdto.setB_no(Integer.parseInt(request.getParameter("no")));
		
		List<CommentDTO> result = ss.getMapper(CommentMapper.class).getCommentList(cdto);
		ArrayList<CommentDTO> data = new ArrayList<CommentDTO>();
		
		for (int i = 0; i < result.size(); i++) {
			data.add(result.get(i));
		}
		
		return data;	
	}
	
	//댓글 수정
	public int updateComment(HttpServletRequest request) {
		String comment = request.getParameter("comment");
		comment = comment.replace(" ", "&nbsp;").replace("<", "&lt;").replace(">", "&gt;").replace("\r\n", "<br>");
		
		CommentDTO cdto = new CommentDTO();
		cdto.setC_comment(comment);
		cdto.setC_no(Integer.parseInt(request.getParameter("commentnum")));

		return ss.getMapper(CommentMapper.class).updateComment(cdto);
		
	}

	// 댓글 삭제: 삭제할 댓글에 답글이 있는 경우
	public boolean chageDelComment(int no) {
		
		String sql = "update BOARD_COMMENT set c_writer='삭제된 코멘트', c_ischange=-1, c_comment='삭제된 코멘트입니다.' where c_no=?";
		
		CommentDTO cdto = new CommentDTO();
		cdto.setC_no(no);
		
		if( ss.getMapper(CommentMapper.class).chageDelComment(cdto) == 1) {
			return true;
		}

		return false;
	}
	
	// 댓글 삭제: 삭제할 댓글에 자식이 있는지 확인
	public boolean haveChildComment(int no) {
		CommentDTO cdto = new CommentDTO();
		cdto.setC_parent(no);
		
		List<CommentDTO> result = ss.getMapper(CommentMapper.class).haveChildComment(cdto);
		
		if(result.size() != 0) {
			return true;
		}
		
		return false;
	}

	public  boolean deleteComment(int no) {
		String sql = "delete from BOARD_COMMENT where c_no=?";
		
		CommentDTO cdto = new CommentDTO();
		cdto.setC_no(no);
		
		if(ss.getMapper(CommentMapper.class).deleteComment(cdto)==1) {
			return true;
		}
		
		return false;
	}	

	//코멘트 정보 가져오기
	public CommentDTO getComment(int no) {
		CommentDTO cdto = new CommentDTO();
		cdto.setC_no(no);
		
		return ss.getMapper(CommentMapper.class).getComment(cdto);	
	}

	
	//댓글 삭제 시나리오
	public void commentDelete(int no) {	
		//자식이 있는지 검사
		if(haveChildComment(no)) {
			//자식이 있다면 삭제 대신 대체
			chageDelComment(no);
		}else {
			//자신의 부모의 정보를 가져옴
			int parentNo = getComment(no).getC_parent();
			
			if(parentNo != 0) {
				CommentDTO parent = getComment(parentNo);
				
				//자신을 삭제
				deleteComment(no);
		
				if(parent.getC_ischange() == -1) {
					//부모가 삭제 되어 있다면
					commentDelete(parent.getC_no());
				}
			}else {
				deleteComment(no);
			}
			
		}
	}

	
}
