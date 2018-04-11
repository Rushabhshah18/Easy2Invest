<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
					String email=(String)session.getAttribute("email");
				String differentUser=(String)session.getAttribute("differentUser");
				String userId=(String)session.getAttribute("userId");
				%>
<div class="box-login">
				<h3>Forget Password?</h3>
					<p>
						Enter your New Passwords Below
					</p>
					<form action="<%=request.getContextPath()%>/Invest"></form>
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
</body>
</html>