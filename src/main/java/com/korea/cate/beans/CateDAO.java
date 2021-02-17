package com.korea.cate.beans;

import java.util.List;

import com.korea.board.beans.BoardDTO;

public interface CateDAO {
	public int cateCreate(String cate_name);
	public List<CateDTO> cateList();
	public int cateUpdate(int cate_uid, String cate_name);
	public int cateDelete(int cate_uid);
	public int boardDelete(int cate_uid);
	public List<BoardDTO> boardTotalList();
	
}
