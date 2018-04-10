package com.controller;

import java.io.IOException;
import java.io.PrintWriter;




import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Dao;
import com.model.idea;
import com.model.Faq;

public class ControllerFaq extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out=response.getWriter();
		System.out.println("connected");
		Dao dao = new Dao();
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		System.out.println(actionCode);
		
		
		if (actionCode.equals("doLoadFaq")) {

			java.util.List<Faq> faqs = dao.doLoadFaq();
			System.out.println("in faq loop");
			request.getSession(false).setAttribute("faqs", faqs);
			if(!faqs.isEmpty()){
				System.out.println("in faq loop");
				response.sendRedirect(request.getContextPath()+ "/webcontent/info/ManageFaq.jsp");
			
			}else{
				response.sendRedirect(request.getContextPath()
						+ "/webcontent/info/Errors500.jsp");
			}
		}
		if (actionCode.equals("doDeleteFaq")) {
			System.out.println("hello");
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			Faq faq = new Faq();
			faq.setId(id);
			String status = dao.doDeleteFaq(faq);
			if (status.equals("succes")) {
				java.util.List<Faq> faqs = dao.doLoadFaq();

				request.getSession(false).setAttribute("faqs", faqs);

				response.sendRedirect(request.getContextPath()
						+ "/webcontent/info/ManageFaq.jsp");
			}

		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		// TODO Auto-generated method stub
		//super.doPost(request, response);
		PrintWriter out=response.getWriter();
		System.out.println("connected");
		Dao dao = new Dao();
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		System.out.println(actionCode);
		

		if (actionCode.equals("doAddFaq")) 	{
			Integer id = Integer.valueOf(0);
			String question = request.getParameter("question");
			String answer = request.getParameter("answer");
			System.out.println(question+" "+answer);
			Faq faq = new Faq();
			faq.setQuestion(question);
			faq.setAnswer(answer);

			id = dao.doAddFaq(faq);
			System.out.println(id);
			if (id.intValue() > 0) {
				System.out.println("in id loop");
				List<Faq> ls = dao.doLoadFaq();
				request.getSession(false).setAttribute("faqs", ls);
			
			response.sendRedirect(request.getContextPath()+ "/webcontent/info/ManageFaq.jsp");

			}

		}
		

		if (actionCode.equals("doUpdateFaq")) {
			System.out.println("hello");
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			java.util.List<Faq> faqs = dao.doUpdateFaq(id);

			request.getSession(false).setAttribute("faqs", faqs);
			if (!faqs.isEmpty()) {
				response.sendRedirect(request.getContextPath()
						+ "/webcontent/info/ManageFaq.jsp");
			}
		}
		
		
	
	}
}
