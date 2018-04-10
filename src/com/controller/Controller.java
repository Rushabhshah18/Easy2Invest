package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.hibernate.Session;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Dao;
import com.mail.SendProposalMail;
import com.mail.sendMail;
import com.model.Faq;
import com.model.entreprenure;
import com.model.investor;
import com.model.proposal;
import com.model.idea;
import com.model.registerUser;

public class Controller extends HttpServlet {
	/**
	 * 
	 */

	Dao dao = new Dao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);

		PrintWriter out = response.getWriter();
		out.println("gotopost in doget");
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		if (actionCode.equals("doGiveSpecificUserOnly")) {
			String city = (String) request.getSession().getAttribute("cities");
			System.out.println(city);
			List<entreprenure> list_investor = dao.doLoadEntreprenureNearMe(city);
			out.println("intoif Rushabh Shah");
			if (!list_investor.isEmpty()) {
				request.getSession(false).setAttribute("listOfSPecificUsersNearMe", list_investor);
				response.sendRedirect(request.getContextPath() + "/webcontent/info/NearmeEntreprenure.jsp");
				System.out.println("Sahi hai re...");
				out.println("Sahi hai re...");
			} else {
				// response.sendRedirect(request.getContextPath() +
				// "/webcontent/info/Errors500.jsp");
				System.out.println("Furr na thyu...");
				out.println("Furr na thyu...");
			}
		}
		if (actionCode.equals("doSendMail")) {

			Integer id = Integer.valueOf(0);
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

					response.sendRedirect(request.getContextPath() + "/webcontent/info/show.jsp?value=done");
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
					System.out.println(status);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/proposalView.jsp?value=done");
				} else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
				}

			}
		}
		if (actionCode.equals("showEntreprenure")) {
			List<entreprenure> list_entreprenure = dao.doLoadUser();
			request.getSession(false).setAttribute("list_entreprenure", list_entreprenure);
			response.sendRedirect(request.getContextPath() + "/webcontent/info/show.jsp");
		}
		if (actionCode.equals("doUpdateUser")) {
			int id = Integer.parseInt(request.getParameter("id"));
			if (id > 0) {
				List<entreprenure> entreprenure = dao.doUpdateUser(id);
				request.getSession(false).setAttribute("entreprenure", entreprenure);
				response.sendRedirect(request.getContextPath() + "/webcontent/info/editEntreprenure.jsp");

			}

		}
		if (actionCode.equals("doLogOut")) {

			HttpSession session = request.getSession(false);
			if (session != null) {
				session.removeAttribute("userName");
				session.removeAttribute("permenant_Idealist");
				session.removeAttribute("permenant_Permanantlist");
				session.invalidate();
				response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");
			}
		}
		if (actionCode.equals("doLogOutHome")) {
			HttpSession session = request.getSession(false);
			session.removeAttribute("userName");
			request.getSession(false).invalidate();
			response.sendRedirect(request.getContextPath() + "/webcontent/portal/index.jsp");

		}
		if (actionCode.equals("doLoadFaqs")) {

			java.util.List<Faq> faqs = dao.doLoadFaq();
			System.out.println("in faq loop");
			request.getSession(false).setAttribute("faqs", faqs);
			if (!faqs.isEmpty()) {
				System.out.println("in faq loop");
				response.sendRedirect(request.getContextPath() + "/webcontent/info/ManageFaq.jsp");

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
		HttpSession session = request.getSession(false);
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		System.out.println(actionCode);
		HttpSession userSession = null;

		if (actionCode.equals("addEntreprenure")) {
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
			System.out.println(gender);
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("city");
			String pathway = request.getParameter("pathway");
			System.out.println(pathway);
			int otp = 0;
			entreprenure entreprenure = new entreprenure();
			entreprenure.setEmail(email);
			String status = dao.doCheckUser(entreprenure);
			if (status.contains("success")) {
				request.getSession(false).setAttribute("errors", "User Already Exists");
			}else{
				if (password.contains(password_again)) {
					entreprenure.setfirstname(firstname);
					entreprenure.setLastname(lastname);
					entreprenure.setPassword(password_again);
					entreprenure.setBirthdate(birthdate);
					entreprenure.setGender(gender);
					entreprenure.setZipcode(zipcode);
					entreprenure.setAddress(address);
					request.getSession(false).setAttribute("errors", "Success");
					id = dao.doAddStatement(entreprenure);
				} else {
					request.getSession(false).setAttribute("errors", "Failed");

				}
			}
			System.out.print(id);
			if (id.intValue() > 0) {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/addEntrepreneur.jsp");

			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/addEntrepreneur.jsp");
			}
		}
		if (actionCode.equals("doLogin")) {
			System.out.println("in login Module");

			String userName = request.getParameter("username");
			String password = request.getParameter("password");
			String differentUser = request.getParameter("user");
			String email = request.getParameter("username");
			idea idea = new idea();
			proposal proposal = new proposal();
			proposal.setEmail(email);
			idea.setEmail(email);// ahiya email set thase
			System.out.println(userName + email + differentUser);
			List<idea> permenant_Idealist = dao.doLoadSpecificIdea(idea);// ahiya
																			// idea
																			// nu
																			// email
																			// vise
																			// refined
																			// list
																			// avse
			List<proposal> permenant_Proposallist = dao.doLoadSpecificProposal(proposal);
			if (differentUser.equals("Entreprenure")) {
				entreprenure entereprenure = new entreprenure();

				entereprenure.setEmail(userName);
				entereprenure.setPassword(password);
				if (permenant_Proposallist.isEmpty()) {
					System.out.println("Empty");
				}
				session.setAttribute(userName, "userName");
				entereprenure.setPassword(password);
				String status = null;
				status = dao.dologin(entereprenure);
				List<entreprenure> permenant_list = dao.doCollectData(entereprenure);

				System.out.println(status);
				if (status.contains("success")) {
					String[] userDetails = status.split(",");
					userName = userDetails[3];
					userSession = request.getSession();
					userSession.setAttribute("userName", userName);
					userSession.setAttribute("password", password);
					userSession.setAttribute("email", email);
					userSession.setAttribute("differentUser", differentUser);
					if (!permenant_list.isEmpty()) {
						Iterator it = permenant_list.iterator();
						entreprenure entreprenures = null;
						entreprenures = (entreprenure) it.next();
						String cities = entreprenures.getAddress();
						System.out.println(cities);
						request.getSession(false).setAttribute("cities", cities);
						userSession.setAttribute("permenant_list", permenant_list);
						userSession.setAttribute("permenant_Idealist", permenant_Idealist); // ahiya
																							// set
																							// thase
																							// e
																							// session
																							// ma
																							// list
						userSession.setAttribute("permenant_Proposallist", permenant_Proposallist);
						request.getSession(false).setAttribute("errors", "Go");
						request.getSession(false).setAttribute("errorInvestor", "Go");
						request.getSession(false).setAttribute("errorProposal", "Go");
						request.getSession(false).setAttribute("errorFaq", "Go");
						System.out.println("Done");
					} else {
						System.out.println("Error");
					}
					response.sendRedirect(request.getContextPath() + "/webcontent/info/index.jsp");

				} else {
					request.getSession(false).setAttribute("error", "Your credentials didn't match our records.");

					response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");

				}
			}
			if (differentUser.equals("Investor")) {
				investor investor = new investor();
				investor.setEmail(userName);
				investor.setPassword(password);

				session.setAttribute(userName, "userName");
				investor.setPassword(password);
				String status = null;
				status = dao.dologin(investor);
				List<investor> permenant_list = dao.doCollectData(investor);
				System.out.println(status);
				if (!permenant_list.isEmpty() && permenant_list != null) {
					Iterator it = permenant_list.iterator();
					investor investors = null;
					investors = (investor) it.next();
					String cities = investors.getAddress();
					System.out.println(cities);
					request.getSession(false).setAttribute("cities", cities);

				}
				if (status.contains("success")) {
					String[] userDetails = status.split(",");
					userName = userDetails[3];
					userSession = request.getSession();
					userSession.setAttribute("userName", userName);
					userSession.setAttribute("password", password);
					userSession.setAttribute("email", email);
					userSession.setAttribute("differentUser", differentUser);
					request.getSession(false).setAttribute("errors", "Go");
					request.getSession(false).setAttribute("errorInvestor", "Go");
					request.getSession(false).setAttribute("errorProposal", "Go");
					request.getSession(false).setAttribute("errorFaq", "Go");
					if (!permenant_list.isEmpty()) {
						userSession.setAttribute("permenant_list", permenant_list);
						userSession.setAttribute("permenant_Idealist", permenant_Idealist);
						userSession.setAttribute("permenant_Proposallist", permenant_Proposallist);
						System.out.println("Done");
					} else {
						System.out.println("Error");
					}
					response.sendRedirect(request.getContextPath() + "/webcontent/info/index.jsp");

				} else {
					request.getSession(false).setAttribute("error", "Your credentials didn't match our records.");
					response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");
					/*
					 * RequestDispatcher dispatcher =
					 * getServletContext().getRequestDispatcher(
					 * "/webcontent/info/login.jsp");
					 * dispatcher.forward(request, response);
					 */

				}

			}
			if (differentUser.equals("Admin")) {
				if (userName.contains("rushabhshah130@gmail.com") && password.contains("123456")) {
					userName = "KingRush";
					
					userSession = request.getSession();
					userSession.setAttribute("userName", userName);
					userSession.setAttribute("password", password);
					userSession.setAttribute("email", email);
					userSession.setAttribute("differentUser", differentUser);
					request.getSession(false).setAttribute("errors", "Go");
					request.getSession(false).setAttribute("errorInvestor", "Go");
					request.getSession(false).setAttribute("errorProposal", "Go");
					request.getSession(false).setAttribute("errorFaq", "Go");
					
					response.sendRedirect(request.getContextPath() + "/webcontent/info/index.jsp");
				} else {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
							"/webcontent/info/login.jsp");
					dispatcher.forward(request, response);

				}
			}
		}

		if (actionCode.equals("doUpdateEntreprenure")) {

			Integer id = Integer.parseInt(request.getParameter("id"));
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			/* String username=request.getParameter("username"); */
			out.println("in do update Entreprenure");
			String password = request.getParameter("password");
			String password_again = request.getParameter("password_again");
			String date = request.getParameter("date");
			String month = request.getParameter("month");
			String year = request.getParameter("year");
			String birthdate = date + "/" + month + "/" + year;
			System.out.println(email);
			String gender = request.getParameter("gender");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("city");
			String address_personal = request.getParameter("personalAddress");
			String address_optional = request.getParameter("firmaddress");
			entreprenure entreprenure = new entreprenure();
			entreprenure.setId(id);
			entreprenure.setfirstname(firstname);
			entreprenure.setLastname(lastname);
			entreprenure.setEmail(email);
			entreprenure.setPassword(password_again);
			entreprenure.setBirthdate(birthdate);
			entreprenure.setGender(gender);
			entreprenure.setZipcode(zipcode);
			entreprenure.setAddress(address_personal);

			String status = dao.doUpdateEntreprenure(entreprenure);
			out.println(status);
			if (status.equals("success")) {
				java.util.List<entreprenure> entreprenures = dao.doLoadUser();
				List<entreprenure> permenant_list = dao.doCollectData(entreprenure);
				request.getSession(false).setAttribute("permenant_list", permenant_list);
				request.getSession(false).setAttribute("entreprenures", entreprenures);

				response.sendRedirect(request.getContextPath() + "/Store?actionCode=showEntreprenure");
			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}
		}
		if (actionCode.equals("doDeleteUser")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			entreprenure entreprenure = new entreprenure();
			entreprenure.setId(id);
			String status = dao.doDeleteEntreprenure(entreprenure);
			if (status.equals("success")) {
				java.util.List<entreprenure> entreprenures = dao.doLoadUser();

				request.getSession(false).setAttribute("entreprenure", entreprenures);

				response.sendRedirect(request.getContextPath() + "/Store?actionCode=showEntreprenure");
			}

		}
		if (actionCode.equals("forget_password")) {
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
			String email = request.getParameter("email");
			String status = null;
			HttpSession sessions = null;
			entreprenure entreprenure = new entreprenure();
			Random ran = new Random();
			int otp = 0;
			if (otp == 0) {
				otp = ran.nextInt(8994) + 1005;
				System.out.println(otp);
			}
			if (email != null) {
				List<entreprenure> getEmail = dao.verifyEmail(email);
				if (getEmail != null) {
					Iterator<entreprenure> li = getEmail.iterator();
					while (li.hasNext()) {
						entreprenure = (entreprenure) li.next();
						int id1 = entreprenure.getId();
						entreprenure.setId(id1);
						/* entreprenure.setOtp(otp); */
						status = dao.addOtp(entreprenure);

						String Email = entreprenure.getEmail();
						if (status.equals("success")) {
							entreprenure.setEmail(email);
							/* entreprenure.setOtp(otp); */
							/* String Status = dao.doSetOtp(entreprenure); */
							sendMail object = new sendMail();
							object.transport("slashinvester@gmail.com", "priyank@9377", email, otp);
							System.out.println(status);
							response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");

							request.getSession(false).setAttribute("Email", getEmail);
							response.sendRedirect(request.getContextPath() + "/wp-content/otp.jsp?id="
									+ entreprenure.getId());
						} else {
							response.sendRedirect(request.getContextPath() + "/wp-content/recoverpw.jsp");
						}
					}
				}
			}

		}
		if (actionCode.equals("signUp")) {
			Integer id = Integer.valueOf(0);
			String fullname = request.getParameter("full_name");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String password = request.getParameter("password");
			String confirm_password = request.getParameter("confirm_password");
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			String status = request.getParameter("agree");
			String date = request.getParameter("date");
			String month = request.getParameter("month");
			String year = request.getParameter("year");
			String birthdate = date + "/" + month + "/" + year;
			String userType = request.getParameter("user");
			out.println(id + fullname + address + city + password + email + gender + status + birthdate);
			registerUser user = new registerUser();
			if (password.contains(confirm_password) && status.equals("agree")) {
				user.setfullname(fullname);
				user.setAddress(address);
				user.setEmail(email);
				user.setPassword(confirm_password);
				user.setBirthdate(birthdate);
				user.setGender(gender);
				user.setCity(city);
				user.setStatus(status);
				user.setuserType(userType);
				id = dao.doRegisterUser(user);
			} else {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
			}

			System.out.print(id);
			response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");
		}
		if (actionCode.equals("doUnlockPanel")) {

			String email = (String) session.getAttribute("email");
			String password = request.getParameter("password");
			String differentUser = (String) session.getAttribute("differentUser");
			String userName = (String) session.getAttribute("userName");
			System.out.println(email + userName);
			if (differentUser.equals("Entreprenure")) {
				entreprenure entereprenure = new entreprenure();
				entereprenure.setEmail(email);
				entereprenure.setPassword(password);

				session.setAttribute(userName, "userName");
				entereprenure.setPassword(password);
				String status = null;
				status = dao.dologin(entereprenure);
				String[] userDetails = status.split(",");
				userName = userDetails[3];
				System.out.println(status);
				if (status.contains("success")) {

					userSession = request.getSession();
					userSession.setAttribute("userName", userName);
					userSession.setAttribute("password", password);
					userSession.setAttribute("email", email);
					userSession.setAttribute("differentUser", differentUser);

					response.sendRedirect(request.getContextPath() + "/webcontent/info/index.jsp");

				} else {

					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
							"/webcontent/info/login.jsp");
					dispatcher.forward(request, response);

				}
			}
			if (differentUser.equals("Investor")) {
				investor investor = new investor();
				if (!email.isEmpty()) {
					investor.setEmail(email);
					investor.setPassword(password);

					session.setAttribute(userName, "userName");
					investor.setPassword(password);
					String status = null;
					status = dao.dologin(investor);
					String[] userDetails = status.split(",");
					userName = userDetails[3];
					System.out.println(status);
					if (status.contains("success")) {

						userSession = request.getSession();
						userSession.setAttribute("userName", userName);
						userSession.setAttribute("password", password);
						userSession.setAttribute("email", email);
						userSession.setAttribute("differentUser", differentUser);

						response.sendRedirect(request.getContextPath() + "/webcontent/info/index.jsp");

					} else {

						/*
						 * RequestDispatcher dispatcher =
						 * getServletContext().getRequestDispatcher(
						 * "/webcontent/info/login.jsp");
						 * dispatcher.forward(request, response);
						 */response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
					}

				}

				else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
				}

			} else if (actionCode.equals(null)) {
				response.sendRedirect(request.getContextPath() + "/webcontent/info/Error404.jsp");
			}
		}
	}
}
