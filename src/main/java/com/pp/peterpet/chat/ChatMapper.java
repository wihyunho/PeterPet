package com.pp.peterpet.chat;

import java.util.List;

public interface ChatMapper {

	public List<ChatDTO> getBox(ChatDTO cdto);
	
	public List<ChatDTO> getChatListByID(ChatDTO cdto);
	
	public UnreadDTO getAllUnreadChat(ChatDTO cdto);
	
	public int submit(ChatDTO cdto);
	
	public int readChat(ChatDTO cdto);
	
	public UnreadDTO getUnreadChat(ChatDTO cdto);

	public List<ChatDTO> getChatListByRecent(ChatDTO cdto);
}