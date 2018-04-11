<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Iterator"%>
<%@page import="com.model.investor"%>
<%@page import="java.util.List"%>
<%
    	if(null == session.getAttribute("userName")){
    		String address="/webcontent/info/login.jsp";
    		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(address);
    		requestDispatcher.forward(request,response);
    	}
    %>
	<%
	List<investor> listInvestor = (List<investor>) session
			.getAttribute("investor");
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
	String year;
	
	%>
<%
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
		System.out.println(date+" "+month+" "+year);
	

%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Investor</title>
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
<jsp:include page="headerInclude.jsp"></jsp:include>
<!-- Css for this page only -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/css/styles.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/css/styles-responsive.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/css/plugins.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/css/themes/theme-style8.css"
	type="text/css" id="skin_color">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/css/print.css" type="text/css"
	media="print" />
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/favicon.ico" />
</head>
<body>
	<!-- start: SLIDING BAR (SB) -->
	<jsp:include page="slidingbar.jsp"></jsp:include>
	<!-- end: SLIDING BAR -->
	<div class="main-wrapper">
		<!-- start: TOPBAR -->


		<jsp:include page="header.jsp"></jsp:include>


		<!-- end: TOPBAR -->

		<!-- start: PAGESLIDE LEFT -->


		<%
		String differentUser = (String)session.getAttribute("differentUser");
		System.out.print(differentUser);
		if(differentUser.contains("Entreprenure") || differentUser.contains("Investor") ){
		%><jsp:include page="leftsidebar_users.jsp"></jsp:include><%
		}else{ %><jsp:include page="leftsidebar.jsp"></jsp:include><%
		}
		 %>


		<!-- end: PAGESLIDE LEFT -->


		<!-- start: PAGESLIDE RIGHT -->


		<jsp:include page="rightsidebar.jsp"></jsp:include>


		<!-- end: PAGESLIDE RIGHT -->

		<!-- start: MAIN CONTAINER -->
		<div class="main-container inner">
			<!-- start: PAGE -->
			<div class="main-content">
				<!-- start: PANEL CONFIGURATION MODAL FORM -->
				<div class="modal fade" id="panel-config" tabindex="-1"
					role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">Panel Configuration</h4>
							</div>
							<div class="modal-body">Here will be a configuration form</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save
									changes</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- end: SPANEL CONFIGURATION MODAL FORM -->
				<div class="container">
					<!-- start: PAGE HEADER -->
					<!-- start: TOOLBAR -->
					<div class="toolbar row">
						<div class="col-sm-6 hidden-xs">
							<div class="page-header">
								<h1>
									User Management <small>Edit Investor</small>
								</h1>
							</div>
						</div>
						</div>
					</div>
					<!-- end: TOOLBAR -->
					<!-- end: PAGE HEADER -->
					<!-- start: BREADCRUMB -->
					<div class="row">
						<div class="col-md-12">
							<ol class="breadcrumb" style="margin-left:25px;">
								<li><a href="#"> User Management </a></li>
								<li class="active">Edit Investor</li>
							</ol>
						</div>
					</div>
					<!-- end: BREADCRUMB -->
					<!-- start: PAGE CONTENT -->
					<div class="row">
						<div class="col-md-12">
							<!-- start: FORM VALIDATION 1 PANEL -->
							<div class="panel panel-white" style="margin-left:25px;margin-top:25px;padding-left:10px">
								<div class="panel-heading">
									<h4 class="panel-title">
										Edit <span class="text-bold">Investor</span>
									</h4>
								</div>
								<div class="panel-body">
									<h2>
										<i class="fa fa-pencil-square"></i> EDIT
									</h2>
									<p>Edit an Investor details</p>
									<hr>
									<form action="<%=request.getContextPath()%>/Invest" role="form" id="form" method="post">
										<div class="row">
											<div class="col-md-12">
												<div class="errorHandler alert alert-danger no-display">
													<i class="fa fa-times-sign"></i> You have some form errors.
													Please check below.
												</div>
												<div class="successHandler alert alert-success no-display">
													<i class="fa fa-ok"></i> Your form validation is
													successful!
												</div>
											</div>
											<div class="col-md-6">
												<h3>Basic details</h3>
												<hr>
												<div class="form-group">
													<label class="control-label"> First Name <span
														class="symbol required"></span>
													</label> <input type="text" placeholder="John"
														class="form-control" id="firstname" name="firstname" value=<%=firstname%>>
												</div>
												<div class="form-group">
													<label class="control-label"> Last Name <span
														class="symbol required"></span>
													</label> <input type="text" placeholder="Doe"
														class="form-control" id="lastname" name="lastname" value=<%=lastname%>>
												</div>
												<div class="form-group">
													<label class="control-label"> Email Address <span
														class="symbol required"></span>
													</label> <input type="email" placeholder="abc@xyz.com"
														class="form-control" id="email" name="email" value=<%=email%>>
												</div>
												<div class="form-group">
													<label class="control-label"> Password <span
														class="symbol required"></span>
													</label> <input type="password" class="form-control"
														name="password" id="password" value=<%=password%>>
												</div>
												<div class="form-group">
													<label class="control-label"> Confirm Password <span
														class="symbol required" ></span>
													</label> <input type="password" class="form-control"
														id="password_again" name="password_again" value="<%=password%>">
												</div>
											</div>
											<div class="col-md-6">
												<h3>Personal Details</h3>
												<hr>
												<div class="form-group connected-group">
													<label class="control-label"> Date of Birth <span
														class="symbol required"></span>
													</label>
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
												<%} %>
												<div class="form-group">
													<label class="control-label"> Gender <span
														class="symbol required"></span>
													</label>
													<div>
													<%
													if(gender.equals("male")){
														%><label class="radio-inline"> <input type="radio"
															class="grey" value="female" name="gender" id="gender_female" >
															Female
														</label> <label class="radio-inline"> <input type="radio"
															class="grey" value="male" name="gender" id="gender_male" checked>
															Male
														</label>
													
													<%
													}else{
														%>
														<label class="radio-inline"> <input type="radio"
															class="grey" value="female" name="gender" id="gender_female" checked>
															Female
														</label> <label class="radio-inline"> <input type="radio"
															class="grey" value="male" name="gender" id="gender_male" >
															Male
														</label>
														
														<%
													}
													%>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label"> Address (Personal)<span class="symbol required"></span></label>
															<textarea class="form-control" name="personalAddress" id="personalAddress" cols="100" value="<%=address%>"><%=address%></textarea>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label"> Address (Company or Firm)</label>
															<textarea class="form-control" name="firmAddress" id="firmAddress" cols="100" value=<%=address%>><%=address%></textarea>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-4">
														<div class="form-group">
															<label class="control-label"> Zip Code <span
																class="symbol required"></span>
															</label> <input class="form-control" type="text" name="zipcode"
																id="zipcode" value=<%=zipcode%>>
														</div>
													</div>
													<!-- <div class="col-md-8">
														<div class="form-group">
															<label class="control-label"> City <span
																class="symbol required"></span>
															</label> <input class="form-control tooltips" type="text"
																data-original-title="We'll display it when you write reviews"
																data-rel="tooltip" title="" data-placement="top"
																name="city" id="city" value="city">>
														</div>
													</div> -->
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div>
													<span class="symbol required"></span>Required Fields
													<hr>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-8">
												<p>By clicking REGISTER, you are agreeing to the Policy
													and Terms &amp; Conditions.</p>
											</div>
												<div class="col-md-4">
												<input type="hidden" name="id" value="<%=id%>"/>
												<input type="hidden" name="actionCode" value="doUpdateUser"/>
												<button class="btn btn-yellow btn-block" type="submit">
													Register <i class="fa fa-arrow-circle-right"></i>
												</button>
											</div>
										</div>
									</form>								
									</div>
							</div>
						
							<!-- end: FORM VALIDATION 1 PANEL -->
						</div>
					</div>
					<!-- end: PAGE CONTENT-->
				</div>
			</div>
			<jsp:include page="subview.jsp"></jsp:include>
			<!-- end: SUBVIEW SAMPLE CONTENTS -->
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="mainjs.jsp"></jsp:include>
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script
			src="<%=request.getContextPath()%>/front/plugins/ckeditor/ckeditor.js"></script>
		<script
			src="<%=request.getContextPath()%>/front/plugins/ckeditor/adapters/jquery.js"></script>
		<script src="<%=request.getContextPath()%>/js/form-validation.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CORE JAVASCRIPTS  -->
		<script src="<%=request.getContextPath()%>/js/main.js"></script>
		<!-- end: CORE JAVASCRIPTS  -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				SVExamples.init();
				/* FormValidator.init(); */
			});
		</script>
</body>
</html>