package com.pp.peterpet.comment;

import java.util.List;

public interface CommentMapper {
	public List<CommentDTO> getCommentList(CommentDTO cdto);
	
	public int insertComment(CommentDTO cdto);
	
	public int updateComment(CommentDTO cdto);
	
	public List<CommentDTO> haveChildComment(CommentDTO cdto);
	
	public int chageDelComment(CommentDTO cdto);
	
	public CommentDTO getComment(CommentDTO cdto);
	
	public int deleteComment(CommentDTO cdto);
	
	public List<CommentDTO> userDel(CommentDTO cdto);
	
}
