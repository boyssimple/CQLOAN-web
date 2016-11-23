package com.loan.system.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.loan.system.utils.GlobalData;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@RequestMapping("userManager")
	public ModelAndView userManager(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("admin/userManager"); 
		view.addObject("sys", GlobalData.system);
		return view; 
	}
	
	@RequestMapping("userList")
	public ModelAndView userList(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("admin/user-list"); 
		view.addObject("sys", GlobalData.system);
		return view; 
	}
	
	@RequestMapping("userAdd")
	public ModelAndView userAdd(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("admin/user-add"); 
		view.addObject("sys", GlobalData.system);
		return view; 
	}
}
