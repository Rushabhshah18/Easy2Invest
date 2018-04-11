<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Easy2Invest - Responsive Admin Template</title>
<!-- start: META -->
<meta charset="utf-8" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
<!-- end: META -->
<!-- start: MAIN CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/plugins/animate.css/animate.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/plugins/iCheck/skins/all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/css/styles.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/css/styles-responsive.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front/plugins/iCheck/skins/all.css">
<!--[if IE 7]>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/front/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
<!-- end: MAIN CSS -->

<script type="text/javascript">
	function ValidateForm(form) {
		ErrorText = "";
		
		if ((form.user[0].checked == false) && (form.user[1].checked == false)
				&& (form.user[2].checked == false)) {
			alert("Please choose your Type: Investor or Idea Owner or Admin");
			return false;
		}
		
	}
	function hello()
	{
		var a,b;
		a=document.getElementById("yyyy").value;
		if (isNaN(a) || a<1970 || a>2010) 
		{
			b="Entre valid Year between 1970 to 2010";
		}
		
		document.getElementById("aa").innerHTML=b;
	}
</script>
</head>
<body>
<body class="login">
	<div class="row">
		<div
			class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="logo">
				<h2 style="margin-top: 0px;margin-bottom:3%;">Easy2Invest <span style="color:#E74100;">Investment</span></h2>
			</div>
			<!-- start: LOGIN BOX -->
			
			<!-- end: LOGIN BOX -->
			<!-- start: FORGOT BOX -->
			
			<!-- end: FORGOT BOX -->
			<!-- start: REGISTER BOX -->
			<div class="box-register" style="background-color:white;">
				<h3>Sign Up</h3>
				<p>Enter your personal details below:</p>
				<form class="form-register"
					action="<%=request.getContextPath()%>/register" method="post" onsubmit="hello()">
					<div class="errorHandler alert alert-danger no-display">
						<i class="fa fa-remove-sign"></i> You have some form errors.
						Please check below.
					</div>
					<fieldset>
						<div class="form-group">
							<input type="text" class="form-control" name="firstname"
								placeholder="First Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="lastname"
								placeholder="Last Name">
						</div>
						<div class="form-group">
							<span class="input-icon"> <input type="email"
								class="form-control" name="email" placeholder="Email"> <i
								class="fa fa-envelope"></i>
							</span>
						</div>

						<div class="form-group">
							<div>
								<label class="radio-inline"> <input type="radio"
									class="grey" value="Investor" name="user"> Investor
								</label> <label class="radio-inline"> <input type="radio"
									class="grey" value="Entreprenure" name="user">
									Entreprenure
								</label>
							</div>
						</div>
						<div class="form-group">
							<span class="input-icon"> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Password"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<div class="form-group">
							<span class="input-icon"> <input type="password"
								class="form-control" id="password" name="confirm_password"
								placeholder="Confirm Password"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="Address">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="city"
								placeholder="City">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="zipcode"
								placeholder="zipcode">
						</div>

						<div class="form-group">
							<div>
								<label class="radio-inline"> <input type="radio"
									class="grey" value="Female" name="gender"> Female
								</label> <label class="radio-inline"> <input type="radio"
									class="grey" value="Male" name="gender"> Male
								</label>
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group connected-group">
								<label class="control-label"> Date of Birth <span
									class="symbol required"></span>
								</label>
								<span  id="aa" style="color:red;padding-left: 59px;"></span></div>
								<div class="row">
									<div class="row">
												<div class="col-md-4">
																<select name="date" id="dd" class="form-control" >
																	<option value="">DD</option>
																	<option value="01">1</option>
																	<option value="02">2</option>
																	<option value="03">3</option>
																	<option value="04">4</option>
																	<option value="05">5</option>
																	<option value="06">6</option>
																	<option value="07">7</option>
																	<option value="08">8</option>
																	<option value="09">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																	<option value="13">13</option>
																	<option value="14">14</option>
																	<option value="15">15</option>
																	<option value="16">16</option>
																	<option value="17">17</option>
																	<option value="18">18</option>
																	<option value="19">19</option>
																	<option value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
																</select>
															</div>
															<div class="col-md-4">
																<select name="month" id="mm" class="form-control" >
																	<option value="">MM</option>
																	<option value="01">1</option>
																	<option value="02">2</option>
																	<option value="03">3</option>
																	<option value="04">4</option>
																	<option value="05">5</option>
																	<option value="06">6</option>
																	<option value="07">7</option>
																	<option value="08">8</option>
																	<option value="09">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																</select>
															</div>
															<div>
										
										<div class="col-md-4">
											<input type="text" placeholder="Year" id="yyyy" name="yyyy"
												class="form-control">
										</div>
										
									</div>

								</div>
								<div class="form-group">
									<div>
										<label for="agree" class="checkbox-inline"> <input
											type="checkbox" class="grey agree" id="agree" name="agree"
											value="agree"> I agree to the Terms of Service and
											Privacy Policy
										</label>

									</div>
								</div>
								<div class="form-actions">
									Already have an account? <a href="<%=request.getContextPath()%>/webcontent/info/login.jsp" class="go-back">
										Log-in </a><br> <input type="hidden" value="doRegisterUser"
										name="actionCode">
										<input type="hidden" value="throughRegisterPage"
										name="pathway">
									<button type="submit" class="btn btn-green pull-right"
										onClick="return ValidateForm(this.form);">
										Submit <i class="fa fa-arrow-circle-right"></i>
									</button>
								</div>
					</fieldset>
				</form>
				<!-- start: COPYRIGHT -->
				<div class="copyright">2016 &copy; Easy2Invest by cliptheme.</div>
				<!-- end: COPYRIGHT -->
			</div>
			<!-- end: REGISTER BOX -->
		</div>
	</div>
	<br>
	<jsp:include page="mainjs.jsp"></jsp:include>
	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="<%=request.getContextPath()%>/front/plugins/respond.min.js"></script>
		<script src="<%=request.getContextPath()%>/front/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/front/plugins/jQuery/jquery-1.11.1.min.js"></script>
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
		src="<%=request.getContextPath()%>/front/plugins/iCheck/jquery.icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/jquery.transit/jquery.transit.js"></script>
	<script
		src="<%=request.getContextPath()%>/front/plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
	<script src="<%=request.getContextPath()%>/front/js/main.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="<%=request.getContextPath()%>/front/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/front/js/register.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			Login.init();
			SVExamples.init();
			FormWizard.init();

		});
		
	</script>

</body>
<!-- end: BODY -->

</body>
</html>