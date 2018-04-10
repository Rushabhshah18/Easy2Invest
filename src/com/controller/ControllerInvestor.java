package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Dao;
import com.mail.SendProposalMail;
import com.mail.SendProposalMailToAdmin;
import com.mail.sendMail;
import com.model.entreprenure;
import com.model.investor;

public class ControllerInvestor extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		Dao dao = new Dao();
		PrintWriter out = response.getWriter();
		out.println("gotopost");
		String actionCode = request.getParameter("actionCode");
		out.println("outofif");
		/* String actionCode="showInvestor"; */
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
					String AdminMail = "rushabshah130@gmail.com";
					SendProposalMailToAdmin objects = new SendProposalMailToAdmin();
					objects.transport("slashinvester@gmail.com", "priyank@9377", AdminMail, CurrentSessionEmail,
							ProposalSendingEmail, Link);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/showInvestor.jsp?value=done");
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
					String AdminMail = "rushabshah130@gmail.com";
					SendProposalMailToAdmin objects = new SendProposalMailToAdmin();
					objects.transport("slashinvester@gmail.com", "priyank@9377", AdminMail, CurrentSessionEmail,
							ProposalSendingEmail, Link);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/showInvestor.jsp?value=done");

					response.sendRedirect(request.getContextPath() + "/webcontent/info/proposalView.jsp?value=done");
				} else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
				}

			}
		}
		if (actionCode.equals("showInvestor")) {
			List<investor> list_investor = dao.doLoadInvestor();
			System.out.println("intoif");
			if (!list_investor.isEmpty()) {
				request.getSession(false).setAttribute("list_investor", list_investor);
				response.sendRedirect(request.getContextPath() + "/webcontent/info/showInvestor.jsp");
			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}
		}
		if (actionCode.equals("doUpdateInvestorUser")) {
			int id = Integer.parseInt(request.getParameter("id"));
			if (id > 0) {
				java.util.List<investor> investor = dao.doUpdateInvestor(id);
				if (!investor.isEmpty()) {
					request.getSession(false).setAttribute("investor", investor);
					response.sendRedirect(request.getContextPath() + "/webcontent/info/editInvestor.jsp");
				} else {
					// response.sendRedirect(request.getContextPath() +
					// "/webcontent/info/Errors500.jsp");
					System.out.println("Error");
				}
			}

		}
		if (actionCode.equals("doDeleteInvestor")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			investor investor = new investor();
			investor.setId(id);
			String status = dao.doDeleteInvestor(investor);
			if (status.equals("success")) {
				java.util.List<investor> investors = dao.doLoadInvestor();

				request.getSession(false).setAttribute("investor", investors);

				response.sendRedirect(request.getContextPath() + "/Invest?actionCode=showInvestor");
			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		System.out.println("connected");
		Dao dao = new Dao();
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		System.out.println(actionCode);
		if (actionCode.equals("addInvestor")) {
			out.println("ininvestor");
			Integer id = Integer.valueOf(0);
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			/* String username=request.getParameter("username"); */
			String password = request.getParameter("password");
			String password_again = request.getParameter("password_again");
			String date = request.getParameter("date");
			String month = request.getParameter("month");
			String year = request.getParameter("year");
			String birthdate = date + "/" + month + "/" + year;
			System.out.println(birthdate);
			String gender = request.getParameter("gender");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("city");
			String address_personal = request.getParameter("personaladdress");
			String address_optional = request.getParameter("firmaddress");
			investor investor = new investor();
			investor.setEmail(email);
			String status = dao.doCheckInvestorAvailability(investor);
			if (status.contains("success")) {
				request.getSession(false).setAttribute("errorInvestor", "User Already Exists");
			} else {
				if (password.contains(password_again)) {
					investor.setfirstname(firstname);
					investor.setLastname(lastname);
					investor.setPassword(password_again);
					investor.setBirthdate(birthdate);
					investor.setGender(gender);
					investor.setZipcode(zipcode);
					investor.setAddress(address);
					investor.setAddress_personal(address_personal);
					investor.setAddress_optional(address_optional);
					id = dao.doAddStatement(investor);
					request.getSession(false).setAttribute("errorInvestor", "Success");
				} else {
					request.getSession(false).setAttribute("errorInvestor", "Failed");
					System.out.println("Error");
				}
			}
			System.out.print(id);
			if (id.intValue() > 0) {
				List<entreprenure> ls = dao.doLoadUser();
				request.getSession(false).setAttribute("ls", ls);
				response.sendRedirect(request.getContextPath() + "/webcontent/info/addInvestor.jsp");

			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/addInvestor.jsp");
			}

		}
		if (actionCode.equals("doUpdateUser")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			/* String username=request.getParameter("username"); */
			System.out.println("in do update Investor");
			String password = request.getParameter("password");
			String password_again = request.getParameter("password_again");
			String date = request.getParameter("dd");
			String month = request.getParameter("mm");
			String year = request.getParameter("yyyy");
			String birthdate = date + "/" + month + "/" + year;
			System.out.println(email);
			String gender = request.getParameter("gender");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("city");
			String address_personal = request.getParameter("personalAddress");
			String address_optional = request.getParameter("firmaddress");
			investor investor = new investor();
			investor.setId(id);
			investor.setfirstname(firstname);
			investor.setLastname(lastname);
			investor.setEmail(email);
			investor.setPassword(password_again);
			investor.setBirthdate(birthdate);
			investor.setGender(gender);
			investor.setZipcode(zipcode);
			investor.setAddress(address_personal);
			String status = dao.doModifyInvestor(investor);
			out.println(status);
			if (status.equals("success")) {
				java.util.List<investor> investors = dao.doLoadInvestor();
				List<investor> permenant_list = dao.doCollectData(investor);
				request.getSession(false).setAttribute("permenant_list", permenant_list);
				request.getSession(false).setAttribute("investor", investors);

				response.sendRedirect(request.getContextPath() + "/Invest?actionCode=showInvestor");
			} else {
				/*
				 * response.sendRedirect(request.getContextPath() +
				 * "/webcontent/info/Errors500.jsp");
				 */
				System.out.println("Error");
			}
		}
		if (actionCode.equals("forget_password")) {

			HttpSession userSession = null;
			String email = request.getParameter("email");
			String differentUser = request.getParameter("user");
			System.out.println(email + differentUser);
			if (!email.isEmpty()) {
				if (differentUser.equals("Entreprenure")) {
					entreprenure entereprenure = new entreprenure();
					entereprenure.setEmail(email);

					String status = null;
					status = dao.doCheckUser(entereprenure);
					String[] userDetails = status.split(",");
					List<entreprenure> Entreprenure_idea = dao.verifyEmail(email);
					for (int i = 0; i < userDetails.length; i++) {
						System.out.println(userDetails[i] + i);
					}

					if (!Entreprenure_idea.isEmpty()) {
						Iterator it = Entreprenure_idea.iterator();
						userSession = request.getSession();
						userSession.setAttribute("email", email);
						userSession.setAttribute("differentUser", differentUser);
						userSession.setAttribute("Entreprenure_idea", Entreprenure_idea);
						response.sendRedirect(request.getContextPath() + "/webcontent/info/newPasswordInvestor.jsp");

					} else {

						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
								"/webcontent/info/login.jsp");
						dispatcher.forward(request, response);

					}
				}
				if (differentUser.equals("Investor")) {
					investor investor = new investor();
					investor.setEmail(email);
					String status = null;
					List<investor> invest = dao.doCheckInvestor(investor);
					status = dao.doCheckInvestorAvailability(investor);
					// String[] userDetails = status.split(",");

					System.out.println(status + invest.isEmpty());
					if (!invest.isEmpty()) {
						Iterator it = invest.iterator();
						userSession = request.getSession();
						userSession.setAttribute("email", email);
						userSession.setAttribute("differentUser", differentUser);
						userSession.setAttribute("invest", invest);
						response.sendRedirect(request.getContextPath() + "/webcontent/info/newPasswordInvestor.jsp");

					} else {

						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
								"/webcontent/info/login.jsp");
						dispatcher.forward(request, response);

					}

				}

			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}
		}
		if (actionCode.equals("newPassword")) {
			HttpSession userSession = null;
			String email = request.getParameter("userEmail");
			String differentUser = request.getParameter("userType");

			String password = request.getParameter("password");
			String password_again = request.getParameter("password_again");
			System.out.println(email + " " + differentUser + " " + " " + password_again);
			entreprenure entreprenure = new entreprenure();
			userSession = request.getSession();
			List<entreprenure> list_entreprenure = (List<entreprenure>) (userSession.getAttribute("Entreprenure_idea"));
			if (!list_entreprenure.isEmpty() && list_entreprenure != null) {
				Iterator<entreprenure> it = list_entreprenure.iterator();
				entreprenure entreprenures = new entreprenure();
				System.out.println("full");

				while (it.hasNext()) {
					entreprenures = (entreprenure) it.next();
					int id = entreprenures.getId();
					entreprenure.setId(id);
					entreprenure.setfirstname(entreprenures.getfirstname());
					entreprenure.setLastname(entreprenures.getLastname());
					entreprenure.setEmail(entreprenures.getEmail());
					entreprenure.setGender(entreprenures.getGender());
					entreprenure.setBirthdate(entreprenures.getBirthdate());
					entreprenure.setAddress(entreprenures.getAddress());

					entreprenure.setZipcode(entreprenures.getZipcode());
					String status = null;
					if (password.equals(password_again)) {
						entreprenure.setPassword(password_again);
						status = dao.doUpdateEntreprenure(entreprenure);
						response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");
					} else {
						response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
					}

				}

			} else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
						"/webcontent/info/Errors500.jsp");
				dispatcher.forward(request, response);
			}
			if (differentUser.equals("Investor")) {
				investor investor = new investor();
				userSession = request.getSession();
				List<investor> list_investor = (List<investor>) (userSession.getAttribute("invest"));
				if (!list_investor.isEmpty() && list_investor != null) {
					Iterator<investor> it = list_investor.iterator();
					investor investors = new investor();
					System.out.println("full");

					while (it.hasNext()) {
						investors = (investor) it.next();
						int id = investors.getId();
						investor.setId(id);
						investor.setfirstname(investors.getfirstname());
						investor.setLastname(investors.getLastname());
						investor.setEmail(investors.getEmail());
						investor.setGender(investors.getGender());
						investor.setBirthdate(investors.getBirthdate());
						investor.setAddress(investors.getAddress());
						investor.setAddress_personal(investors.getAddress_personal());
						investor.setZipcode(investors.getZipcode());
						String status = null;
						if (password.equals(password_again)) {
							investor.setPassword(password_again);
							status = dao.doModifyInvestor(investor);
							response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");
						} else {
							response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
						}

					}

				} else {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
							"/webcontent/info/Errors500.jsp");
					dispatcher.forward(request, response);
				}

			}
		}
		if (actionCode.equals("doGiveSpecificUserOnly")) {
			String city = (String) request.getSession().getAttribute("cities");
			System.out.println(city);
			List<investor> list_investor = dao.doLoadInvestorNearMe(city);
			out.println("intoif Rushabh Shah");
			if (!list_investor.isEmpty()) {
				request.getSession(false).setAttribute("listOfSPecificUsersNearMe", list_investor);
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Nearme.jsp");
				System.out.println("Sahi hai re...");
				out.println("Sahi hai re...");
			} else {
				// response.sendRedirect(request.getContextPath() +
				// "/webcontent/info/Errors500.jsp");
				System.out.println("Furr na thyu...");
				out.println("Furr na thyu...");
			}
		}
	}
}
