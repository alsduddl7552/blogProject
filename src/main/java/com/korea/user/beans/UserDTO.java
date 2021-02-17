package com.korea.user.beans;

import lombok.Data;

@Data
public class UserDTO {

	private int user_uid;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_phone;
	private String user_mail;
}
