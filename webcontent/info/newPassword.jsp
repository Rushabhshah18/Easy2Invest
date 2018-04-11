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
		<!-- end: MAIN CSS -->>
		
</head>
<body>
	<body class="login">
		<div class="row">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
				<div class="logo">
					<img src="<%= request.getContextPath() %>/frontend/img/logos.png" >
				</div>
				<!-- start: LOGIN BOX -->
				<%
					String email=(String)session.getAttribute("email");
				String differentUser=(String)session.getAttribute("differentUser");
				int userId=(Integer)session.getAttribute("userId");
				System.out.println(email+" "+differentUser+" "+userId);
				%>
				<!-- end: LOGIN BOX -->	
				<!-- start: FORGOT BOX -->
			
				<!-- end: FORGOT BOX -->
				<!-- start: REGISTER BOX -->
				<div class="box-login">
				<h3>Forget Password?</h3>
					<p>
						Enter your New Passwords Below
					</p>
					<form action="<%=request.getContextPath()%>/Invest">
							<div class="form-group">
								<span class="input-icon">
									<input type="password" class="form-control" id="password" name="password" placeholder="Password">
									<i class="fa fa-lock"></i> </span>
							</div>
							<div class="form-group">
								<span class="input-icon">
									<input type="password" class="form-control" name="password_again" placeholder="Password Again">
									<i class="fa fa-lock"></i> </span>
							</div>
							
							<div class="form-actions">
								<input type="hidden" value="newPassword" name="actionCode"/>
								<input type="hidden" value="<%=email%>" name="userEmail"/>
								<input type="hidden" value="<%=differentUser%>" name="userType"/>
								<input type="hidden" value="<%=userId%>" name="userId"/>
								<button type="submit" class="btn btn-green pull-right">
									Submit <i class="fa fa-arrow-circle-right"></i>
								</button>
							</div>
						</fieldset>
					</form>
					<!-- start: COPYRIGHT -->
					<div class="copyright">
						2016 &copy; Easy2Invest by cliptheme.
					</div>
					<!-- end: COPYRIGHT -->
				</div>
				<!-- end: REGISTER BOX -->
			</div>
		</div>
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
				
			});
			
			</script> 
		
	</body>
	<!-- end: BODY -->
	<%System.currentTimeMillis(); %>
</body>
</html>