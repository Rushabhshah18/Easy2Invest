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
<title>Add Entreprenure</title>
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
	<jsp:include page="headerInclude.jsp"></jsp:include>
	<!-- Css for this page only -->
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles-responsive.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/plugins.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/themes/theme-style8.css"
		type="text/css" id="skin_color">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/print.css" type="text/css"
		media="print" />
	<link rel="shortcut icon" href="<%= request.getContextPath()%>/favicon.ico" />
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
										Add Query
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
										<h2><i class="fa fa-pencil-square"></i>  Frequently Asked Questions</h2>
										<p>
											We are Happy to Help you.We will return to you as fast as possible
										</p>
										<hr>
									<form action="<%=request.getContextPath() %>/Faq" method="post" enc="multipart/form-data" id="form1">
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
															Query<span class="symbol required"></span>
														</label>
														<input type="text" placeholder="Abstract issue" class="form-control" id="firstname" name="question">
													</div>
													<div class="form-group">
														<label class="control-label">
															Detailed Issue <span class="symbol required"></span>
														</label>
														<textarea name="answer" required="" class="form-control" id="firstname" rows="10" cols="10"> Enter Your Detailed Issue</textarea>
													</div>
													
											</div>
											<div class="row">
												
											
												<div class="col-md-8">
												<div class="col-md-12">
													<div>
														<span class="symbol required"></span>Required Fields><br>
														<p>
														Every query will be answered in 1 to 2 working days.
													</p>
														<hr>
													</div>
												</div>
													
												</div>
												<div class="col-md-4">
													<input type="hidden" value="doAddFaq" name="actionCode">
													<button  type="submit" class="btn btn-yellow btn-block">
														Submit <i class="fa fa-arrow-circle-right"></i>
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
	<script src="<%= request.getContextPath()%>/front/plugins/ckeditor/ckeditor.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/ckeditor/adapters/jquery.js"></script>
	<%-- <script src="<%= request.getContextPath()%>/js/form-validation.js"></script> --%>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE JAVASCRIPTS  -->
	<script src="<%= request.getContextPath()%>/front/js/main.js"></script>
	<!-- end: CORE JAVASCRIPTS  -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			SVExamples.init();
			FormValidator.init();
		});
	</script>
	
</body>
</html>