package com.thatf.personal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/pers/login")
public class LoginController {
	
	
	@RequestMapping(value="/login")
	public String login(){
		System.out.println("start login...");
		return "/index.jsp";	
	}

}
