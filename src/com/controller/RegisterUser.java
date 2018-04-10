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
import com.model.entreprenure;
import com.model.investor;

public class RegisterUser extends HttpServlet {
	Dao dao = new Dao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
		String differentUser = request.getParameter("user");
		/* String username=request.getParameter("username"); */
		System.out.println(differentUser);

		if (actionCode.equals("doRegisterUser")) {

			/* String username=request.getParameter("username"); */
			System.out.println(differentUser);

			if (differentUser.equals("Entreprenure")) {
				Integer id = Integer.valueOf(0);
				String firstname = request.getParameter("firstname");
				String lastname = request.getParameter("lastname");
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String password_again = request.getParameter("confirm_password");
				String date = request.getParameter("date");
				String month = request.getParameter("month");
				String year = request.getParameter("yyyy");
				String birthdate = date + "/" + month + "/" + year;
				String gender = request.getParameter("gender");
				String zipcode = request.getParameter("zipcode");
				String address = request.getParameter("city");
				entreprenure entreprenure = new entreprenure();
				if (password.contains(password_again)) {
					entreprenure.setfirstname(firstname);
					entreprenure.setLastname(lastname);
					entreprenure.setEmail(email);
					entreprenure.setPassword(password_again);
					entreprenure.setBirthdate(birthdate);
					entreprenure.setGender(gender);
					entreprenure.setZipcode(zipcode);
					entreprenure.setAddress(address);

					id = dao.doAddStatement(entreprenure);
					System.out.print(id);
					if (id.intValue() > 0) {
						System.out.println("Id is greater");
						response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");

					}
				}
			}
			if (differentUser.equals("Investor")) {
				out.println("ininvestor");
				Integer id = Integer.valueOf(0);
				String firstname = request.getParameter("firstname");
				String lastname = request.getParameter("lastname");
				String email = request.getParameter("email");
				/* String username=request.getParameter("username"); */
				String password = request.getParameter("password");
				String password_again = request.getParameter("confirm_password");
				String date = request.getParameter("date");
				String month = request.getParameter("month");
				String year = request.getParameter("yyyy");
				String birthdate = date + "/" + month + "/" + year;
				System.out.println(birthdate);
				String gender = request.getParameter("gender");
				String zipcode = request.getParameter("zipcode");
				String address = request.getParameter("city");
				String address_personal = request.getParameter("address");
				String address_optional = request.getParameter("address");

				investor investor = new investor();
				if (password.contains(password_again)) {
					investor.setfirstname(firstname);
					investor.setLastname(lastname);
					investor.setEmail(email);
					investor.setPassword(password_again);
					investor.setBirthdate(birthdate);
					investor.setGender(gender);
					investor.setZipcode(zipcode);
					investor.setAddress(address);
					investor.setAddress_personal(address_personal);
					investor.setAddress_optional(address_optional);

					id = dao.doAddStatement(investor);
					System.out.print(id);
					if (id.intValue() > 0) {
						response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");

					} else {
						response.sendRedirect(request.getContextPath() + "/webcontent/info/Errors500.jsp");
					}
				} else {
					response.sendRedirect(request.getContextPath() + "/webcontent/info/login.jsp");
				}
			}
		}
	}
}
