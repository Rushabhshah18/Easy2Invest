<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.model.idea"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%
    	if(null == session.getAttribute("userName")){
    		String address="/webcontent/info/login.jsp";
    		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(address);
    		requestDispatcher.forward(request,response);
    	}
    %>
    <%
	List<idea> List_updateidea = (List<idea>)session.getAttribute("List_updateidea");
%>
<%!int id;
	public String entreprenureName;
	public String abstractIdea;
	public String email;
	public String city;
	public int amount;
	public String ideas; %>
	<%
	if (!List_updateidea.isEmpty() && List_updateidea != null) {

		Iterator it = List_updateidea.iterator();

		idea idea = (idea) it.next();

		id = idea.getId();
		 entreprenureName=idea.getEntreprenureName();
		abstractIdea=idea.getAbstractIdea();
		 email=idea.getEmail();
		 city=idea.getCity();
		 amount=idea.getAmount();
		 System.out.println(entreprenureName +" "+abstractIdea+" "+email+" "+city+" "+amount);
	
	%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	<jsp:include page="headerInclude.jsp"></jsp:include>
<!-- end: CORE CSS -->
<link rel="shortcut icon" href="favicon.ico" />

<style type="text/css">
.side {
	padding-left: 3% !important;
}

.down {
	margin-bottom: 2% !important;
}
</style>
</head>
<body>

	<!-- start: MAIN CONTAINER -->
	<div class="main-container inner">
		<!-- start: PAGE -->
		<div class="main-content">
			<!-- start: PANEL CONFIGURATION MODAL FORM -->
			<div class="modal fade" id="panel-config" tabindex="-1" role="dialog"
				aria-hidden="true">
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
						<h1>Proposal Form</h1>
					</div>
					<div class="col-sm-6 col-xs-12">
						<a href="#" class="back-subviews"> <i
							class="fa fa-chevron-left"></i> BACK
						</a> <a href="#" class="close-subviews"> <i class="fa fa-times"></i>
							CLOSE
						</a>

					</div>
				</div>
			</div>
			<!-- end: TOOLBAR -->
			<!-- end: PAGE HEADER -->
			<!-- start: BREADCRUMB -->
			<div class="row">
				<div class="col-md-12 side">
					<ol class="breadcrumb">
						<li><a href="#"> Dashboard </a></li>
						<li class="active">Form Validation</li>
					</ol>
				</div>
			</div>
			<!-- end: BREADCRUMB -->
			<!-- start: PAGE CONTENT -->
			<div class="row side">
				<div class="col-md-12">
					<!-- start: FORM VALIDATION 1 PANEL -->
					<div class="panel panel-white side">
						<div class="panel-heading ">
							<h4 class="panel-title">
								Form <span class="text-bold">Validation 1</span>
							</h4>
							<div class="panel-tools">
								<div class="dropdown">
									<a data-toggle="dropdown"
										class="btn btn-xs dropdown-toggle btn-transparent-grey"> <i
										class="fa fa-cog"></i>
									</a>
									<ul class="dropdown-menu dropdown-light pull-right" role="menu">
										<li><a class="panel-collapse collapses" href="#"><i
												class="fa fa-angle-up"></i> <span>Collapse</span> </a></li>
										<li><a class="panel-refresh" href="#"> <i
												class="fa fa-refresh"></i> <span>Refresh</span>
										</a></li>
										<li><a class="panel-config" href="#panel-config"
											data-toggle="modal"> <i class="fa fa-wrench"></i> <span>Configurations</span>
										</a></li>
										<li><a class="panel-expand" href="#"> <i
												class="fa fa-expand"></i> <span>Fullscreen</span>
										</a></li>
									</ul>
								</div>
								<a class="btn btn-xs btn-link panel-close" href="#"> <i
									class="fa fa-times"></i>
								</a>
							</div>
						</div>
						<div class="panel-body">
							<h2>
								<i class="fa fa-pencil-square"></i> IDEA
							</h2>
							<p>Create one account to manage everything you do with
								Idea, from your shopping preferences to your Investment activity.
							</p>
							<hr>
							<form action="<%=request.getContextPath()%>/Idea" role="form"
								id="form" method="post" >
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
											<label class="control-label"> Entreprenure Name <span
												class="symbol required"></span>
											</label> <input class="form-control tooltips" type="text"
												data-original-title="Insert your name here"
												data-rel="tooltip" title="" data-placement="top"
												name="entreprenureName" id="sender" value="<%=entreprenureName%>" >
											<div class="form-group">
												<label class="control-label" style="padding-top: 2%;">
													Abstract Idea <span class="symbol required"></span>
												</label> <input class="form-control tooltips" type="text"
													data-original-title="Insert your name here"
													data-rel="tooltip" title="" data-placement="top"
													name="abstractIdea" id="receiver" value="<%=abstractIdea%>"">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label"> City <span
												class="symbol required"></span>
											</label> <input class="form-control tooltips" type="text"
												data-original-title="Enter Your City" data-rel="tooltip"
												title="" data-placement="top" name="city" id="city" value="<%=city%>" >
										</div>

										<div class="form-group">
											<label class="control-label"> Email Address <span
												class="symbol required"></span>
											</label> <input type="email" placeholder="Text Field"
												data-original-title="Enter your Email" class="form-control"
												id="email" name="email"value="<%=email%>" >
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label"> Amount <span
												class="symbol required"></span>
											</label> <input class="form-control tooltips" type="number"
												data-original-title="Amount you need to insert"
												data-rel="tooltip" title="" data-placement="top"
												name="amount" id="amount" value="<%=amount%>">
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
								<p>By clicking SEND, you are agreeing to the Policy and
									Terms &amp; Conditions.</p>
							</div>
							<div class="col-md-4 down">
								<input type="hidden" name="actionCode" value="doUpdateIdea">
								
								<button class="btn btn-yellow btn-block" type="submit">
									SEND <i class="fa fa-arrow-circle-right"></i>
								</button>
							</div>
						</div>
						</form>
						<%
							}
						%>
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

	<!-- *** NEW CONTRIBUTOR *** -->
	<jsp:include page="subview.jsp"></jsp:include>
	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jQuery/jquery-1.11.1.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<script
		src="<%=request.getContextPath()%>/front/plugins/jQuery/jquery-2.1.1.min.js"></script>
	<!--<![endif]-->
	<script
		src="<%=request.getContextPath()%>/front/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/blockUI/jquery.blockUI.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/iCheck/jquery.icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/moment/min/moment.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/bootbox/bootbox.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/jquery.scrollTo/jquery.scrollTo.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/ScrollToFixed/jquery-scrolltofixed-min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/jquery.appear/jquery.appear.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/velocity/jquery.velocity.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<script src="<%=request.getContextPath()%>/front/js/form-validation.js"></script>
	<jsp:include page="mainjs.jsp"></jsp:include>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			SVExamples.init();
			FormValidator.init();
		});
	</script>



</body>
</html>