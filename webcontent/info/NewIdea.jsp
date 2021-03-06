<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Iterator"%>
<%@page import="com.model.idea"%>
<%@page import="java.util.List"%>
	<%
    	if(null == session.getAttribute("userName")){
    		String address="/webcontent/info/login.jsp";
    		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(address);
    		requestDispatcher.forward(request,response);
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proposal page</title>
<jsp:include page="headerInclude.jsp"></jsp:include>
<!-- start: CORE CSS -->
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
<!-- end: CORE CSS -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<body>
	<jsp:include page="slidingbar.jsp"></jsp:include>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<%
		String differentUser = (String)session.getAttribute("differentUser");
		System.out.print(differentUser);
		if(differentUser.contains("Entreprenure") || differentUser.contains("Investor") ){
		%><jsp:include page="leftsidebar_users.jsp"></jsp:include><%
		}else{ %><jsp:include page="leftsidebar.jsp"></jsp:include><%
		}
		 %>
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
				<!-- /.modal --><!-- end: SPANEL CONFIGURATION MODAL FORM -->
					<div class="container">
						<!-- start: PAGE HEADER -->
						<!-- start: TOOLBAR -->
						<div class="toolbar row" style="width:100%;">
							<div class="" style="width:100%;margin-left:1%;">
								<div class="page-header">
									<h1>Dashboard <small>overview &amp; stats </small></h1>
									<div class="toolbar-tools pull-right">
									<!-- start: TOP NAVIGATION MENU -->
									
									<!-- end: TOP NAVIGATION MENU -->
								</div>
								</div>
								
							</div>
							<div class="">
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
										<a href="#">
											Dashboard
										</a>
									</li>
									<li class="active">
										Timeline
									</li>
								</ol>
							</div>
						</div>
						
											<!-- end: BREADCRUMB -->
						<!-- start: PAGE CONTENT -->
							<%int i;
						String currentSessionEmail=(String)session.getAttribute("email");
							System.out.println(currentSessionEmail);
								List<idea> list_idea=(List<idea>)(session.getAttribute("list_idea"));
								System.out.println(list_idea.size());
																								  if(!list_idea.isEmpty() && list_idea!=null){
																									Iterator it=list_idea.iterator();
																									idea idea=null;
																									while(it.hasNext()){
																										idea=(idea)it.next(); 
					
					/*  for(i=1;i<=list_idea.size();i++){  */%>
						
					<%-- 	 --%>
							
							<div class="col-md-7 col-lg-4">
								<div class="panel panel-dark">
									<div class="panel-heading">
										<h4 class="panel-title"><%=idea.getEntreprenureName()%></h4>
										<div class="panel-tools">
											<div class="dropdown">
												<a data-toggle="dropdown" class="btn btn-xs dropdown-toggle btn-transparent-white">
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
									<div class="panel-body no-padding">
										<div class="partition-green padding-15 text-center">
											<h4 class="no-margin"><%=idea.getAbstractIdea()%></h4>
											<span class="text-light"><%=idea.getEmail()%></span>
											<div class="note-options pull-right">
													<br>
														<a id="successSweetAlert"
														class="read-note" data-subviews-options='{"startFrom": "right", "onShow": "readNote(subViewElement)", "onHide": "hideNote()"}'
														href="<%=request.getContextPath()%>/Idea?actionCode=doSendMail&&email=<%=idea.getEmail()%>&&id=<%=idea.getId()%>&&differentUser=<%=differentUser%>&&currentSessionEmail=<%=currentSessionEmail%>" style="color: #F8FDF3 !important;"><i class="fa fa-chevron-circle-right">
															</i>Send Mail </a>
														<td><a id="successSweetAlert"
														class="read-note" data-subviews-options='{"startFrom": "right", "onShow": "readNote(subViewElement)", "onHide": "hideNote()"}'
														href="<%=request.getContextPath()%>/webcontent/info/proposal.jsp?email=<%=idea.getEmail()%>&&currentSessionEmail=<%=currentSessionEmail%>"style="color: #F8FDF3 !important;"><i class="fa fa-diamond"></i>
															Send Proposal </a>
															<%if(differentUser.equals("admin") || differentUser.equals("Admin") ){ %>
													<a
														href="<%=request.getContextPath()%>/Idea?actionCode=doUpdateIdea&&id=<%=idea.getId()%>"
														data-subviews-options='{"startFrom": "right", "onShow": "readNote(subViewElement)", "onHide": "hideNote()"}'><i class="fa fa-edit" style="color: #F8FDF3 !important;"></i>Edit</a>
												<a
														href="<%=request.getContextPath()%>/Idea?actionCode=doDeleteIdea&&id=<%=idea.getId()%>"
														data-subviews-options='{"startFrom": "right", "onShow": "readNote(subViewElement)", "onHide": "hideNote()"}'><i class="fa fa-times" style="color: #F8FDF3 !important;"></i>Delete</a>
															<%} %>
													</div>
							</div>
										</div>
									</div>
										
								</div> 
							<!-- <div class="col-md-6">
										<div class="panel panel-blue">
											<div class="panel-body padding-20 text-center">
												<div class="space10">
													<h5 class="text-white semi-bold no-margin p-b-5">Today</h5>
													<h3 class="text-white no-margin"><span class="text-small">&#36;</span>1,450</h3>
													253 Sales
												</div>
												<div class="sparkline-4 space10">
													<span ></span>
												</div>
												<span class="text-light"><i class="fa fa-clock-o"></i> 1 hour ago</span>
											</div>
										</div>
									</div> -->
							
						
						 <%}
									} 	
					 %> 
						<!-- end: PAGE CONTENT-->
					</div>
					<div class="subviews">
						<div class="subviews-container"></div>
					</div>
				</div>
				<!-- end: PAGE -->
			</div>
			<!-- end: MAIN CONTAINER -->
			<!-- start: FOOTER -->
			<!-- start: FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- end: FOOTER -->
		
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
	<jsp:include page="mainjs.jsp"></jsp:include>
	<!-- start: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="<%= request.getContextPath()%>/front/plugins/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/nvd3/lib/d3.v3.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/nvd3/nv.d3.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/nvd3/src/models/historicalBar.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/nvd3/src/models/historicalBarChart.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/nvd3/src/models/stackedArea.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/nvd3/src/models/stackedAreaChart.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/jquery.sparkline/jquery.sparkline.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/js/index.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE JAVASCRIPTS  -->
	<script src="<%= request.getContextPath()%>/front/js/main.js"></script>
	<!-- end: CORE JAVASCRIPTS  -->
		<!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="<%= request.getContextPath()%>/front//plugins/ScrollToFixed/jquery-scrolltofixed-min.js"></script>
		<script src="<%= request.getContextPath()%>/front//pages-timeline.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CORE JAVASCRIPTS  -->
		<script src="assets/js/main.js"></script>
		<!-- end: CORE JAVASCRIPTS  -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				SVExamples.init();
				Timeline.init();
			});
		</script>
	</body>
	<!-- end: BODY -->

<!-- Mirrored from www.cliptheme.com/demo/rapido/pages_timeline.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Sep 2016 15:49:31 GMT -->
</html>