package com.thatf.personal.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thatf.personal.domain.User;
import com.thatf.personal.service.Interface.LoginService;

@Controller
@RequestMapping(value = "/pers/login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/login")
	public String login(){
		System.out.println("start login...");
		User user = loginService.queryById(1L);
		System.out.println("user is "+user);
		return "/index.jsp";	
	}

}
