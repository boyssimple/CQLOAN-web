package com.loan.system.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.loan.system.model.User;
import com.loan.system.utils.GlobalUtil;

@Controller
public class LoginController {
	@RequestMapping("loginAction")
	public void admin(HttpServletRequest request,HttpServletResponse response){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (StringUtils.isEmpty(username)) {
			try {
				response.sendRedirect(GlobalUtil.getContextPath(request)+"login?failure=USER-EMPTY");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else if (StringUtils.isEmpty(password)) {
			try {
				response.sendRedirect(GlobalUtil.getContextPath(request)+"login?failure=PASSWORD-EMPTY");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else if (username.equals("admin") && password.equals("admin")) {
			try {
				User user = new User();
				user.setId(1L);
				user.setUsername(username);
				user.setPassword(password);
				GlobalUtil.setLoginUser(request, user);
				response.sendRedirect(GlobalUtil.getContextPath(request)+"admin");
			} catch (IOException e) {
				e.printStackTrace();
			} 
		}else{
        	try {
				response.sendRedirect(GlobalUtil.getContextPath(request)+"login?failure=URPWD-ERROR");
			} catch (IOException e) {
				e.printStackTrace();
			} 
		}
	}
}
