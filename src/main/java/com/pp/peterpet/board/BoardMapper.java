package com.pp.peterpet.board;

import java.util.List;

public interface BoardMapper {
	public List<BoardDTO> getfreeList(BoardDTO bdto);
	
	public List<BoardDTO> getList(BoardDTO bdto);
	
	public BoardDTO getBoard(BoardDTO bdto);
	
	public List<BoardDTO> getTitleSearch(BoardDTO bdto);
	
	public List<BoardDTO> getWriterSearch(BoardDTO bdto);
	
	public int include(BoardDTO bdto);
	
	public int getUpdate(BoardDTO bdto);
	
	public int getDel(BoardDTO bdto);
	
	public int userDel(BoardDTO bdto);
	
}
