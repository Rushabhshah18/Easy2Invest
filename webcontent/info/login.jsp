<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Easy2Invest - Responsive Admin Template</title>
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
		<!-- start: META -->
		<meta charset="utf-8" />
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: MAIN CSS -->
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/plugins/animate.css/animate.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/plugins/iCheck/skins/all.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/css/styles.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/css/styles-responsive.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/plugins/iCheck/skins/all.css">
		<!--[if IE 7]>
		<link rel="stylesheet" href="<%= request.getContextPath() %>/front/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<!-- end: MAIN CSS -->
		
		<script type="text/javascript">
	
	function ValidateForm(form) {
		ErrorText = "";
		if ((form.user[0].checked == false)
				&& (form.user[1].checked == false) 
				&& (form.user[2].checked == false)) {
			alert("Please choose your Type: Investor or Idea Owner or Admin");
			return false;
		}
	}
</script>
</head>
<body>
<%!String error; %>
	<body class="login">
		<div class="row">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
				<div class="logo">
					<h2 style="margin-top: 0px;">Easy2Invest <span style="color:#E74100;">Investment</span></h2>
				</div>
				<!-- start: LOGIN BOX -->
				<div class="box-login" style="    top: 89px;">
					<p>
					<h3>Sign in to your account</h3>
						Please enter your name and password to log in.
					</p>
					<div class="error alert alert-danger hidden">
</div>
					
					<form class="form-login" action="<%=request.getContextPath()%>/Store">
						<div class="errorHandler alert alert-danger no-display">
							<i class="fa fa-remove-sign"></i> You have some form errors. Please check below.
						</div>
						<fieldset>
							<div class="form-group">
								<span class="input-icon">
									<input type="text" class="form-control" name="username" placeholder="Username">
									<i class="fa fa-user"></i> </span>
							</div>
							<div class="form-group form-actions">
								<span class="input-icon">
									<input type="password" class="form-control password" name="password" placeholder="Password">
									<i class="fa fa-lock"></i>
									<a class="forgot" href="#">
										I forgot my password
									</a> </span>
							</div>
				
							<div class="form-group">
								<div>
									<label class="radio-inline control-label">
									<input type="radio" value="Investor" name="user" class="square-black"    style="position: absolute; top: -10%; left: -10%; display: block; width: 120%; height: 120%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
									<!-- <input type="radio" class="grey" value="Investor" name="user" id="gender_female"> -->
										Investor
									</label>
									<label class="radio-inline">
									<input type="radio" value="Entreprenure" name="user" class="square-black"  required="required"   style="position: absolute; top: -10%; left: -10%; display: block; width: 120%; height: 120%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
										
										Entreprenure
									</label>
								</div>
							</div>
							<div class="form-actions">
								<label for="remember" class="checkbox-inline">
									<input type="checkbox" class="grey remember" id="remember" name="remember">
									Keep me signed in
								</label>
								<button type="submit" class="btn btn-green pull-right" onClick="return ValidateForm(this.form);">
									Login <i class="fa fa-arrow-circle-right"></i>
								</button>
								<input type="hidden" value="doLogin" name="actionCode"/>
							</div>
							<div class="new-account">
								Don't have an account yet?
								<a href="<%= request.getContextPath() %>/webcontent/info/Register.jsp" class="register">
									Create an account
								</a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp" >
									Home
								</a>
							</div>
						</fieldset>
					</form>
					<!-- start: COPYRIGHT -->
					<div class="copyright">
						2016 &copy; Easy2Invest.
					</div>
					<!-- end: COPYRIGHT -->
				</div>
				<!-- end: LOGIN BOX -->	
				<!-- start: FORGOT BOX -->
				<div class="box-forgot">
					<h3>Forget Password?</h3>
					<p>
						Enter your e-mail address below to reset your password.
					</p>
					<form class="form-forgot" action="<%=request.getContextPath()%>/Invest" method="post">
						<div class="errorHandler alert alert-danger no-display">
							<i class="fa fa-remove-sign"></i> You have some form errors. Please check below.
						</div>
						<fieldset>
							<div class="form-group">
								<span class="input-icon">
									<input type="email" class="form-control" name="email" placeholder="Email">
									<i class="fa fa-envelope"></i> </span>
							</div>
							<div class="form-group">
								<div>
									<label class="radio-inline control-label">
									<input type="radio" value="Investor" name="user" class="square-black"    style="position: absolute; top: -10%; left: -10%; display: block; width: 120%; height: 120%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
									<ins class="iCheck-helper"value="Investor" name="user" style="position: absolute; top: -10%; left: -10%; display: block; width: 120%; height: 120%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
										<!-- <input type="radio" class="grey" value="Investor" name="user" id="gender_female"> -->
										Investor
									</label>
									<label class="radio-inline">
									<input type="radio" value="Entreprenure" name="user" class="square-black"    style="position: absolute; top: -10%; left: -10%; display: block; width: 120%; height: 120%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
										
										Entreprenure
									</label>
								</div>
							</div>
								
							<div class="form-actions">
								<a class="btn btn-light-grey go-back">
									<i class="fa fa-chevron-circle-left"></i> Log-In
								</a>
								<input type="hidden" value="forget_password" name="actionCode">
								<button type="submit" class="btn btn-green pull-right" onClick="return ValidateForm(this.form);">
									Submit <i class="fa fa-arrow-circle-right"></i>
								</button>
							</div>
						</fieldset>
					</form>
					<!-- start: COPYRIGHT -->
					<div class="copyright">
						2016 &copy; Easy2Invest.
					</div>
					<!-- end: COPYRIGHT -->
				</div>
				<!-- end: FORGOT BOX -->
				<!-- start: REGISTER BOX -->
				<% error=(String)session.getAttribute("error"); %>
				<input type="hidden" class="error" value="<%=error%>">
				<!-- end: REGISTER BOX -->
			</div>
		</div>
		<jsp:include page="mainjs.jsp"></jsp:include>
		<!-- start: MAIN JAVASCRIPTS -->
		<!--[if lt IE 9]>
		<script src="<%= request.getContextPath() %>/front/plugins/respond.min.js"></script>
		<script src="<%= request.getContextPath() %>/front/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/front/plugins/jQuery/jquery-1.11.1.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="<%= request.getContextPath() %>/front/plugins/jQuery/jquery-2.1.1.min.js"></script>
		<!--<![endif]-->
		<script src="<%= request.getContextPath() %>/front/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
		<script src="<%= request.getContextPath() %>/front/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%= request.getContextPath() %>/front/plugins/iCheck/jquery.icheck.min.js"></script>
		<script src="<%= request.getContextPath() %>/front/plugins/jquery.transit/jquery.transit.js"></script>
		<script src="<%= request.getContextPath() %>/front/plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
		<script src="<%= request.getContextPath() %>/front/js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="<%= request.getContextPath() %>/front/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
		<script src="<%= request.getContextPath() %>/front/js/login.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
				SVExamples.init();
				FormWizard.init();
				
			});
			<%
			String error = (String) session.getAttribute("error");
			session.setAttribute("error",null);
			if(error!=null)
			{
		%>
			$(".error").removeClass("hidden").text("<%= error%>");
		<%
			}
		%>
			
			</script> 
		
	</body>
	<!-- end: BODY -->
	<%System.currentTimeMillis(); %>
</body>
</html>