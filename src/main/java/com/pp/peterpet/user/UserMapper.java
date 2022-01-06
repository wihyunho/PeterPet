package com.pp.peterpet.user;

public interface UserMapper {
	public UserDTO login(UserDTO udto);
	
	public int register(UserDTO udto);
	
	public UserDTO idCheck(UserDTO udto);

	public UserDTO nicknameCheck(UserDTO udto);
}
