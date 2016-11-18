package com.loan.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SystemController {
	@RequestMapping("index")
	public ModelAndView index(){
		return new ModelAndView("index");
	}
	
	@RequestMapping("login")
	public ModelAndView login(){
		return new ModelAndView("login"); 
	}
	
	@RequestMapping("admin")
	public ModelAndView admin(){
		return new ModelAndView("admin"); 
	}
}
