package com.korea.board.beans;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardDTO {
	private int board_uid;
	private String board_title;
	private String board_content;
	private Date board_regdate;
	private String board_writer;
	private int cate_uid;
}
