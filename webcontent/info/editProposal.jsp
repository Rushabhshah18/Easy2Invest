
    <%@ page import="com.model.proposal" %>
    <%@page import="java.util.Iterator"%>
    <%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<jsp:include page="headerInclude.jsp"></jsp:include>
<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
	<!-- Css for this page only -->
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/styles-responsive.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/plugins.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/themes/theme-style8.css"
		type="text/css" id="skin_color">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/front/css/print.css" type="text/css"
		media="print" />
	<link rel="shortcut icon" href="<%= request.getContextPath()%>/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
			.side{
    				padding-left: 3% !important;			
				}
			.down{
				margin-bottom:2% !important;
			}
		</style>
<title>Edit proposal</title>
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
		<jsp:include page="proposalPage2.jsp"></jsp:include>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="mainjs.jsp"></jsp:include>
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
	<script src="<%= request.getContextPath()%>/js/index.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE JAVASCRIPTS  -->
	<script src="<%= request.getContextPath()%>/js/main.js"></script>
	<!-- end: CORE JAVASCRIPTS  -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			SVExamples.init();
			Index.init();
		});
	</script>
</body>
</html>

