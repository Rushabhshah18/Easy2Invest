package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.*;  

import com.dao.Dao;
import com.mail.SendProposalMail;
import com.mail.SendProposalMailToAdmin;
import com.mail.sendMail;
import com.model.entreprenure;
import com.model.investor;
import com.model.proposal;

public class ControllerProposal extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Dao dao = new Dao();
		doPost(request, response);
		PrintWriter out = response.getWriter();
		out.println("gotopost");
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		if (actionCode.equals("showIdea")) {
			List<proposal> list_proposal = dao.doLoadProposal();
			request.getSession(false).setAttribute("list_proposal", list_proposal);
			response.sendRedirect(request.getContextPath() + "/webcontent/info/proposalView.jsp");
		}
		if (actionCode.equals("doUpdateIdea")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			if (id > 0) {
				List<proposal> proposals = dao.doUpdateIdea(id);
				request.getSession(false).setAttribute("proposal", proposals);
				response.sendRedirect(request.getContextPath() + "/webcontent/info/editProposal.jsp");

			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}

		}
		if (actionCode.equals("doSendMail")) {

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
			 */
			InetAddress ip=InetAddress.getLocalHost();
			String ProposalSendingEmail = request.getParameter("email");
			System.out.println("IP Address: "+ip.getHostAddress());
			
			String Link = "http://"+ip.getHostAddress()+":8080/Entreprenure/webcontent/info/index.jsp";
			System.out.println(Link+"IP Address: "+ip.getHostAddress());
			String status = null;
			
			String differentUser = request.getParameter("differentUser");
			System.out.println(differentUser);
			String CurrentSessionEmail = request.getParameter("currentSessionEmail");
			if (differentUser.equals("Entreprenure")) {
				
				if (ProposalSendingEmail != null) {

					
					SendProposalMail object = new SendProposalMail();
					
					object.transport("slashinvester@gmail.com", "priyank@9377", ProposalSendingEmail,
							CurrentSessionEmail, Link);
					String AdminMail="rushabshah130@gmail.com";
					SendProposalMailToAdmin objects = new SendProposalMailToAdmin();	
					objects.transport("slashinvester@gmail.com", "priyank@9377 ", AdminMail,
							CurrentSessionEmail,ProposalSendingEmail, Link);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/proposalView.jsp?value=done");
				} else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
				}

			}
			if (differentUser.equals("Investor")) {
				investor investor = new investor();
				if (ProposalSendingEmail != null) {

					/* entreprenure.setOtp(otp); */

					/* entreprenure.setOtp(otp); */
					/* String Status = dao.doSetOtp(entreprenure); */
					SendProposalMail object = new SendProposalMail();
					
					object.transport("slashinvester@gmail.com", "priyank@9377", ProposalSendingEmail,
							CurrentSessionEmail, Link);
					String AdminMail="rushabshah130@gmail.com";
					SendProposalMailToAdmin objects = new SendProposalMailToAdmin();	
					objects.transport("slashinvester@gmail.com", "priyank@9377 ", AdminMail,
							CurrentSessionEmail,ProposalSendingEmail, Link);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/proposalView.jsp?value=done");
				} else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
				}

			}
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		System.out.println("connected to proposal");
		Dao dao = new Dao();
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		System.out.println(actionCode);
		if (actionCode.equals("doAddProposal")) {

			Integer id = Integer.valueOf(0);
			String sender = request.getParameter("sendername");
			String receiver = request.getParameter("receivername");
			Integer amount = Integer.parseInt(request.getParameter("amount"));
			String proposalIdea = request.getParameter("proposal");
			String city = request.getParameter("city");
			String email = request.getParameter("email");
			proposal proposal = new proposal();
			proposal.setSender(sender);
			proposal.setReceiver(receiver);
			proposal.setEmail(email);
			proposal.setAmount(amount);
			proposal.setCity(city);
			proposal.setProposalIdea(proposalIdea);
			System.out.println(proposal.getId() + proposal.getSender() + proposal.getReceiver());
			if(id.equals(null) || sender.isEmpty() || receiver.isEmpty() || proposalIdea.isEmpty() || amount.equals(null)){
				System.out.print("Failed adding proposal ");
			}else{
				if(!(proposal.equals(null))){
				id = dao.doAddProposal(proposal);
				System.out.print("added proposal " + id);
				}
			}
			 
			if (id.intValue() > 0) {
				
				System.out.println("In id loop proposal");
				request.getSession(false).setAttribute("errorProposal", "Success");
				response.sendRedirect(request.getContextPath() + "/proposal?actionCode=showIdea");
			} else {
				request.getSession(false).setAttribute("errorProposal", "Failed");
				response.sendRedirect(request.getContextPath() + "/webcontent/info/proposal.jsp");
			}
		} else if (actionCode.equals("doUpdateProposal")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			String sender = request.getParameter("senderName");
			String receiver = request.getParameter("receiverName");
			String email = request.getParameter("email");
			/* String username=request.getParameter("username"); */
			out.println("in do update Entreprenure");
			int amount = Integer.parseInt(request.getParameter("amount"));

			String proposal_idea = request.getParameter("proposal");

			String city = request.getParameter("city");

			proposal proposal = new proposal();
			proposal.setId(id);
			proposal.setSender(sender);
			proposal.setReceiver(receiver);
			proposal.setEmail(email);
			proposal.setAmount(amount);
			proposal.setCity(city);
			proposal.setProposalIdea(proposal_idea);

			String status = dao.doUpdateProposal(proposal);
			out.println(status);
			if (status.equals("success")) {
				java.util.List<entreprenure> entreprenures = dao.doLoadUser();

				request.getSession(false).setAttribute("entreprenures", entreprenures);

				response.sendRedirect(request.getContextPath() + "/proposal?actionCode=showIdea");
			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}
		} else if (actionCode.equals("doDeleteIdea")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			proposal proposal = new proposal();
			proposal.setId(id);
			String status = dao.doDeleteproposal(proposal);
			if (status.equals("success")) {
				java.util.List<investor> entreprenures = dao.doLoadInvestor();

				request.getSession(false).setAttribute("proposal", proposal);

				response.sendRedirect(request.getContextPath() + "/proposal?actionCode=showIdea");
			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}
		}
	}
}
