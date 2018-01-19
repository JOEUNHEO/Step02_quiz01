package com.gura.quiz01.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gura.quiz01.board.dto.BoardDto;
import com.gura.quiz01.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping("/board/list")
	public ModelAndView list() {
		
		ModelAndView mView = service.getList();
		
		mView.setViewName("board/list");
		
		return mView;
	}
	@RequestMapping("/board/detail")
	public ModelAndView detail(@RequestParam int num){
		
		ModelAndView mView = service.getData(num);
		
		mView.setViewName("board/detail");
		
		return mView;
	}
	
	@RequestMapping("/board/insertform")
	public String insertform() {
		
		return "board/insertform";
	}
	
	@RequestMapping("/board/insert")
	public ModelAndView insert(@ModelAttribute BoardDto dto){
		
		ModelAndView mView = service.insert(dto);
		
		mView.setViewName("board/alert");
		
		return mView;
	}
	@RequestMapping("/board/delete")
	public String delete(@RequestParam int num){
		
		service.delete(num);
		
		return "redirect:/board/list.do";
		
	}
	@RequestMapping("/board/updateform")
	public ModelAndView updateform(@RequestParam int num){
		
		ModelAndView mView = service.getData(num);
		
		mView.setViewName("board/updateform");
		
		return mView;
	}
	@RequestMapping("/board/update")
	public String update(@ModelAttribute BoardDto dto){
		service.update(dto);
		
		int num = dto.getNum();
		
		return "redirect:/board/detail.do?num="+num;
	}
}
