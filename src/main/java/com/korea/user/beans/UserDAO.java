package com.korea.user.beans;

public interface UserDAO {
	
	public int userSignUp(UserDTO dto);
	public UserDTO userLogin(String id, String pw);
	public String idSearch(String user_name, String user_mail);
	public String pwSearch(String user_id, String user_name);
}
