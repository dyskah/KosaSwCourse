package com.mycompany.myapp.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mycompany.myapp.ApplicationContextLoader;
import com.mycompany.myapp.dto.Board;

public class BoardServiceTest extends ApplicationContextLoader {

	@Autowired
	private BoardService boardService;
	
	@Test
	public void testAdd(){
		Board board = new Board();
		board.setTitle("제목");
		board.setContent("내용");
		board.setWriter("글쓴이");
		boardService.add(board);
	}
}
