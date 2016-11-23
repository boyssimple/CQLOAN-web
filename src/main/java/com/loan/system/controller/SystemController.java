package com.loan.system.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.loan.system.utils.GlobalData;
import com.loan.system.utils.GlobalUtil;

@Controller
public class SystemController {
	@RequestMapping("admin")
	public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("index"); 
		view.addObject("sys", GlobalData.system);
		view.addObject("curUser", GlobalUtil.getLoginUser(request));
		return view; 
	}
	
	@RequestMapping("login")
	public ModelAndView login(){
		ModelAndView view = new ModelAndView("login"); 
		view.addObject("sys", GlobalData.system);
		return view; 
	}
	
}
