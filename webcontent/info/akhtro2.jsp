<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
//This will be triggered everytime a user types anything
//in the input field with id as input-field
$("#input-field").keyup(function(e) {
// Our regex
// a-z => allow all lowercase alphabets
// A-Z => allow all uppercase alphabets
// 0-9 => allow all numbers
// @ => allow @ symbol
var regex = /^[a-zA-Z0-9@]+$/;
// This is will test the value against the regex
// Will return True if regex satisfied
if (regex.test(this.value) !== true)
//alert if not true
//alert("Invalid Input");

// You can replace the invalid characters by:
 this.value = this.value.replace(/[^a-zA-Z0-9@]+/, '');
});


</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
 <%-- <%
									String error="Go";
									if((session.getAttribute("errors")).equals(null)){
										System.out.println("Null");
									};
									if(!(session.getAttribute("errors")).equals(null)){
									error=(String)session.getAttribute("errors");
									}
									if(error.contains("Success")){
										%><div class="alert alert-success">Success</div><% session.setAttribute("error", "Go");
									}if(error.contains("Failed")){
										%><div class="alert alert-danger">Failed</div><%session.setAttribute("error", "Go");
									}if(error.contains("Go")){
										%><div></div><%
									}
									
									 %>  --%>
<%String errors=(String)session.getAttribute("errors"); 
out.print(errors);

%>
<div class="row">
							<div class="col-md-7 col-lg-4">
								<div class="panel panel-dark">
									<div class="panel-heading">
										<h4 class="panel-title">Browser</h4>
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
									<div class="panel-body no-padding">
										<div class="partition-green padding-15 text-center">
											<h4 class="no-margin">Monthly Statistics</h4>
											<span class="text-light">based on the major browsers</span>
										</div>
									</div>
										
								</div>
							</div>
							
						</div>
						
 <form action="<%=request.getContextPath()%>/UploadServlet" enctype="multipart/form-data">
															<!-- <input type="hidden"> -->
															Select file to upload: <input type="file" name="dataFile"
																id="fileChooser" /><br /> <br /> <input type="submit"
																value="Upload" />
														</form>
														<form action="akhtro.jsp">
															<input type="text" id="input-field" pattern="[A-Za-z]{}" title="Three letter country code" />
															<input type="submit">
														</form>
</body>
</html>