<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%
    	if(null == session.getAttribute("userName")){
    		String address="/webcontent/info/login.jsp";
    		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(address);
    		requestDispatcher.forward(request,response);
    	}
	 
    %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
	<%-- <img src="<%= request.getContextPath() %>/frontend/img/logos.png" > --%>
<title>Add Entreprenure</title>
	<jsp:include page="headerInclude.jsp"></jsp:include>
	<!-- Css for this page only -->
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles-responsive.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/plugins.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/themes/theme-style8.css"
		type="text/css" id="skin_color">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/print.css" type="text/css"
		media="print" />
	<link rel="shortcut icon" href="<%= request.getContextPath()%>/front/images/EZ.png" />
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
					<div class="modal fade" id="panel-config" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;
									</button>
									<h4 class="modal-title">Panel Configuration</h4>
								</div>
								<div class="modal-body">
									Here will be a configuration form
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">
										Close
									</button>
									<button type="button" class="btn btn-primary">
										Save changes
									</button>
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
									<h1>Add Entreprenure <small>Manage Entreprenure</small></h1>
								</div>
							</div>
							<div class="col-sm-6 col-xs-12">
								<a href="#" class="back-subviews">
									<i class="fa fa-chevron-left"></i> BACK
								</a>
								<a href="#" class="close-subviews">
									<i class="fa fa-times"></i> CLOSE
								</a>
								
							</div>
						</div>
						<!-- end: TOOLBAR -->
						<!-- end: PAGE HEADER -->
						<!-- start: BREADCRUMB -->
						<div class="row">
							<div class="col-md-12">
								<ol class="breadcrumb">
									<li>
										<a href="<%=request.getContextPath()%>/webcontent/info/index.jsp">
											Dashboard
										</a>
									</li>
									<li class="active">
										Add Entreprenure
									</li>
								</ol>
							</div>
						</div>
						<!-- end: BREADCRUMB -->
						<!-- start: PAGE CONTENT -->
						<div class="row">
							<div class="col-md-12">
								<!-- start: FORM VALIDATION 1 PANEL -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<!-- <h4 class="panel-title">Form <span class="text-bold">Validation 1</span></h4> -->
										<div class="panel-tools">
											<div class="dropdown">
												<a data-toggle="dropdown" class="btn btn-xs dropdown-toggle btn-transparent-grey">
													<i class="fa fa-cog"></i>
												</a>
												<ul class="dropdown-menu dropdown-light pull-right" role="menu">
													<li>
														<a class="panel-collapse collapses" href="#"><i class="fa fa-angle-up"></i> <span>Collapse</span> </a>
													</li>
													<li>
														<a class="panel-refresh" href="#">
															<i class="fa fa-refresh"></i> <span>Refresh</span>
														</a>
													</li>
													<li>
														<a class="panel-config" href="#panel-config" data-toggle="modal">
															<i class="fa fa-wrench"></i> <span>Configurations</span>
														</a>
													</li>
													<li>
														<a class="panel-expand" href="#">
															<i class="fa fa-expand"></i> <span>Fullscreen</span>
														</a>
													</li>
												</ul>
											</div>
											<a class="btn btn-xs btn-link panel-close" href="#">
												<i class="fa fa-times"></i>
											</a>
										</div>
									</div>
									<div class="panel-body">
										<h2><i class="fa fa-pencil-square"></i> REGISTER</h2>
										<p>
											Create one account to manage everything you do with Rapido, from your shopping preferences to your Rapido activity.
										</p>
										<hr>
									<form action="<%=request.getContextPath() %>/Store" method="post" enc="multipart/form-data" id="form1">
									 <%
									String error="Go";
									if((session.getAttribute("errors")).equals(null)){
										System.out.println("Null");
									};
									if(!(session.getAttribute("errors")).equals(null)){
									error=(String)session.getAttribute("errors");
									}
									if(error.contains("Success")){
										%><div class="alert alert-success">Success</div><% session.setAttribute("errors", "Go");
									}if(error.contains("Failed") || error.contains("User Already Exists")){
										%><div class="alert alert-danger"><%=error%></div><%session.setAttribute("errors", "Go");
									}if(error.contains("Go")){
										%><div></div><%
									}
									
									 %> 
											<div class="row">
												<div class="col-md-12">
													<div class="errorHandler alert alert-danger no-display">
														<i class="fa fa-times-sign"></i> You have some form errors. Please check below.
													</div>
													<div class="successHandler alert alert-success no-display">
														<i class="fa fa-ok"></i> Your form validation is successful!
													</div>
													<!-- <input type="file" name="browse"/> -->
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="control-label">
															First Name <span class="symbol required"></span>
														</label>
														<input type="text" placeholder="Insert your First Name" class="form-control" id="firstname" name="firstname" required pattern="[A-Za-z]*" title="Enter letters only">
													</div>
													<div class="form-group">
														<label class="control-label">
															Last Name <span class="symbol required"></span>
														</label>
														<input type="text" placeholder="Insert your Last Name" class="form-control" id="lastname" name="lastname" required pattern="[A-Za-z]*" title="Enter letters only">
													</div>
													<div class="form-group">
														<label class="control-label">
															Email Address <span class="symbol required"></span>
														</label>
														<input type="email" placeholder="Text Field" class="form-control" id="email" name="email" required>
													</div>
													<div class="form-group">
														<label class="control-label">
															Password <span class="symbol required"></span>
														</label>
														<input type="password" class="form-control" name="password" id="password" required>
													</div>
													<div class="form-group">
														<label class="control-label">
															Confirm Password <span class="symbol required"></span>
														</label>
														<input type="password" class="form-control" id="password_again" name="password_again" required>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group connected-group">
														<label class="control-label">
															Date of Birth <span class="symbol required"></span>
														</label>
														<div class="row">
															<div class="col-md-3">
																<select name="date" id="dd" class="form-control" required>
																	<option value="">DD</option>
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
																<select name="month" id="mm" class="form-control" required >
																	<option value="">MM</option>
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
																<input type="number" placeholder="Year" id="yyyy" name="year" class="form-control" required min="1970" max="2010">
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="control-label">
															Gender <span class="symbol required"></span>
														</label>
														<div>
															<label class="radio-inline">
																<input type="radio" class="grey" value="female" name="gender" id="gender_female">
																Female
															</label>
															<label class="radio-inline">
																<input type="radio" class="grey" value="male" name="gender"  id="gender_male" required>
																Male
															</label>
														</div>
													</div>
													<div class="row">
														<div class="col-md-4">
															<div class="form-group">
																<label class="control-label">
																	Zip Code <span class="symbol required"></span>
																</label>
																<input class="form-control" type="number" name="zipcode" id="zipcode" required min="000000" max="999999">
															</div>
														</div>
														<div class="col-md-8">
															<div class="form-group">
																<label class="control-label">
																	City <span class="symbol required"></span>
																</label>
																<input class="form-control tooltips" type="text" data-original-title="We'll display it when you write reviews" data-rel="tooltip"  title="" data-placement="top" name="city" id="city" required>
															</div>
														</div>
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
													<p>
														By clicking REGISTER, you are agreeing to the Policy and Terms &amp; Conditions.
													</p>
												</div>
												<div class="col-md-4">
													<input type="hidden" value="addEntreprenure" name="actionCode">
													<button  type="submit" class="btn btn-yellow btn-block">
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
					<div class="subviews">
						<div class="subviews-container"></div>
					</div>
				</div>
				<!-- end: PAGE -->
			</div>
			<!-- end: MAIN CONTAINER -->
			<!-- start: SUBVIEW SAMPLE CONTENTS -->
			<jsp:include page="subview.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="mainjs.jsp"></jsp:include>
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	
	<script src="<%= request.getContextPath()%>/front/plugins/ckeditor/adapters/jquery.js"></script>
	<%-- <script src="<%= request.getContextPath()%>/front/js/form-validation.js"></script>  --%>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE JAVASCRIPTS  -->
	<script src="<%= request.getContextPath()%>/front/js/main.js"></script>
	<!-- end: CORE JAVASCRIPTS  -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			 /* SVExamples.init(); 
			FormValidator.init(); */
		});
	</script>
	
</body>
</html>