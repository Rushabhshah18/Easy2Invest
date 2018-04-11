<%@ page import="com.model.proposal"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
    	if(null == session.getAttribute("userName")){
    		String address="/webcontent/info/login.jsp";
    		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(address);
    		requestDispatcher.forward(request,response);
    	}
    %>
<%
	List<proposal> listsProposal = (List<proposal>)session.getAttribute("proposal");
%>
<%!int id;
	String senderName;
	String recieverName;
	String email;
	String city;
	int amount;
	String idea;%>
<%
	if (!listsProposal.isEmpty() && listsProposal != null) {

		Iterator it = listsProposal.iterator();
		proposal proposals = null;
		while (it.hasNext()) {
	proposals = (proposal) it.next();

	id = proposals.getId();
	senderName = proposals.getSender();
	recieverName = proposals.getReceiver();
	email = proposals.getEmail();
	amount=proposals.getAmount();
	city=proposals.getCity();
	idea=proposals.getProposalIdea();
		}

	}else{
		out.println("Hello");
	}
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
								<i class="fa fa-pencil-square"></i> PROPOSAL
							</h2>
							<p>Create one account to manage everything you do with
								Rapido, from your shopping preferences to your Rapido activity.
							</p>
							<hr>
							
							<form action="<%=request.getContextPath()%>/proposal" role="form"
								id="form">
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
											<label class="control-label"> Sender Name <span
												class="symbol required"></span>
											</label> <input class="form-control tooltips" type="text"
												data-original-title="Insert your name here"
												data-rel="tooltip" title="" data-placement="top"
												name="senderName" id="sender" value="<%=senderName%>">
											<div class="form-group">
												<label class="control-label" style="padding-top: 2%;">
													Receiver Name <span class="symbol required"></span>
												</label> <input class="form-control tooltips" type="text"
													data-original-title="Insert your name here"
													data-rel="tooltip" title="" data-placement="top"
													name="receiverName" id="receiver" value="<%=recieverName%>">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label"> City <span
												class="symbol required"></span>
											</label> <input class="form-control tooltips" type="text"
												data-original-title="Enter Your City" data-rel="tooltip"
												title="" data-placement="top" name="city" id="city" value="<%=city%>">
										</div>

										<div class="form-group">
											<label class="control-label"> Email Address <span
												class="symbol required"></span>
											</label> <input type="email" placeholder="Text Field"
												data-original-title="Enter your Email" class="form-control"
												id="email" name="email" value="<%=email%>">
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
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label class="control-label"> Proposal Idea<span
												class="symbol required"></span><br>
											</label><br>
											<textarea cols="70" rows="10" placeholder="Enter Your Future"
												data-original-title="Enter your Thoghts" border="3"
												name="proposal" id="proposal" ><%=idea%></textarea>
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
								<input type="hidden" name="actionCode" value="doUpdateProposal">
								<input type="hidden" name="id" value="<%=id%>">
								<button class="btn btn-yellow btn-block" type="submit">
									SEND <i class="fa fa-arrow-circle-right"></i>
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
								<img src="assets/images/avatar-2-small.jpg" alt="">
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
								<img src="assets/images/avatar-3-small.jpg" alt="">
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
								<img src="assets/images/avatar-4-small.jpg" alt="">
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
	<script>
		jQuery(document).ready(function() {
			Main.init();
			SVExamples.init();
			FormValidator.init();
		});
	</script>



</body>
</html>