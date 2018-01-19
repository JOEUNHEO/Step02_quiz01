package com.gura.quiz01.board.service;

import org.springframework.web.servlet.ModelAndView;

import com.gura.quiz01.board.dto.BoardDto;

public interface BoardService {
	public ModelAndView insert(BoardDto dto);
	public void delete(int num);
	public void update(BoardDto dto);
	public ModelAndView getList();
	public ModelAndView getData(int num);
}
