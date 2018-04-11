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
<title>Insert title here</title>
<jsp:include page="headerInclude.jsp"></jsp:include>
</head>
<body>
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
	<jsp:include page="footer.jsp"></jsp:include>
		<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="<%= request.getContextPath()%>/front/plugins/respond.min.js"></script>
		<script src="<%= request.getContextPath()%>/front/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath()%>/front/plugins/jQuery/jquery-1.11.1.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<script src="<%= request.getContextPath()%>/front/plugins/jQuery/jquery-2.1.1.min.js"></script>
	<!--<![endif]-->
	<script src="<%= request.getContextPath()%>/front/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	 <script src="<%= request.getContextPath()%>/front/plugins/bootstrap/js/bootstrap.min.js"></script> 
	<script src="<%= request.getContextPath()%>/front/plugins/blockUI/jquery.blockUI.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/iCheck/jquery.icheck.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/moment/min/moment.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/bootbox/bootbox.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/jquery.scrollTo/jquery.scrollTo.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/ScrollToFixed/jquery-scrolltofixed-min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/jquery.appear/jquery.appear.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/velocity/jquery.velocity.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
	<script src="<%= request.getContextPath()%>/front/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/jquery-mockjax/jquery.mockjax.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/toastr/toastr.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/bootstrap-switch/dist/js/bootstrap-switch.min.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/DataTables/media/js/jquery.dataTables.min.js"></script>

	<script src="<%= request.getContextPath()%>/front/plugins/truncate/jquery.truncate.js"></script>
	<script src="<%= request.getContextPath()%>/front/plugins/summernote/dist/summernote.min.js"></script>
	<script
		src="<%= request.getContextPath()%>/front/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script src="<%= request.getContextPath()%>/front/js/subview.js"></script>
	<script src="<%= request.getContextPath()%>/front/js/subview-examples.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->
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
	<script>
		jQuery(document).ready(function() {
			Main.init();
			SVExamples.init();
			Index.init();
		});
	</script>
</body>
</html>