package com.loan.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.loan.system.utils.GlobalData;

@Controller
public class SystemController {
	@RequestMapping("admin")
	public ModelAndView index(){
		ModelAndView view = new ModelAndView("index"); 
		view.addObject("sys", GlobalData.system);
		return view; 
	}
	
	@RequestMapping("login")
	public ModelAndView login(){
		ModelAndView view = new ModelAndView("login"); 
		view.addObject("sys", GlobalData.system);
		return view; 
	}
	
}
