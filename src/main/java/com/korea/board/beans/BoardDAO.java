package com.korea.board.beans;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardDAO {
	public String cateTitle(int cate_uid);
	public List<BoardDTO> boardList(int cate_uid);
	public int boardCreate(BoardDTO dto);
	public BoardDTO boardView(int board_uid);
	public int boardDelete(int board_uid);
	public int boardUpdate(@Param("dto") BoardDTO dto);
	
	
}
