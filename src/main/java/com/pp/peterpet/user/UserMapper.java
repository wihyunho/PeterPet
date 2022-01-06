package com.pp.peterpet.user;

public interface UserMapper {
	public UserDTO login(UserDTO udto);
	
	public int register(UserDTO udto);
	
	public UserDTO idCheck(UserDTO udto);

	public UserDTO nicknameCheck(UserDTO udto);
	
	public UserDTO getUser(UserDTO udto);
	
	public int UserUpdateProfile(UserDTO udto);
	
	public int UserUpdatePassword(UserDTO udto);
	
	public int UserUpdateNickname(UserDTO udto);
	
	public UserDTO passwordCheck(UserDTO udto);
	
}
