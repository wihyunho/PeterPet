package com.pp.peterpet.chat;


import java.util.ArrayList;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ChatDAO {
	@Autowired
	private SqlSession ss;
	
	public String getBoxs(String userID) {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		
		ArrayList<ChatDTO> chatList = getBox(userID);
		
		if(chatList.size() == 0) return "";
		
		for(int i = chatList.size() - 1; i >= 0; i--) {
			String unread="";
			if(userID.equals(chatList.get(i).getToID())) {
				unread = getUnreadChat(chatList.get(i).getFromID(), userID) + "";
				if(unread.equals("0")) unread = "";
			}
			result.append("[{\"value\":\""+  chatList.get(i).getFromID() + "\"},");
			result.append("{\"value\":\""+  chatList.get(i).getToID() + "\"},");
			result.append("{\"value\":\""+  chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\":\""+  chatList.get(i).getChatTime() + "\"},");
			result.append("{\"value\":\""+  unread + "\"}]");
			if(i != 0) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size()-1).getChatID() + "\"}");
		return result.toString();
	}
	
	// chatid 가져오기
	public String getID(String fromID, String toID,String chatID) {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ChatDAO chatDAO = new ChatDAO();
		ArrayList<ChatDTO> chatList = getChatListByID(fromID, toID, chatID);
		if(chatList.size() == 0) return "";
		for(int i = 0; i <chatList.size(); i++) {
			result.append("[{\"value\":\""+  chatList.get(i).getFromID() + "\"},");
			result.append("{\"value\":\""+  chatList.get(i).getToID() + "\"},");
			result.append("{\"value\":\""+  chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\":\""+  chatList.get(i).getChatTime() + "\"}]");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size()-1).getChatID() + "\"}");
		readChat(fromID, toID);
		return result.toString();
	}
	
	//쳇 가져오기
	public ArrayList<ChatDTO> getChatListByID(String fromID, String toID, String chatID){
		ChatDTO cdto = new ChatDTO();
		cdto.setFromID(fromID);
		cdto.setToID(toID);
		cdto.setChatID(Integer.parseInt(chatID));
		
		List<ChatDTO> result = ss.getMapper(ChatMapper.class).getChatListByID(cdto);
		
		ArrayList<ChatDTO> chatList = new ArrayList<ChatDTO>();
		
		for (int i = 0; i < result.size(); i++) {
			//보내는 사람
			fromID = result.get(i).getFromID();
			result.get(i).setFromID(fromID.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//받는 사람
			toID = result.get(i).getToID();
			result.get(i).setToID(toID.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//채팅 내용
			String chatContent = result.get(i).getChatContent();
			result.get(i).setChatContent(chatContent.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//시간 수정
			//시간 출력
			int chatTime = Integer.parseInt(result.get(i).getChatTime().substring(11, 13));
			String timeType = "오전";
			if(chatTime > 12) {
				timeType ="오후";
				chatTime -= 12;
			}
			result.get(i).setChatTime(result.get(i).getChatTime().substring(0, 11) + 
										" " + timeType + " " + chatTime + ":" + 
										result.get(i).getChatTime().substring(14, 16) + "");
			
			//arraylist에 추가
			chatList.add(result.get(i));
		}
		
		return chatList; // 리스트 반환
	}//getChatList END
	
	//최근 대화 목록 몇개만 가져오는 함수
	public ArrayList<ChatDTO> getChatListByRecent(String fromID, String toID,int number){
		ChatDTO cdto = new ChatDTO();
		cdto.setToID(toID);
		cdto.setFromID(fromID);
		cdto.setChatRead(number);
		
		List<ChatDTO> result = ss.getMapper(ChatMapper.class).getChatListByID(cdto);
		ArrayList<ChatDTO> chatList =new ArrayList<ChatDTO>();
		
		for (int i = 0; i < result.size(); i++) {
			
			//보내는 사람
			fromID = result.get(i).getFromID();
			result.get(i).setFromID(fromID.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//받는 사람
			toID = result.get(i).getToID();
			result.get(i).setToID(toID.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//채팅 내용
			String chatContent = result.get(i).getChatContent();
			result.get(i).setChatContent(chatContent.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//시간 수정
			//시간 출력
			int chatTime = Integer.parseInt(result.get(i).getChatTime().substring(11, 13));
			String timeType = "오전";
			if(chatTime > 12) {
				timeType ="오후";
				chatTime -= 12;
			}
			result.get(i).setChatTime(result.get(i).getChatTime().substring(0, 11) + 
										" " + timeType + " " + chatTime + ":" + 
										result.get(i).getChatTime().substring(14, 16) + "");
			
			//arraylist에 추가
			chatList.add(result.get(i));
		}
		return chatList; // 리스트 반환
	}//getChatListRec END
	
	// 메세지함 박스
	public ArrayList<ChatDTO> getBox(String userID){
		ChatDTO cdto = new ChatDTO();
		cdto.setToID(userID);
		
		List<ChatDTO> result = ss.getMapper(ChatMapper.class).getBox(cdto);
		
		ArrayList<ChatDTO> chatList = new ArrayList<ChatDTO>();
		
		for (int i = 0; i < result.size(); i++) {
			
			//보내는 사람
			String fromID = result.get(i).getFromID();
			result.get(i).setFromID(fromID.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//받는 사람
			String toID = result.get(i).getToID();
			result.get(i).setToID(toID.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//채팅 내용
			String chatContent = result.get(i).getChatContent();
			result.get(i).setChatContent(chatContent.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll("<", "&gt").replaceAll("\n", "<br>"));
			
			//시간 수정
			//시간 출력
			int chatTime = Integer.parseInt(result.get(i).getChatTime().substring(11, 13));
			String timeType = "오전";
			if(chatTime > 12) {
				timeType ="오후";
				chatTime -= 12;
			}
			result.get(i).setChatTime(result.get(i).getChatTime().substring(0, 11) + 
										" " + timeType + " " + chatTime + ":" + 
										result.get(i).getChatTime().substring(14, 16) + "");
			
			//arraylist에 추가
			chatList.add(result.get(i));
		}
		
		for(int i = 0; i < chatList.size(); i++) {
			ChatDTO x = chatList.get(i);
			for(int j = 0; j < chatList.size(); j++) {
				ChatDTO y = chatList.get(j);
				if(x.getFromID().equals(y.getToID()) && x.getToID().equals(y.getFromID())) {
					if(x.getChatID() < y.getChatID()) {
						chatList.remove(x);
						i--;
						break;
					}else {
						chatList.remove(y);
						j--;
					}
				}
			}
		}
		
		return chatList; // 리스트 반환
	}
	
	public int submit(String fromID, String toID, String chatContent){
		ChatDTO cdto = new ChatDTO();
		cdto.setFromID(fromID);
		cdto.setToID(toID);
		cdto.setChatContent(chatContent);
		
		return ss.getMapper(ChatMapper.class).submit(cdto);
	}//getChatListRec END

	//chat을 읽으면 읽음 표시
	public int readChat(String fromID, String toID) {
		ChatDTO cdto = new ChatDTO();
		cdto.setToID(toID);
		cdto.setFromID(fromID);
		
		return ss.getMapper(ChatMapper.class).readChat(cdto);
	}
	
	//내가 안읽은 챗 갯수 가져오기
	public int getAllUnreadChat(String userID) {
		ChatDTO cdto = new ChatDTO();
		cdto.setToID(userID);
		
		return ss.getMapper(ChatMapper.class).getAllUnreadChat(cdto).getCounter();
	}
	
	//특정한 사용자와 얼마나 메시지 않읽었는지 카운트
	public int getUnreadChat(String fromID, String toID) {
		ChatDTO cdto = new ChatDTO();
		cdto.setFromID(fromID);
		cdto.setToID(toID);
	
		return ss.getMapper(ChatMapper.class).getUnreadChat(cdto).getCounter();
	}
}//Class END
