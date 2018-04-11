<!DOCTYPE html>
<!-- Template Name: Rapido - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.2 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
	<!--<![endif]-->
	<!-- start: HEAD -->
	<%
	String userName=(String)session.getAttribute("userName");
	String email=(String)session.getAttribute("email");
	System.out.print(userName+email);
	%>
<!-- Mirrored from www.cliptheme.com/demo/rapido/login_lock_screen.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Sep 2016 15:46:29 GMT -->
<head>
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
		<title>Easy2Invest</title>
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
		<link rel="stylesheet" href="<%= request.getContextPath()%>/front/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath()%>/front/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles.css">
		<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles-responsive.css">
		<link rel="stylesheet" href="<%= request.getContextPath()%>/front/plugins/animate.css/animate.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/print.css" type="text/css" media="print"/>
		<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="shortcut icon" href="favicon.ico" />
	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body class="lock-screen">
		<div class="main-ls animated flipInX">
			<div class="logo">
				<img src="<%= request.getContextPath()%>/front/images/logo.png">
			</div>
			<div class="box-ls">
				<img alt="" src="<%=request.getContextPath()%>/front/images/Rush.png" height="35%" width="35%"/>
				<div class="user-info">
					<h1><i class="fa fa-lock"></i><%=userName%></h1>
					<span><%=email%></span>
					<span><em>Please enter your password to un-lock.</em></span>
					<form action="<%=request.getContextPath()%>/Store">
						<div class="input-group">
							<input type="password" placeholder="Password" class="form-control" name="password">
							<span class="input-group-btn">
								<button class="btn btn-green" type="submit">
									<i class="fa fa-chevron-right"></i>
								</button> </span>
								<input type="hidden" value="doUnlockPanel" name="actionCode"/>
						</div>
						<div class="relogin">
							<a href="<%=request.getContextPath()%>/Store?actionCode=doLogOut">
								Not <%=userName%>?</a>
								
						</div>
					</form>
				</div>
			</div>
			<div class="copyright">
				2017 &copy; Easy2Invest
			</div>
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="../../../ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<!--<![endif]-->
		<script src="<%= request.getContextPath()%>/front/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
		<script src="<%= request.getContextPath()%>/front/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%= request.getContextPath()%>/front/plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="<%= request.getContextPath()%>/front/js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
			});
		</script>
	</body>
	<!-- end: BODY -->

<!-- Mirrored from www.cliptheme.com/demo/rapido/login_lock_screen.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Sep 2016 15:46:30 GMT -->
</html>