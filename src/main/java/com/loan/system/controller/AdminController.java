package com.loan.system.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.loan.system.utils.GlobalData;
import com.loan.system.utils.GlobalUtil;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@RequestMapping("userManager")
	public ModelAndView userManager(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("admin/userManager"); 
		view.addObject("sys", GlobalData.system);
		view.addObject("curUser", GlobalUtil.getLoginUser(request));
		return view; 
	}
	
	@RequestMapping("userList")
	public ModelAndView userList(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("admin/user-list"); 
		view.addObject("sys", GlobalData.system);
		view.addObject("curUser", GlobalUtil.getLoginUser(request));
		return view; 
	}
	
	@RequestMapping("userAdd")
	public ModelAndView userAdd(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("admin/user-add"); 
		view.addObject("sys", GlobalData.system);
		view.addObject("curUser", GlobalUtil.getLoginUser(request));
		return view; 
	}
	
	@RequestMapping("profile")
	public ModelAndView profile(HttpServletRequest request,HttpServletResponse response){
		ModelAndView view = new ModelAndView("admin/profile"); 
		view.addObject("sys", GlobalData.system);
		view.addObject("curUser", GlobalUtil.getLoginUser(request));
		return view; 
	}
}
