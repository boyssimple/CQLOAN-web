package com.loan.system.interceptor;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.loan.system.model.User;
import com.loan.system.utils.GlobalUtil;

public class LoginInterceptor implements HandlerInterceptor {
	private static final String[] IGNORE_URI = {"/login.jsp", "/login/"};
	private static final SimpleDateFormat sim;
	static{
		sim = new SimpleDateFormat("yyyy年MM月dd日 hh时mm分ss秒SSS毫秒");
	}
	 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        boolean flag = false;
        String url = request.getRequestURL().toString();
        System.out.println(">>>: " + url+"-----"+sim.format(new Date()));
        for (String s : IGNORE_URI) {
            if (url.contains(s)) {
                flag = true;
                break;
            }
        }
        if (!flag) {
        	User user = GlobalUtil.getLoginUser(request);
            if (user != null){
            	flag = true;
            }else{
            	//没有登陆，转向登陆界面 
            	response.sendRedirect(GlobalUtil.getContextPath(request)+"login?timeout=true"); 
            	//request.getRequestDispatcher("/login").forward(request,response);  
              return false;
            }
        }
        return flag;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}
}
