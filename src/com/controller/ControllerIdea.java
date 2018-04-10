package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Dao;
import com.mail.SendProposalMail;
import com.mail.SendProposalMailToAdmin;
import com.model.entreprenure;
import com.model.idea;
import com.model.investor;
import com.model.proposal;

public class ControllerIdea extends HttpServlet {
	Dao dao = new Dao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.println("gotopost");
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		if (actionCode.equals("showIdea")) {
			List<idea> list_idea = dao.doLoadIdea();
			request.getSession(false).setAttribute("list_idea", list_idea);
			response.sendRedirect(request.getContextPath() + "/webcontent/info/NewIdea.jsp");
		}
		if (actionCode.equals("doUpdateIdea")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			if (id > 0) {
				List<idea> List_updateidea = dao.doUpdateUserIdea(id);
				request.getSession(false).setAttribute("List_updateidea", List_updateidea);
				response.sendRedirect(request.getContextPath() + "/webcontent/info/editIdea.jsp");

			}

		}if (actionCode.equals("doSendMail")) {

			/*
			 * String email=request.getParameter("email"); Random ran=new
			 * Random(); int otp = 0; if(otp==0){ otp=ran.nextInt(8994)+1005;
			 * System.out.println(otp); } entreprenure entreprenure=new
			 * entreprenure(); entreprenure.setEmail(email);
			 * entreprenure.setOtp(otp); String
			 * status=dao.doSetOtp(entreprenure); sendMail object = new
			 * sendMail(); object.transport("slashinvester@gmail.com",
			 * "priyank@9377", email, otp); System.out.println(status);
			 * response.sendRedirect(request.getContextPath() +
			 * "/webcontent/info/login.jsp");
			 */Integer id = Integer.valueOf(0);
			String ProposalSendingEmail = request.getParameter("email");
			String Link = "http://192.168.1.37:8080/Entreprenure/webcontent/info/index.jsp";
			String status = null;
			HttpSession sessions = null;
			String differentUser = request.getParameter("differentUser");
			System.out.println(differentUser);
			String CurrentSessionEmail = request.getParameter("currentSessionEmail");
			if (differentUser.equals("Entreprenure")) {
				entreprenure entreprenure = new entreprenure();
				if (ProposalSendingEmail != null) {

					/* entreprenure.setOtp(otp); */
					/* String Status = dao.doSetOtp(entreprenure); */
					SendProposalMail object = new SendProposalMail();

					object.transport("slashinvester@gmail.com", "priyank@9377", ProposalSendingEmail,
							CurrentSessionEmail, Link);
					String AdminMail="rushabshah130@gmail.com";
					SendProposalMailToAdmin objects = new SendProposalMailToAdmin();	
					objects.transport("slashinvester@gmail.com", "priyank@9377", AdminMail,
							CurrentSessionEmail,ProposalSendingEmail, Link);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/NewIdea.jsp?value=done");
				} else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
				}

			}
			if (differentUser.equals("Investor")) {
				investor investor = new investor();
				if (ProposalSendingEmail != null) {

					SendProposalMail object = new SendProposalMail();

					object.transport("slashinvester@gmail.com", "priyank@9377", ProposalSendingEmail,
							CurrentSessionEmail, Link);
					String AdminMail="rushabshah130@gmail.com";
					SendProposalMailToAdmin objects = new SendProposalMailToAdmin();	
					objects.transport("slashinvester@gmail.com", "priyank@9377", AdminMail,
							CurrentSessionEmail,ProposalSendingEmail, Link);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/NewIdea.jsp?value=done");

					
				} else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
				}

			}
		}
		if (actionCode.equals("doDeleteIdea")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			idea idea=new idea();
			idea.setId(id);
			String status = dao.doDeleteIdea(idea);
			if (status.equals("success")) {
				java.util.List<idea> ideas = dao.doLoadIdea();

				request.getSession(false).setAttribute("ideas", ideas);

				response.sendRedirect(request.getContextPath() + "/Idea?actionCode=showIdea");
			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		// TODO Auto-generated method stub
		
		
		System.out.println("connected");
		Dao dao = new Dao();
		
		String actionCode = request.getParameter("actionCode");
		System.out.println(actionCode);

		if (actionCode.equals("doAddIdea")) {
			
			String Entreprenure = request.getParameter("entreprenureName");
			String abstractIdea = request.getParameter("abstractIdea");
			String email = request.getParameter("email");
			/* String username=request.getParameter("username"); */
			String city = request.getParameter("city");
			int amount = Integer.parseInt(request.getParameter("amount"));
			String idea = request.getParameter("idea");
			idea Idea = new idea();

			Idea.setEntreprenureName(Entreprenure);
			Idea.setAbstractIdea(abstractIdea);
			Idea.setIdea(idea);
			Idea.setEmail(email);
			Idea.setCity(city);
			Idea.setAmount(amount);
			String status = dao.doAddIdea(Idea);
			System.out.println("In do add idea");
			if (status.equals("Success")) {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/idea.jsp");	
			}
			
		}
	}
}
