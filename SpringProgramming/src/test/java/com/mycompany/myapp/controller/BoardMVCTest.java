package com.mycompany.myapp.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.mycompany.myapp.ApplicationContextLoader;
import com.sun.glass.ui.View;

public class BoardMVCTest extends ApplicationContextLoader{
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired 
	private WebApplicationContext context;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup(){
		logger.info("setup");
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}
	
	@Test
	public void test1() throws Exception{
		logger.info("test1");
		ResultActions resultActions = mockMvc.perform(get("/board/list"));
		resultActions.andExpect(view().name("board/list"));
	
	}
	
	
	@Test
	public void test2(){
		logger.info("test2");
	}
	
}
