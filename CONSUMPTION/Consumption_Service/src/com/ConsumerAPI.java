package com;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Consumption;

/**
 * Servlet implementation class ConsumerAPI
 */
@WebServlet("/ConsumerAPI")
public class ConsumerAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	//creating object of Model class
	Consumption consumptionObj = new Consumption();
	
  
    public ConsumerAPI() {
        super();
    }

	//get 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	//post
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// inserting data to table by calling the model
		String output = consumptionObj.insertConsumption(request.getParameter("Account_No"), 
														 request.getParameter("Reading"),
														 request.getParameter("Date"));

		// using PrintWriter obj to write the output to client 
		response.getWriter().write(output);
		
		
	}

	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// using custom designed method to extract the details for update
		 Map paras = getParasMap(request);
		 String output = consumptionObj.updateConsumption(paras.get("Consumption_ID").toString(),
														  paras.get("Account_No").toString(),
														  paras.get("Reading").toString(),
														  paras.get("Date").toString());
		 //writing the result to client
		 response.getWriter().write(output);
	}

	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// using same custom method from delete
		Map paras = getParasMap(request);
		String output = consumptionObj.deleteConsumption(paras.get("Consumption_ID").toString());
		response.getWriter().write(output);
	}
	
	//
	// Convert request parameters to a Map
	private static Map getParasMap(HttpServletRequest request)
	{
		Map<String, String> map = new HashMap<String, String>();
		try
		 {
			 Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			 String queryString = scanner.hasNext() ?
			 scanner.useDelimiter("\\A").next() : ""; // \A means begining of input..so \\A means there is no delimiter
			 scanner.close();
			 String[] params = queryString.split("&");
			 
			 for (String param : params)
			 {
		
				 String[] p = param.split("=");
				 // eg: name=umesh so split by =
				 map.put(p[0], p[1]);
			 }
		 }
		catch (Exception e)
		 {
			System.out.println(e);
			
		 }
		return map;
	}

	

}
