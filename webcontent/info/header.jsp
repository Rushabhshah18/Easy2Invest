<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/custom.css">
<header class="topbar navbar navbar-inverse navbar-fixed-top inner">
	<!-- start: TOPBAR CONTAINER -->
	<div class="container upperheader" style="background-color: #5F8295 !important;" >
		<div class="navbar-header" >
			<a class="sb-toggle-left hidden-md hidden-lg" href="#main-navbar">
				<i class="fa fa-bars"></i>
			</a>
		
			<!-- start: LOGO -->
			<a class="navbar-brand" href="<%=request.getContextPath()%>/webcontent/info/index.jsp">
<h3 style="font-family:Algerian;">Easy2Invest</h3>
				<!-- <h3 style="font-family:Old English Text MT;">Easy2Invest</h3> -->
			</a>
			<!-- end: LOGO -->
		</div>
		<div class="topbar-tools">
			<!-- start: TOP NAVIGATION MENU -->
			<ul class="nav navbar-right">
				<!-- start: USER DROPDOWN -->
				<%String userName=(String)session.getAttribute("userName");
				
				
				
				%>
				<%
String differentUser=(String)session.getAttribute("differentUser");
%>
				<li class="dropdown current-user"><a data-toggle="dropdown"
					data-hover="dropdown" class="dropdown-toggle"
					data-close-others="true" href="#">  <span class="username hidden-xs" style="font-family:Georgia;font-size:15px;"><%=userName%></span> <i class="fa fa-caret-down "></i>
				</a>
					<ul class="dropdown-menu dropdown-dark">
					<%if(differentUser.equals("Admin")){ %>
						<li><a href="<%=request.getContextPath()%>/webcontent/info/profile.jsp"> Edit Profile </a></li>
						<li><a href="<%=request.getContextPath()%>/Store?actionCode=doLogOut"> Log Out </a></li>
						<%}else { %>
						
						<li><a href="<%=request.getContextPath()%>/webcontent/info/profile.jsp"> My Profile </a></li>
						<%-- <li><a href="<%=request.getContextPath()%>/webcontent/info/Timeline.jsp"> My Timeline </a></li> --%>
						<!-- <li><a href="pages_messages.html"> My Messages (3) </a></li> -->
						<li><a href="<%=request.getContextPath()%>/webcontent/info/MyInvestments.jsp"> My Investments </a></li>
						<li><a href="<%=request.getContextPath()%>/webcontent/info/MyIdeas.jsp"> My Ideas </a></li>
						<%if(differentUser.equals("Investor")){ %>
						<li><a href="<%=request.getContextPath()%>/Store?actionCode=doGiveSpecificUserOnly"> Near me </a></li>
						
						<%} %>
						<%if(differentUser.equals("Entreprenure")){ %>
						<li><a href="<%=request.getContextPath()%>/Invest?actionCode=doGiveSpecificUserOnly"> Near me </a></li>
						<%} %>
						<li><a href="<%=request.getContextPath()%>/webcontent/info/lock_screen.jsp"> Lock Screen </a></li>
						<li><a href="<%=request.getContextPath()%>/Store?actionCode=doLogOut"> Log Out </a></li>
						<%} %>
					</ul></li>
				<!-- end: USER DROPDOWN -->
				
			</ul>
			<!-- end: TOP NAVIGATION MENU -->
		</div>
	</div>
	<!-- end: TOPBAR CONTAINER -->
</header>