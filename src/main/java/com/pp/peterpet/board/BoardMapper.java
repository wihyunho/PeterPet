package com.pp.peterpet.board;

import java.util.List;

public interface BoardMapper {
	public int include(BoardDTO bdto);
	
	public List<BoardDTO> getfreeList(BoardDTO bdto);
	
	public List<BoardDTO> getList(BoardDTO bdto);
}
