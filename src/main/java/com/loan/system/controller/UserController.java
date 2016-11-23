package com.loan.system.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.loan.system.utils.ActionHelper;

@Controller
@RequestMapping("admin/user")
public class UserController{
	
	@RequestMapping("loadUsers")
	public void loadUsers(HttpServletRequest request,HttpServletResponse response){
		try {
			JSONObject json = new JSONObject();
			json.put("sEcho", 1);
			json.put("iTotalRecords", 1000);
			json.put("iTotalDisplayRecords", 1000);
			
			JSONArray array = new JSONArray();
			for(int i=0;i<20;i++){
				JSONObject object = new JSONObject();
				object.put("ID", ""+(i+1));
				object.put("Name", "测试"+(i+1));
				object.put("Position", "Accountant");
				object.put("Office", "中国");
				object.put("Age", "10");
				object.put("Startdate", "2011/07/25");
				object.put("Salary", "$170,750");
				object.put("action", "");
				array.put(object);
			}
			
			json.put("aaData", array);
			ActionHelper.writeToJson(json.toString(), response);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("add")
	public void add(HttpServletRequest request,HttpServletResponse response){
		System.out.println("添加成功");
		try {
			Thread.sleep(2000l);
			
			JSONObject json = new JSONObject();
			json.put("success", false);
			ActionHelper.writeToJson(json.toString(), response);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
//		try {
//			response.sendRedirect(GlobalUtil.getContextPath(request)+"admin/userManager");
//		} catch (IOException e) {
//			e.printStackTrace();
//		} 
	}
}
