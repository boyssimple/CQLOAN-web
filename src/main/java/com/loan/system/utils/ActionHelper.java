package com.loan.system.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class ActionHelper {
	public static void writeToJson(String json,HttpServletResponse response){
		try {
			PrintWriter writer = response.getWriter();
			writer.print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
