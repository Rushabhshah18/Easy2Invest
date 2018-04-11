<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!-- Profile page -->
<%@page import="java.util.Iterator"%>
<%@page import="com.model.entreprenure"%>
<%@page import="com.model.investor"%>
<%@page import="com.model.idea"%>
<%@page import="java.util.List"%>
<%
	if (null == session.getAttribute("userName")) {
		String address = "/webcontent/info/login.jsp";
		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(address);
		requestDispatcher.forward(request, response);
	}
	String userName = (String) session.getAttribute("userName");
	String differentUser = (String) session.getAttribute("differentUser");
	System.out.println(userName + differentUser);
%>
<%
	
%>
<%!int id;
	String name;
	String email;
	String firstname;
	String lastname;
	String password;
	String birthdate;
	String gender;
	String zipcode;
	String address;
	String Date;
	String date;
	String month;
	String year;%>





<!DOCTYPE html>
<!-- Template Name: Rapido - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.2 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- start: HEAD -->

<!-- Mirrored from www.cliptheme.com/demo/rapido/pages_user_profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Sep 2016 15:46:26 GMT -->
<head>
<title>User Profile</title>
<!-- start: META -->
<meta charset="utf-8" />
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/frontend/img/Favicon.png" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->
<jsp:include page="headerInclude.jsp"></jsp:include>
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/plugins/weather-icons/css/weather-icons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/plugins/nvd3/nv.d3.min.css">
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon_1.ico">
</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body>
	<!-- start: SLIDING BAR (SB) -->

	<div class="main-wrapper">
		<!-- start: TOPBAR -->
		<header class="topbar navbar navbar-inverse navbar-fixed-top inner">
			<!-- start: TOPBAR CONTAINER -->
			<div class="container">
				<div class="navbar-header">
					<a class="sb-toggle-left hidden-md hidden-lg" href="#main-navbar">
						<i class="fa fa-bars"></i>
					</a>
					<!-- start: LOGO -->
					<%-- <a class="navbar-brand" href="index.html"> <img
						src="<%=request.getContextPath()%>/front/images/avatar-1.jpg"
						alt="Rapido" />
					</a> --%>
					<!-- end: LOGO -->
				</div>
				<div class="topbar-tools">
					<!-- start: TOP NAVIGATION MENU -->
					<ul class="nav navbar-right">
						<!-- start: USER DROPDOWN -->
						<li class="dropdown current-user"><a data-toggle="dropdown"
							data-hover="dropdown" class="dropdown-toggle"
							data-close-others="true" href="#"> <img
								src="<%=request.getContextPath()%>/front/images/avatar-1-small.jpg"
								class="img-circle" alt=""> <span
								class="username hidden-xs"><%=userName%></span> <i
								class="fa fa-caret-down "></i>
						</a>
							<ul class="dropdown-menu dropdown-dark">
								<li><a href="pages_user_profile.html"> My Profile </a></li>
								<li><a href="pages_calendar.html"> My Calendar </a></li>
								<li><a href="pages_messages.html"> My Messages (3) </a></li>
								<li><a href="login_lock_screen.html"> Lock Screen </a></li>
								<li><a href="login_login.html"> Log Out </a></li>
							</ul></li>
						<!-- end: USER DROPDOWN -->
						<li class="right-menu-toggle"><a href="#"
							class="sb-toggle-right"> <i class="fa fa-globe toggle-icon"></i>
								<i class="fa fa-caret-right"></i> <span
								class="notifications-count badge badge-default hide"> 3</span>
						</a></li>
					</ul>
					<!-- end: TOP NAVIGATION MENU -->
				</div>
			</div>
			<!-- end: TOPBAR CONTAINER -->
		</header>
		<!-- end: TOPBAR -->

		<!-- start: MAIN CONTAINER -->
		<div class="main-container inner">
			<!-- start: TOPBAR -->


			<jsp:include page="header.jsp"></jsp:include>


			<!-- end: TOPBAR -->

			<!-- start: PAGESLIDE LEFT -->


			<%
				System.out.print(differentUser);
															if (differentUser.contains("Entreprenure") || differentUser.contains("Investor")) {
			%><jsp:include page="leftsidebar_users.jsp"></jsp:include>
			<%
				} else {
			%><jsp:include page="leftsidebar.jsp"></jsp:include>
			<%
				}
			%>


			<!-- end: PAGESLIDE LEFT -->


			<!-- start: PAGESLIDE RIGHT -->


			<jsp:include page="rightsidebar.jsp"></jsp:include>


			<!-- end: PAGESLIDE RIGHT -->

			<!-- start: BREADCRUMB -->
			<div class="row">
				<div class="col-md-12">
					<ol class="breadcrumb">
						<li><a href="#"> Dashboard </a></li>
						<li class="active">User Profile</li>
					</ol>
				</div>
			</div>
			<!-- end: BREADCRUMB -->
			<!-- start: PAGE CONTENT -->
			<div class="row">
				<div class="col-sm-12">
					<div class="tabbable">
						<ul class="nav nav-tabs tab-padding tab-space-3 tab-blue"
							id="myTab4">
							
							<li><a class="active" data-toggle="tab" href="#panel_edit_account">
									Edit Account </a></li>
							
						</ul>
						<div class="tab-content">
							<div id="panel_overview" class="tab-pane fade">
								<div class="row">
									<div class="col-sm-5 col-md-4">
										<div class="user-left">
											<div class="center">
												<h4>Peter Clark</h4>
												<div class="fileupload fileupload-new"
													data-provides="fileupload">
													<div class="user-image">
														<div class="fileupload-new thumbnail">
															<img
																src="<%=request.getContextPath()%>/front/images/avatar-1-xl.jpg"
																alt="">
														</div>
														<div
															class="fileupload-preview fileupload-exists thumbnail"></div>
														<div class="user-image-buttons">
															<span class="btn btn-azure btn-file btn-sm"><span
																class="fileupload-new"><i class="fa fa-pencil"></i></span><span
																class="fileupload-exists"><i class="fa fa-pencil"></i></span>
																<input type="file"> </span> <a href="#"
																class="btn fileupload-exists btn-red btn-sm"
																data-dismiss="fileupload"> <i class="fa fa-times"></i>
															</a>
														</div>
													</div>
												</div>
												<hr>
												<div class="social-icons block">
													<ul>
														<li data-placement="top" data-original-title="Twitter"
															class="social-twitter tooltips"><a
															href="http://www.twitter.com/" target="_blank">
																Twitter </a></li>
														<li data-placement="top" data-original-title="Facebook"
															class="social-facebook tooltips"><a
															href="http://facebook.com/" target="_blank"> Facebook
														</a></li>
														<li data-placement="top" data-original-title="Google"
															class="social-google tooltips"><a
															href="http://google.com/" target="_blank"> Google+ </a></li>
														<li data-placement="top" data-original-title="LinkedIn"
															class="social-linkedin tooltips"><a
															href="http://linkedin.com/" target="_blank"> LinkedIn
														</a></li>
														<li data-placement="top" data-original-title="Github"
															class="social-github tooltips"><a href="#"
															target="_blank"> Github </a></li>
													</ul>
												</div>
												<hr>
											</div>
											<table class="table table-condensed table-hover">
												<thead>
													<tr>
														<th colspan="3">Contact Information</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>url</td>
														<td><a href="#"> www.example.com </a></td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>email:</td>
														<td><a href="#"> peter@example.com </a></td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>phone:</td>
														<td>(641)-734-4763</td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>skye</td>
														<td><a href="#"> peterclark82 </a></td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
												</tbody>
											</table>
											<table class="table table-condensed table-hover">
												<thead>
													<tr>
														<th colspan="3">General information</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Position</td>
														<td>UI Designer</td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>Last Logged In</td>
														<td>56 min</td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>Position</td>
														<td>Senior Marketing Manager</td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>Supervisor</td>
														<td><a href="#"> Kenneth Ross </a></td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>Status</td>
														<td><span class="label label-sm label-info">Administrator</span></td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
												</tbody>
											</table>
											<table class="table table-condensed table-hover">
												<thead>
													<tr>
														<th colspan="3">Additional information</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Birth</td>
														<td>21 October 1982</td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
													<tr>
														<td>Groups</td>
														<td>New company web site development, HR Management</td>
														<td><a href="#panel_edit_account" class="show-tab"><i
																class="fa fa-pencil edit-user-info"></i></a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="col-sm-7 col-md-8">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Maecenas convallis porta purus, pulvinar mattis nulla
											tempus ut. Curabitur quis dui orci. Ut nisi dolor, dignissim
											a aliquet quis, vulputate id dui. Proin ultrices ultrices
											ligula, dictum varius turpis faucibus non. Curabitur faucibus
											ultrices nunc, nec aliquet leo tempor cursus.</p>
										<div class="row space20">
											<div class="col-sm-3">
												<button class="btn btn-icon btn-block">
													<i class="clip-clip"
														href="<%=request.getContextPath()%>/webcontent/info/projects.jsp"></i>
													Projects <span class="badge badge-info"> 4 </span>
												</button>
											</div>
											<div class="col-sm-3">
												<button class="btn btn-icon btn-block pulsate">
													<i class="clip-bubble-2"></i> Messages <span
														class="badge badge-info"> 23 </span>
												</button>
											</div>
											<div class="col-sm-3">
												<button class="btn btn-icon btn-block">
													<i class="clip-calendar"></i> Calendar <span
														class="badge badge-info"> 5 </span>
												</button>
											</div>
											<div class="col-sm-3">
												<button class="btn btn-icon btn-block">
													<i class="clip-list-3"></i> Notifications <span
														class="badge badge-info"> 9 </span>
												</button>
											</div>
										</div>
										<div class="panel panel-white space20">
											<div class="panel-heading">
												<i class="clip-menu"></i> Recent Activities
												<div class="panel-tools">
													<a class="btn btn-xs btn-link panel-close" href="#"> <i
														class="fa fa-times"></i>
													</a>
												</div>
											</div>
											<div class="panel-body panel-scroll height-300">
												<ul class="activities">
													<li><a class="activity" href="javascript:void(0)">
															<span class="fa-stack fa-2x"> <i
																class="fa fa-square fa-stack-2x text-blue"></i> <i
																class="fa fa-code fa-stack-1x fa-inverse"></i>
														</span> <span class="desc">You uploaded a new release.</span>
															<div class="time">
																<i class="fa fa-clock-o"></i> 2 hours ago
															</div>
													</a></li>
													<li><a class="activity" href="javascript:void(0)">
															<img alt="image" src="assets/images/avatar-2.jpg">
															<span class="desc">Nicole Bell sent you a message.</span>
															<div class="time">
																<i class="fa fa-clock-o"></i> 3 hours ago
															</div>
													</a></li>
													<li><a class="activity" href="javascript:void(0)">
															<span class="fa-stack fa-2x"> <i
																class="fa fa-square fa-stack-2x text-orange"></i> <i
																class="fa fa-database fa-stack-1x fa-inverse"></i>
														</span> <span class="desc">DataBase Migration.</span>
															<div class="time">
																<i class="fa fa-clock-o"></i> 5 hours ago
															</div>
													</a></li>
													<li><a class="activity" href="javascript:void(0)">
															<span class="fa-stack fa-2x"> <i
																class="fa fa-square fa-stack-2x text-yellow"></i> <i
																class="fa fa-calendar-o fa-stack-1x fa-inverse"></i>
														</span> <span class="desc">You added a new event to the
																calendar.</span>
															<div class="time">
																<i class="fa fa-clock-o"></i> 8 hours ago
															</div>
													</a></li>
													<li><a class="activity" href="javascript:void(0)">
															<span class="fa-stack fa-2x"> <i
																class="fa fa-square fa-stack-2x text-green"></i> <i
																class="fa fa-file-image-o fa-stack-1x fa-inverse"></i>
														</span> <span class="desc">Kenneth Ross uploaded new
																images.</span>
															<div class="time">
																<i class="fa fa-clock-o"></i> 9 hours ago
															</div>
													</a></li>
													<li><a class="activity" href="javascript:void(0)">
															<span class="fa-stack fa-2x"> <i
																class="fa fa-square fa-stack-2x text-green"></i> <i
																class="fa fa-file-image-o fa-stack-1x fa-inverse"></i>
														</span> <span class="desc">Peter Clark uploaded a new
																image.</span>
															<div class="time">
																<i class="fa fa-clock-o"></i> 12 hours ago
															</div>
													</a></li>
												</ul>
											</div>
										</div>
										<div class="panel panel-white space20">
											<div class="panel-heading">
												<i class="clip-checkmark-2"></i> To Do
												<div class="panel-tools">
													<a class="btn btn-xs btn-link panel-close" href="#"> <i
														class="fa fa-times"></i>
													</a>
												</div>
											</div>
											<div class="panel-body panel-scroll height-300">
												<ul class="todo">
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">Staff
																Meeting</span> <span class="label label-danger"> today</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																New frontend layout</span> <span class="label label-danger">
																today</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																Hire developers</span> <span class="label label-warning">
																tommorow</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">Staff
																Meeting</span> <span class="label label-warning">
																tommorow</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																New frontend layout</span> <span class="label label-success">
																this week</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																Hire developers</span> <span class="label label-success">
																this week</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																New frontend layout</span> <span class="label label-info">
																this month</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																Hire developers</span> <span class="label label-info">
																this month</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">Staff
																Meeting</span> <span class="label label-danger"> today</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																New frontend layout</span> <span class="label label-danger">
																today</span>
													</a></li>
													<li><a class="todo-actions" href="javascript:void(0)">
															<i class="fa fa-square-o"></i> <span class="desc">
																Hire developers</span> <span class="label label-warning">
																tommorow</span>
													</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="panel_edit_account" class="tab-pane fade in active">
								<%
									if(differentUser.equals("Entreprenure")){
											List<entreprenure> permenant_list = (List<entreprenure>) session.getAttribute("permenant_list");
											if (!permenant_list.isEmpty() && permenant_list != null) {
											Iterator<entreprenure> it = permenant_list.iterator();
											entreprenure entreprenure = (entreprenure) it.next();
											id = entreprenure.getId();
											firstname=entreprenure.getfirstname();
											lastname=entreprenure.getLastname();
											email=entreprenure.getEmail();
											/*String username=request.getParameter("username");*/
											password=entreprenure.getPassword();
											birthdate=entreprenure.getBirthdate();
											gender=entreprenure.getGender();
											zipcode=entreprenure.getZipcode();
											address=entreprenure.getAddress();	
											String Date=entreprenure.getBirthdate();
											String parts[]=Date.split("/");
											String date=parts[0];
											String month=parts[1];
											String year=parts[2];
											System.out.println(date+" "+month+" "+year);
								%>

								<form action="<%=request.getContextPath()%>/Store"  id="form">
									<div class="row">
										<div class="col-md-12">
											<h3>Account Info</h3>
											<hr>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label"> First Name </label> <input
													type="text" class="form-control" id="firstname"
													name="firstname" value="<%=firstname%>">

											</div>
											<div class="form-group">
												<label class="control-label"> Last Name </label> <input
													type="text" class="form-control" id="lastname"
													name="lastname" value="<%=lastname%>">
											</div>
											<div class="form-group">
												<label class="control-label"> Email Address </label> <input
													type="email" class="form-control" id="email" name="email"
													value="<%=email%>">
											</div>

											<div class="form-group">
												<label class="control-label"> Password </label> <input
													type="password" class="form-control" name="password"
													id="password" value="<%=password%>">
											</div>
											<div class="form-group">
												<label class="control-label"> Confirm Password </label> <input
													type="password" class="form-control" id="password_again"
													name="password_again" value="<%=password%>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group connected-group">
												<label class="control-label"> Date of Birth </label>
												<div class="row">
																<div class="col-md-3">
															<select name="date" id="dd" class="form-control">
																<option value="<%=date%>"><%=date%></option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
																<option value="13">13</option>
																<option value="14">14</option>
																<option value="15">15</option>
																<option value="16">16</option>
																<option value="17">17</option>
																<option value="18">18</option>
																<option value="19">19</option>
																<option value="20">20</option>
																<option value="21">21</option>
																<option value="22">22</option>
																<option value="23">23</option>
																<option value="24">24</option>
																<option value="25">25</option>
																<option value="26">26</option>
																<option value="27">27</option>
																<option value="28">28</option>
																<option value="29">29</option>
																<option value="30">30</option>
																<option value="31">31</option>
															</select>
														</div>
														<div class="col-md-3">
															<select name="month" id="mm" class="form-control">
																<option value="<%=month%>"><%=month%></option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
															</select>
														</div>
														<div class="col-md-3">
															<input type="text" placeholder="YYYY" id="yyyy"
																name="year" class="form-control" value="<%=year%>">
														</div>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label"> Gender <span
													class="symbol required"></span>
												</label>
												<div>
													<%
														if(gender.equals("male")){
													%><label class="radio-inline"> <input type="radio"
														class="grey" value="female" name="gender"
														id="gender_female"> Female
													</label> <label class="radio-inline"> <input type="radio"
														class="grey" value="male" name="gender" id="gender_male"
														checked> Male
													</label>

													<%
														}else{
													%>
													<label class="radio-inline"> <input type="radio"
														class="grey" value="female" name="gender"
														id="gender_female" checked> Female
													</label> <label class="radio-inline"> <input type="radio"
														class="grey" value="male" name="gender" id="gender_male">
														Male
													</label>

													<%
														}
													%>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label class="control-label"> Zip Code </label> <input
															class="form-control" type="text" name="zipcode"
															id="zipcode" value="<%=zipcode%>">
													</div>
												</div>
												<div class="col-md-8">
													<div class="form-group">
														<label class="control-label"> City </label> <input
															class="form-control tooltips" placeholder="London (UK)"
															type="text"
															data-original-title="We'll display it when you write reviews"
															data-rel="tooltip" title="" data-placement="top"
															name="personalAddress" id="city" value="<%=address%>">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
													<div class="col-md-8">
														<p>
															By clicking UPDATE, you are agreeing to the Policy and Terms &amp; Conditions.
														</p>
													</div>
													<input type="hidden" name="id" value="<%=id%>"/>
												<input type="hidden" name="actionCode" value="doUpdateEntreprenure"/>
													<div class="col-md-4">
														<button class="btn btn-green btn-block" type="submit">
															Update <i class="fa fa-arrow-circle-right"></i>
														</button>
													</div>
												</div>
	</form>
									<%
										}		
																																																																														}
									%>
									<%
										if (differentUser.equals("Investor")) {
																									List<investor> listInvestor = (List<investor>) session.getAttribute("permenant_list");
																										if (!listInvestor.isEmpty() && listInvestor != null) {
																										Iterator it = listInvestor.iterator();
																										investor investor = (investor) it.next();
																										id = investor.getId();
																										firstname=investor.getfirstname();
																										lastname=investor.getLastname();
																										email=investor.getEmail();
																										/*String username=request.getParameter("username");*/
																										password=investor.getPassword();
																										birthdate=investor.getBirthdate();
																										gender=investor.getGender();
																										zipcode=investor.getZipcode();
																										address=investor.getAddress();	
																										String Date=investor.getBirthdate();
																										String parts[]=Date.split("/");
																										String date=parts[0];
																										String month=parts[1];
																										String year=parts[2];
																										System.out.println(Date+" "+date+" "+month+" "+year);
									%>
									<form action="<%=request.getContextPath()%>/Invest" role="form" id="form">
										<div class="row">
											<div class="col-md-12">
												<h3>Account Info</h3>
												<hr>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label"> First Name </label> <input
														type="text" class="form-control" id="firstname"
														name="firstname" value="<%=firstname%>">

												</div>
												<div class="form-group">
													<label class="control-label"> Last Name </label> <input
														type="text" class="form-control" id="lastname"
														name="lastname" value="<%=lastname%>">
												</div>
												<div class="form-group">
													<label class="control-label"> Email Address </label> <input
														type="email" class="form-control" id="email" name="email"
														value="<%=email%>">
												</div>

												<div class="form-group">
													<label class="control-label"> Password </label> <input
														type="password" class="form-control" name="password"
														id="password" value="<%=password%>">
												</div>
												<div class="form-group">
													<label class="control-label"> Confirm Password </label> <input
														type="password" class="form-control" id="password_again"
														name="password_again" value="<%=password%>">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group connected-group">
													<label class="control-label"> Date of Birth </label>
													<div class="row">
														<div class="col-md-3">
															<select name="dd" id="dd" class="form-control">
																<option value="<%=date%>"><%=date%></option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
																<option value="13">13</option>
																<option value="14">14</option>
																<option value="15">15</option>
																<option value="16">16</option>
																<option value="17">17</option>
																<option value="18">18</option>
																<option value="19">19</option>
																<option value="20">20</option>
																<option value="21">21</option>
																<option value="22">22</option>
																<option value="23">23</option>
																<option value="24">24</option>
																<option value="25">25</option>
																<option value="26">26</option>
																<option value="27">27</option>
																<option value="28">28</option>
																<option value="29">29</option>
																<option value="30">30</option>
																<option value="31">31</option>
															</select>
														</div>
														<div class="col-md-3">
															<select name="mm" id="mm" class="form-control">
																<option value="<%=month%>"><%=month%></option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
															</select>
														</div>
														<div class="col-md-3">
															<input type="text" placeholder="YYYY" id="yyyy"
																name="yyyy" class="form-control" value="<%=year%>">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label"> Gender <span
														class="symbol required"></span>
													</label>
													<div>
														<%
															if(gender.equals("male")){
														%><label class="radio-inline"> <input type="radio"
															class="grey" value="female" name="gender"
															id="gender_female"> Female
														</label> <label class="radio-inline"> <input type="radio"
															class="grey" value="male" name="gender" id="gender_male"
															checked> Male
														</label>

														<%
															}else{
														%>
														<label class="radio-inline"> <input type="radio"
															class="grey" value="female" name="gender"
															id="gender_female" checked> Female
														</label> <label class="radio-inline"> <input type="radio"
															class="grey" value="male" name="gender" id="gender_male">
															Male
														</label>

														<%
															}
														%>
													</div>
												</div>
												<div class="row">
													<div class="col-md-4">
														<div class="form-group">
															<label class="control-label"> Zip Code </label> <input
																class="form-control" type="text" name="zipcode"
																id="zipcode" value="<%=zipcode%>">
														</div>
													</div>
													<div class="col-md-8">
														<div class="form-group">
															<label class="control-label"> City </label> <input
																class="form-control tooltips" placeholder="London (UK)"
																type="text"
																data-original-title="We'll display it when you write reviews"
																data-rel="tooltip" title="" data-placement="top"
																name="personalAddress" id="city" value="<%=address%>">
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-md-8">
													<input type="hidden" name="id" value="<%=id%>"/>
												<input type="hidden" name="actionCode" value="doUpdateUser"/>
												
														<p>
															By clicking UPDATE, you are agreeing to the Policy and Terms &amp; Conditions.
														</p>
													</div>
													<div class="col-md-4">
														<button class="btn btn-green btn-block" type="submit">
															Update <i class="fa fa-arrow-circle-right"></i>
														</button>
													</div>
												</div>
											</div>
										</div>
										</form>
										
										<%
											}		
																																																																																							}
										%>
						</div>
					</div>
				</div>
			</div>
			<!-- end: PAGE CONTENT-->
		</div>
		<div class="subviews">
			<div class="subviews-container"></div>
		</div>
	</div>
	<!-- end: PAGE -->
	
	<!-- end: MAIN CONTAINER -->
	<!-- start: FOOTER -->
	<footer class="inner">
		<div class="footer-inner">
			<div class="pull-left">2014 &copy; Rapido by cliptheme.</div>
			<div class="pull-right">
				<span class="go-top"><i class="fa fa-chevron-up"></i></span>
			</div>
		</div>
	</footer>
	<!-- end: FOOTER -->
	<!-- start: SUBVIEW SAMPLE CONTENTS -->
	<!-- *** NEW NOTE *** -->
	<div id="newNote">
		<div class="noteWrap col-md-8 col-md-offset-2">
			<h3>Add new note</h3>
			<form class="form-note">
				<div class="form-group">
					<input class="note-title form-control" name="noteTitle" type="text"
						placeholder="Note Title...">
				</div>
				<div class="form-group">
					<textarea id="noteEditor" name="noteEditor" class="hide"></textarea>
					<textarea class="summernote" placeholder="Write note here..."></textarea>
				</div>
				<div class="pull-right">
					<div class="btn-group">
						<a href="#" class="btn btn-info close-subview-button"> Close </a>
					</div>
					<div class="btn-group">
						<button class="btn btn-info save-note" type="submit">
							Save</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- *** READ NOTE *** -->
	<div id="readNote">
		<div class="barTopSubview">
			<a href="#newNote" class="new-note button-sv"><i
				class="fa fa-plus"></i> Add new note</a>
		</div>
		<div class="noteWrap col-md-8 col-md-offset-2">
			<div class="panel panel-note">
				<div class="e-slider owl-carousel owl-theme">
					<div class="item">
						<div class="panel-heading">
							<h3>This is a Note</h3>
						</div>
						<div class="panel-body">
							<div class="note-short-content">Lorem ipsum dolor sit amet,
								consectetur adipisici elit, sed eiusmod tempor incidunt ut
								labore et dolore magna aliqua. Ut enim ad minim veniam...</div>
							<div class="note-content">
								Lorem ipsum dolor sit amet, consectetur adipisici elit, sed
								eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquid ex ea commodi consequat. Quis aute iure
								reprehenderit in <strong>voluptate velit</strong> esse cillum
								dolore eu fugiat nulla pariatur. <br> Excepteur sint
								obcaecat cupiditat non proident, sunt in culpa qui officia
								deserunt mollit anim id est laborum. <br> Nemo enim ipsam
								voluptatem, quia voluptas sit, aspernatur aut odit aut fugit,
								sed quia consequuntur magni dolores eos, qui ratione voluptatem
								sequi nesciunt, neque porro quisquam est, qui dolorem ipsum,
								quia dolor sit, amet, consectetur, adipisci v'elit, sed quia non
								numquam eius modi tempora incidunt, ut labore et dolore magnam
								aliquam quaerat voluptatem. <br> Ut enim ad minima veniam,
								quis nostrum exercitationem ullam corporis suscipit laboriosam,
								nisi ut <strong>aliquid ex ea commodi consequatur?</strong> <br>
								Quis autem vel eum iure reprehenderit, qui in ea voluptate velit
								esse, quam nihil molestiae consequatur, vel illum, qui dolorem
								eum fugiat, quo voluptas nulla pariatur? <br> At vero eos
								et accusamus et iusto odio dignissimos ducimus, qui blanditiis
								praesentium voluptatum deleniti atque corrupti, quos dolores et
								quas molestias excepturi sint, obcaecati cupiditate non
								provident, similique sunt in culpa, qui officia deserunt
								mollitia animi, id est laborum et dolorum fuga. Et harum quidem
								rerum facilis est et expedita distinctio. <br> Nam libero
								tempore, cum soluta nobis est eligendi optio, cumque nihil
								impedit, quo minus id, quod maxime placeat, facere possimus,
								omnis voluptas assumenda est, omnis dolor repellendus.
								Temporibus autem quibusdam et aut officiis debitis aut rerum
								necessitatibus saepe eveniet, ut et voluptates repudiandae sint
								et molestiae non recusandae. <br> Itaque earum rerum hic
								tenetur a sapiente delectus, ut aut reiciendis voluptatibus
								maiores alias consequatur aut perferendis doloribus asperiores
								repellat.
							</div>
							<div class="note-options pull-right">
								<a href="#readNote" class="read-note"><i
									class="fa fa-chevron-circle-right"></i> Read</a><a href="#"
									class="delete-note"><i class="fa fa-times"></i> Delete</a>
							</div>
						</div>
						<div class="panel-footer">
							<div class="avatar-note">
								<img
									src="<%=request.getContextPath()%>/front/images/avatar-2-small.jpg"
									alt="">
							</div>
							<span class="author-note">Nicole Bell</span>
							<time class="timestamp" title="2014-02-18T00:00:00-05:00">
								2014-02-18T00:00:00-05:00 </time>
						</div>
					</div>
					<div class="item">
						<div class="panel-heading">
							<h3>This is the second Note</h3>
						</div>
						<div class="panel-body">
							<div class="note-short-content">Excepteur sint obcaecat
								cupiditat non proident, sunt in culpa qui officia deserunt
								mollit anim id est laborum. Nemo enim ipsam voluptatem, quia
								voluptas sit...</div>
							<div class="note-content">
								Excepteur sint obcaecat cupiditat non proident, sunt in culpa
								qui officia deserunt mollit anim id est laborum. <br> Nemo
								enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit
								aut fugit, sed quia consequuntur magni dolores eos, qui ratione
								voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem
								ipsum, quia dolor sit, amet, consectetur, adipisci v'elit, sed
								quia non numquam eius modi tempora incidunt, ut labore et dolore
								magnam aliquam quaerat voluptatem. <br> Ut enim ad minima
								veniam, quis nostrum exercitationem ullam corporis suscipit
								laboriosam, nisi ut <strong>aliquid ex ea commodi
									consequatur?</strong> <br> Quis autem vel eum iure reprehenderit,
								qui in ea voluptate velit esse, quam nihil molestiae
								consequatur, vel illum, qui dolorem eum fugiat, quo voluptas
								nulla pariatur? <br> Nam libero tempore, cum soluta nobis
								est eligendi optio, cumque nihil impedit, quo minus id, quod
								maxime placeat, facere possimus, omnis voluptas assumenda est,
								omnis dolor repellendus. Temporibus autem quibusdam et aut
								officiis debitis aut rerum necessitatibus saepe eveniet, ut et
								voluptates repudiandae sint et molestiae non recusandae. <br>
								Itaque earum rerum hic tenetur a sapiente delectus, ut aut
								reiciendis voluptatibus maiores alias consequatur aut
								perferendis doloribus asperiores repellat.
							</div>
							<div class="note-options pull-right">
								<a href="#" class="read-note"><i
									class="fa fa-chevron-circle-right"></i> Read</a><a href="#"
									class="delete-note"><i class="fa fa-times"></i> Delete</a>
							</div>
						</div>
						<div class="panel-footer">
							<div class="avatar-note">
								<img
									src="<%=request.getContextPath()%>/front/images/avatar-3-small.jpg"
									alt="">
							</div>
							<span class="author-note">Steven Thompson</span>
							<time class="timestamp" title="2014-02-18T00:00:00-05:00">
								2014-02-18T00:00:00-05:00 </time>
						</div>
					</div>
					<div class="item">
						<div class="panel-heading">
							<h3>This is yet another Note</h3>
						</div>
						<div class="panel-body">
							<div class="note-short-content">At vero eos et accusamus et
								iusto odio dignissimos ducimus, qui blanditiis praesentium
								voluptatum deleniti atque corrupti, quos dolores...</div>
							<div class="note-content">
								At vero eos et accusamus et iusto odio dignissimos ducimus, qui
								blanditiis praesentium voluptatum deleniti atque corrupti, quos
								dolores et quas molestias excepturi sint, obcaecati cupiditate
								non provident, similique sunt in culpa, qui officia deserunt
								mollitia animi, id est laborum et dolorum fuga. Et harum quidem
								rerum facilis est et expedita distinctio. <br> Excepteur
								sint obcaecat cupiditat non proident, sunt in culpa qui officia
								deserunt mollit anim id est laborum. <br> Nemo enim ipsam
								voluptatem, quia voluptas sit, aspernatur aut odit aut fugit,
								sed quia consequuntur magni dolores eos, qui ratione voluptatem
								sequi nesciunt, neque porro quisquam est, qui dolorem ipsum,
								quia dolor sit, amet, consectetur, adipisci v'elit, sed quia non
								numquam eius modi tempora incidunt, ut labore et dolore magnam
								aliquam quaerat voluptatem. <br> Ut enim ad minima veniam,
								quis nostrum exercitationem ullam corporis suscipit laboriosam,
								nisi ut <strong>aliquid ex ea commodi consequatur?</strong>
							</div>
							<div class="note-options pull-right">
								<a href="#" class="read-note"><i
									class="fa fa-chevron-circle-right"></i> Read</a><a href="#"
									class="delete-note"><i class="fa fa-times"></i> Delete</a>
							</div>
						</div>
						<div class="panel-footer">
							<div class="avatar-note">
								<img
									src="<%=request.getContextPath()%>/front/images/avatar-4-small.jpg"
									alt="">
							</div>
							<span class="author-note">Ella Patterson</span>
							<time class="timestamp" title="2014-02-18T00:00:00-05:00">
								2014-02-18T00:00:00-05:00 </time>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- *** SHOW CALENDAR *** -->
	<div id="showCalendar" class="col-md-10 col-md-offset-1">
		<div class="barTopSubview">
			<a href="#newEvent" class="new-event button-sv"
				data-subviews-options='{"onShow": "editEvent()"}'><i
				class="fa fa-plus"></i> Add new event</a>
		</div>
		<div id="calendar"></div>
	</div>
	<!-- *** NEW EVENT *** -->
	<div id="newEvent">
		<div class="noteWrap col-md-8 col-md-offset-2">
			<h3>Add new event</h3>
			<form class="form-event">
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<input class="event-id hide" type="text"> <input
								class="event-name form-control" name="eventName" type="text"
								placeholder="Event Name...">
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<input type="checkbox" class="all-day" data-label-text="All-Day"
								data-on-text="True" data-off-text="False">
						</div>
					</div>
					<div class="no-all-day-range">
						<div class="col-md-8">
							<div class="form-group">
								<div class="form-group">
									<span class="input-icon"> <input type="text"
										class="event-range-date form-control" name="eventRangeDate"
										placeholder="Range date" /> <i class="fa fa-clock-o"></i>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="all-day-range">
						<div class="col-md-8">
							<div class="form-group">
								<div class="form-group">
									<span class="input-icon"> <input type="text"
										class="event-range-date form-control" name="ad_eventRangeDate"
										placeholder="Range date" /> <i class="fa fa-calendar"></i>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="hide">
						<input type="text" class="event-start-date" name="eventStartDate" />
						<input type="text" class="event-end-date" name="eventEndDate" />
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<select class="form-control selectpicker event-categories">
								<option
									data-content="<span class='event-category event-cancelled'>Cancelled</span>"
									value="event-cancelled">Cancelled</option>
								<option
									data-content="<span class='event-category event-home'>Home</span>"
									value="event-home">Home</option>
								<option
									data-content="<span class='event-category event-overtime'>Overtime</span>"
									value="event-overtime">Overtime</option>
								<option
									data-content="<span class='event-category event-generic'>Generic</span>"
									value="event-generic" selected="selected">Generic</option>
								<option
									data-content="<span class='event-category event-job'>Job</span>"
									value="event-job">Job</option>
								<option
									data-content="<span class='event-category event-offsite'>Off-site work</span>"
									value="event-offsite">Off-site work</option>
								<option
									data-content="<span class='event-category event-todo'>To Do</span>"
									value="event-todo">To Do</option>
							</select>
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<textarea class="summernote" placeholder="Write note here..."></textarea>
						</div>
					</div>
				</div>
				<div class="pull-right">
					<div class="btn-group">
						<a href="#" class="btn btn-info close-subview-button"> Close </a>
					</div>
					<div class="btn-group">
						<button class="btn btn-info save-new-event" type="submit">
							Save</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- *** READ EVENT *** -->
	<div id="readEvent">
		<div class="noteWrap col-md-8 col-md-offset-2">
			<div class="row">
				<div class="col-md-12">
					<h2 class="event-title">Event Title</h2>
					<div class="btn-group options-toggle pull-right">
						<button class="btn dropdown-toggle btn-transparent-grey"
							data-toggle="dropdown">
							<i class="fa fa-cog"></i> <span class="caret"></span>
						</button>
						<ul role="menu" class="dropdown-menu dropdown-light pull-right">
							<li><a href="#newEvent" class="edit-event"> <i
									class="fa fa-pencil"></i> Edit
							</a></li>
							<li><a href="#" class="delete-event"> <i
									class="fa fa-times"></i> Delete
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6">
					<span class="event-category event-cancelled">Cancelled</span> <span
						class="event-allday"><i class='fa fa-check'></i> All-Day</span>
				</div>
				<div class="col-md-12">
					<div class="event-start">
						<div class="event-day"></div>
						<div class="event-date"></div>
						<div class="event-time"></div>
					</div>
					<div class="event-end"></div>
				</div>
				<div class="col-md-12">
					<div class="event-content"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- *** NEW CONTRIBUTOR *** -->
	<div id="newContributor">
		<div class="noteWrap col-md-8 col-md-offset-2">
			<h3>Add new contributor</h3>
			<form class="form-contributor">
				<div class="row">
					<div class="col-md-12">
						<div class="errorHandler alert alert-danger no-display">
							<i class="fa fa-times-sign"></i> You have some form errors.
							Please check below.
						</div>
						<div class="successHandler alert alert-success no-display">
							<i class="fa fa-ok"></i> Your form validation is successful!
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<input class="contributor-id hide" type="text"> <label
								class="control-label"> First Name <span
								class="symbol required"></span>
							</label> <input type="text" placeholder="Insert your First Name"
								class="form-control contributor-firstname" name="firstname">
						</div>
						<div class="form-group">
							<label class="control-label"> Last Name <span
								class="symbol required"></span>
							</label> <input type="text" placeholder="Insert your Last Name"
								class="form-control contributor-lastname" name="lastname">
						</div>
						<div class="form-group">
							<label class="control-label"> Email Address <span
								class="symbol required"></span>
							</label> <input type="email" placeholder="Text Field"
								class="form-control contributor-email" name="email">
						</div>
						<div class="form-group">
							<label class="control-label"> Password <span
								class="symbol required"></span>
							</label> <input type="password" class="form-control contributor-password"
								name="password">
						</div>
						<div class="form-group">
							<label class="control-label"> Confirm Password <span
								class="symbol required"></span>
							</label> <input type="password"
								class="form-control contributor-password-again"
								name="password_again">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="control-label"> Gender <span
								class="symbol required"></span>
							</label>
							<div>
								<label class="radio-inline"> <input type="radio"
									class="grey contributor-gender" value="F" name="gender">
									Female
								</label> <label class="radio-inline"> <input type="radio"
									class="grey contributor-gender" value="M" name="gender">
									Male
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label"> Permits <span
								class="symbol required"></span>
							</label> <select name="permits" class="form-control contributor-permits">
								<option value="View and Edit">View and Edit</option>
								<option value="View Only">View Only</option>
							</select>
						</div>
						<div class="form-group">
							<div class="fileupload fileupload-new contributor-avatar"
								data-provides="fileupload">
								<div class="fileupload-new thumbnail">
									<img
										src="<%=request.getContextPath()%>/front/images/anonymous.jpg"
										alt="" width="50" height="50" />
								</div>
								<div class="fileupload-preview fileupload-exists thumbnail"></div>
								<div class="contributor-avatar-options">
									<span class="btn btn-light-grey btn-file"><span
										class="fileupload-new"><i class="fa fa-picture-o"></i>
											Select image</span><span class="fileupload-exists"><i
											class="fa fa-picture-o"></i> Change</span> <input type="file">
									</span> <a href="#" class="btn fileupload-exists btn-light-grey"
										data-dismiss="fileupload"> <i class="fa fa-times"></i>
										Remove
									</a>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label"> SEND MESSAGE (Optional) </label>
							<textarea class="form-control contributor-message"></textarea>
						</div>
					</div>
				</div>
				<div class="pull-right">
					<div class="btn-group">
						<a href="#" class="btn btn-info close-subview-button"> Close </a>
					</div>
					<div class="btn-group">
						<button class="btn btn-info save-contributor" type="submit">
							Save</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- *** SHOW CONTRIBUTORS *** -->
	<div id="showContributors">
		<div class="barTopSubview">
			<a href="#newContributor" class="new-contributor button-sv"><i
				class="fa fa-plus"></i> Add new contributor</a>
		</div>
		<div class="noteWrap col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-body">
					<div id="contributors">
						<div class="options-contributors hide">
							<div class="btn-group">
								<button class="btn dropdown-toggle btn-transparent-grey"
									data-toggle="dropdown">
									<i class="fa fa-cog"></i> <span class="caret"></span>
								</button>
								<ul role="menu" class="dropdown-menu dropdown-light pull-right">
									<li><a href="#newContributor"
										class="show-subviews edit-contributor"> <i
											class="fa fa-pencil"></i> Edit
									</a></li>
									<li><a href="#" class="delete-contributor"> <i
											class="fa fa-times"></i> Delete
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end: SUBVIEW SAMPLE CONTENTS -->
	</div>
	</div>
	<!-- start: MAIN JAVASCRIPTS -->
	<!-- start: MAIN JAVASCRIPTS -->
	<jsp:include page="mainjs.jsp"></jsp:include>
	<!-- start: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="<%=request.getContextPath()%>/front/plugins/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/nvd3/lib/d3.v3.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/nvd3/nv.d3.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/nvd3/src/models/historicalBar.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/nvd3/src/models/historicalBarChart.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/nvd3/src/models/stackedArea.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/nvd3/src/models/stackedAreaChart.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/jquery.sparkline/jquery.sparkline.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
	<script src="<%=request.getContextPath()%>/front/js/index.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE JAVASCRIPTS  -->
	<script src="<%=request.getContextPath()%>/front/js/main.js"></script>
	<!-- end: CORE JAVASCRIPTS  -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			SVExamples.init();
			Index.init();
		});
	</script>
</body>
<!-- end: BODY -->

<!-- Mirrored from www.cliptheme.com/demo/rapido/pages_user_profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Sep 2016 15:46:28 GMT -->
</html>