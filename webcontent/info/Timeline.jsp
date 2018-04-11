<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
									<h1>Timeline <small>capturing all of your important moments</small></h1>
								</div>
							</div>
							<div class="col-sm-6 col-xs-12">
								<a href="#" class="back-subviews">
									<i class="fa fa-chevron-left"></i> BACK
								</a>
								<a href="#" class="close-subviews">
									<i class="fa fa-times"></i> CLOSE
								</a>
									
									<!-- end: TOP NAVIGATION MENU -->
								</div>
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
						<div class="row">
							<div class="col-md-12">
								<!-- start: TIMELINE PANEL -->
								<div class="panel panel-white">
									<div class="panel-heading">
										<h4 class="panel-title">Timeline</h4>
									</div>
									<div class="panel-body">
										<ul class="timeline-scrubber inner-element">
											<li class="selected">
												<a href="#november" data-separator="#november">
													November</a>
											</li>
											<li class="clearfix">
												<a href="#october" data-separator="#october">
													October</a>
											</li>
											<li class="clearfix" >
												<a href="#september" data-separator="#september">
													September</a>
											</li>
											<li class="clearfix">
												<a href="#august" data-separator="#august">
													August</a>
											</li>
										</ul>
										<div id="timeline" class="demo1">
											<div class="timeline">
												<div class="spine"></div>
												<div class="date_separator" id="november" data-appear-top-offset="-400">
													<span>NOVEMBER 2014</span>
												</div>
												<ul class="columns">
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">02</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-check fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-green">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-map-marker fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<div class="row">
																	<div class="col-md-3 col-xs-4"><img src="assets/images/photodune-4043508-3d-modern-office-room-l.jpg" alt="offce" class="img-responsive"/>
																	</div>
																	<div class="col-md-9 col-xs-8">
																		<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
																	</div>
																</div>
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-red">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">12</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-check-circle-o fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Test Solution</h4>
															</div>
															<div class="timeline_content"></div>
															<div class="readmore">
																<a href="#" class="btn btn-transparent-white">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
												</ul>
												<div class="date_separator" id="october" data-appear-top-offset="-400">
													<span>OCTOBER 2014</span>
												</div>
												<ul class="columns">
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-map-marker fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<div class="row">
																	<div class="col-md-3 col-xs-4"><img src="assets/images/photodune-4043508-3d-modern-office-room-l.jpg" alt="offce" class="img-responsive"/>
																	</div>
																	<div class="col-md-9 col-xs-8">
																		<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
																	</div>
																</div>
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-purple">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-map-marker fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<div class="row">
																	<div class="col-md-3 col-xs-4"><img src="assets/images/photodune-4043508-3d-modern-office-room-l.jpg" alt="offce" class="img-responsive"/>
																	</div>
																	<div class="col-md-9 col-xs-8">
																		<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
																	</div>
																</div>
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-transparent-white">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-green">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_content">
																<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_content">
																<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
												</ul>
												<div class="date_separator" id="september" data-appear-top-offset="-400">
													<span>September 2014</span>
												</div>
												<ul class="columns">
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-map-marker fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<div class="row">
																	<div class="col-md-3 col-xs-4"><img src="assets/images/photodune-4043508-3d-modern-office-room-l.jpg" alt="offce" class="img-responsive"/>
																	</div>
																	<div class="col-md-9 col-xs-8">
																		<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
																	</div>
																</div>
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-orange">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-map-marker fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<div class="row">
																	<div class="col-md-3 col-xs-4"><img src="assets/images/photodune-4043508-3d-modern-office-room-l.jpg" alt="offce" class="img-responsive"/>
																	</div>
																	<div class="col-md-9 col-xs-8">
																		<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
																	</div>
																</div>
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-transparent-white">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-blue">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_content">
																<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_content">
																<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
												</ul>
												<div class="date_separator" id="august" data-appear-top-offset="-400">
													<span>August 2014</span>
												</div>
												<ul class="columns">
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-map-marker fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<div class="row">
																	<div class="col-md-3 col-xs-4"><img src="assets/images/photodune-4043508-3d-modern-office-room-l.jpg" alt="offce" class="img-responsive"/>
																	</div>
																	<div class="col-md-9 col-xs-8">
																		<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
																	</div>
																</div>
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-orange">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_title">
																<i class="fa fa-map-marker fa-2x pull-left fa-border"></i>
																<h4 class="light-text no-margin padding-5">Appointment</h4>
															</div>
															<div class="timeline_content">
																<div class="row">
																	<div class="col-md-3 col-xs-4"><img src="assets/images/photodune-4043508-3d-modern-office-room-l.jpg" alt="offce" class="img-responsive"/>
																	</div>
																	<div class="col-md-9 col-xs-8">
																		<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
																	</div>
																</div>
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-transparent-white">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-azure">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_content">
																<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline_element partition-white">
															<div class="timeline_date">
																<div>
																	<div class="inline-block">
																		<span class="day text-bold">05</span>
																	</div>
																	<div class="inline-block">
																		<span class="block week-day text-extra-large">Wensdey</span>
																		<span class="block month text-large text-light">november 2014</span>
																	</div>
																</div>
															</div>
															<div class="timeline_content">
																<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
															</div>
															<div class="readmore">
																<a href="#" class="btn btn-light-blue">
																	Read More <i class="fa fa-arrow-circle-right"></i>
																</a>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- end: TIMELINE PANEL -->
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