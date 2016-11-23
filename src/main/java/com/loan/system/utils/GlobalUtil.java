package com.loan.system.utils;

import javax.servlet.http.HttpServletRequest;

import com.loan.system.model.User;

public class GlobalUtil {
	public static String SESSION_USER = "SESSION_USER";
	public static User getLoginUser(HttpServletRequest request){
		User user = (User) request.getSession().getAttribute(SESSION_USER);
		return user;
	}
	
	public static void setLoginUser(HttpServletRequest request,User user){
		request.getSession().setAttribute(SESSION_USER,user);
	}
	
	public static void removeSessionUser(HttpServletRequest request){
		request.getSession().removeAttribute(SESSION_USER);
	}
	
	public static String getContextPath(HttpServletRequest request){
		
		String url = "";
		url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ request.getContextPath()+"/";

		return url;
	}
}
