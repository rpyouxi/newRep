package com.thatf.personal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("interfaceApi")
public class InterfaceApiController {
	
	
	@RequestMapping("/init")
	public String init(){
		
		return "interfaceApi";
	}

}
