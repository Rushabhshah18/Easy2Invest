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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proposal page</title>
<jsp:include page="headerInclude.jsp"></jsp:include>
<!-- start: CORE CSS -->
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
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
									<h1>Faq <small>using tabs and accordions</small></h1>
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
										Faq
									</li>
								</ol>
							</div>
						</div>
						<!-- end: BREADCRUMB -->
						<!-- start: PAGE CONTENT -->
						<div class="row">
							<div class="col-md-12">
								<!-- start: FAQ -->
								<div class="tabbable tabs-left faq">
									<ul id="myTab3" class="nav nav-tabs">
										<li class="active">
											<a href="#faq_example1" data-toggle="tab">
												<i class="fa fa-smile-o"></i> About the new Product
											</a>
										</li>
										<li class="">
											<a href="#faq_example2" data-toggle="tab">
												<i class="fa fa-shopping-cart"></i> Buying Product
											</a>
										</li>
										<li class="">
											<a href="#faq_example3" data-toggle="tab">
												<i class="fa fa-lightbulb-o"></i> Benefits of the new Product
											</a>
										</li>
										<li class="">
											<a href="#faq_example4" data-toggle="tab">
												<i class="fa fa-download"></i> Download and install the Product
											</a>
										</li>
										<li class="">
											<a href="#faq_example5" data-toggle="tab">
												<i class="fa fa-laptop"></i> Billing and renewal
											</a>
										</li>
										<li class="">
											<a href="#faq_example6" data-toggle="tab">
												<i class="fa fa-wrench"></i> Support and resources
											</a>
										</li>
										<li class="">
										<form action="<%=request.getContextPath()%>/webcontent/info/addFaqs.jsp">
												
												<button type="submit" class="btn btn-azure" style="width: 216px;margin-top: 10px;margin-left: 10px;">
												Wann ask Us something?
												</button>
											
											</form>
											
										</li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane active" id="faq_example1">
											<div id="accordion" class="panel-group accordion accordion-custom accordion-teal">
																								
												<h3 class="margin-bottom-15">About the new Product</h3>
												
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_1_1" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle">
															<i class="icon-arrow"></i> Excepteur sint obcaecat cupiditat non proident?
														</a></h4>
													</div>
													<div class="panel-collapse collapse in" id="faq_1_1">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_1_2" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Quis aute iure reprehenderit in voluptate velit esse cillum?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_1_2">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_1_3" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Nemo enim ipsam voluptatem, quia voluptas sit?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_1_3">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_1_4" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Excepteur sint obcaecat cupiditat non proident?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_1_4">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_1_5" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Quis aute iure reprehenderit in voluptate velit esse cillum?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_1_5">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_1_6" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Nemo enim ipsam voluptatem, quia voluptas sit?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_1_6">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="faq_example2">
											<div id="accordion2" class="panel-group accordion accordion-custom accordion-teal">
												<h3 class="margin-bottom-15"> Buying Product</h3>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_2_1" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle">
															<i class="icon-arrow"></i> Spernatur aut odit aut fugit sed quia consequuntur magni?
														</a></h4>
													</div>
													<div class="panel-collapse collapse in" id="faq_2_1">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_2_2" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Qui ratione voluptatem sequi nesciunt?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_2_2">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_2_3" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Quis nostrum exercitationem ullam corporis suscipit laboriosam?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_2_3">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_2_4" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Nisi ut aliquid ex ea commodi consequatur?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_2_4">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_2_5" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Quis autem vel eum iure reprehenderit?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_2_5">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="faq_example3">
											<div id="accordion3" class="panel-group accordion accordion-custom accordion-teal">
												<h3 class="margin-bottom-15">Benefits of the new Product</h3>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_1" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
															<i class="icon-arrow"></i> Quis autem vel eum iure reprehenderit?
														</a></h4>
													</div>
													<div class="panel-collapse collapse in" id="faq_3_1">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_2" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Nisi ut aliquid ex ea commodi consequatur?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_3_2">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_3" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Quis nostrum exercitationem ullam corporis suscipit laboriosam?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_3_3">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_4" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Excepteur sint obcaecat cupiditat non proident
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_3_4">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_5" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Temporibus autem quibusdam et aut officiis?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_3_5">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_6" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Anim pariatur cliche reprehenderit?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_3_6">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_7" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
															<i class="icon-arrow"></i> Excepteur sint obcaecat cupiditat non proident
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_3_7">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_3_8" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Temporibus autem quibusdam et aut officiis?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_3_8">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="faq_example4">
											<div id="accordion4" class="panel-group accordion accordion-custom accordion-teal">
												<h3 class="margin-bottom-15">Download and install the Product</h3>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_4_1" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle">
															<i class="icon-arrow"></i> Feugiat nulla facilisis at vero eros?
														</a></h4>
													</div>
													<div class="panel-collapse collapse in" id="faq_4_1">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_4_2" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Accumsan et iusto odio dignissim qui blandit?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_4_2">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_4_3" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Nam liber tempor cum soluta nobis?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_4_3">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_4_4" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Placerat facer possim assum?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_4_4">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_4_5" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Typi non habent claritatem insitam?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_4_5">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_4_6" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Est usus legentis in iis qui facit eorum?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_4_6">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="faq_example5">
											<div id="accordion5" class="panel-group accordion accordion-custom accordion-teal">
												<h3 class="margin-bottom-15">Billing and renewal</h3>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_5_1" data-parent="#accordion5" data-toggle="collapse" class="accordion-toggle">
															<i class="icon-arrow"></i> Investigationes demonstraverunt lectores?
														</a></h4>
													</div>
													<div class="panel-collapse collapse in" id="faq_5_1">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_5_2" data-parent="#accordion5" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Legere me lius quod ii legunt saepius?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_5_2">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_5_3" data-parent="#accordion5" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Claritas est etiam processus dynamicus?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_5_3">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_5_4" data-parent="#accordion5" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Qui sequitur mutationem consuetudium lectorum?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_5_4">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_5_5" data-parent="#accordion5" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Mirum est notare quam littera gothica?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_5_5">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_5_6" data-parent="#accordion5" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Quam nunc putamus parum claram?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_5_6">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="faq_example6">
											<div id="accordion6" class="panel-group accordion accordion-custom accordion-teal">
												<h3 class="margin-bottom-15">Support and resources</h3>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_6_1" data-parent="#accordion6" data-toggle="collapse" class="accordion-toggle">
															<i class="icon-arrow"></i> Anteposuerit litterarum formas humanitatis?
														</a></h4>
													</div>
													<div class="panel-collapse collapse in" id="faq_6_1">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_6_2" data-parent="#accordion6" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Per seacula quarta decima?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_6_2">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_6_3" data-parent="#accordion6" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Eodem modo typi?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_6_3">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_6_4" data-parent="#accordion6" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Qui nunc nobis videntur parum clari?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_6_4">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_6_5" data-parent="#accordion6" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Fiant sollemnes in futurum?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_6_5">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_6_6" data-parent="#accordion6" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Quis nostrud exerci tation ullamcorper suscipit lobortis?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_6_6">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#faq_6_7" data-parent="#accordion6" data-toggle="collapse" class="accordion-toggle collapsed">
															<i class="icon-arrow"></i> Aliquip ex ea commodo consequat?
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="faq_6_7">
														<div class="panel-body">
															Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end: FAQ -->
							</div>
						</div>
			
						<!-- end: PAGE CONTENT-->
					</div>
					<div class="subviews">
						<div class="subviews-container"></div>
					</div>
				
				<!-- end: PAGE -->
		
			<!-- end: MAIN CONTAINER -->
			<!-- start: FOOTER -->
			<!-- start: FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- end: FOOTER -->
		
		
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