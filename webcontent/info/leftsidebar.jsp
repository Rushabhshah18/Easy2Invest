<div class="col-md-4">
	<a class="closedbar inner hidden-sm hidden-xs" href="#"> </a>
	<nav id="pageslide-left" class="pageslide inner">
		<div class="navbar-content">
			<!-- start: SIDEBAR -->
			<div class="main-navigation left-wrapper transition-left">
				<div class="navigation-toggler hidden-sm hidden-xs">
					<a href="#main-navbar" class="sb-toggle-left"> </a>
				</div>
				<div class="user-profile border-top padding-horizontal-10 block" style="margin-left:5%;">
					<div class="inline-block">
						 <i class="fa fa-github fa-5x"></i> 
					</div>
					<%
						String userName = (String) session.getAttribute("userName");
						System.out.println(userName);
					%>
					<div class="inline-block" style="margin-left:5%;margin-top:20%;">
						<h5 class="no-margin">Welcome</h5>
						<h3 class="no-margin"><%=userName%></h3>
						<a class="btn user-options sb_toggle"> <i class="fa fa-cog"></i>
						</a>
					</div>
				</div>
				<!-- start: MAIN NAVIGATION MENU -->
				<ul class="main-navigation-menu">
				<li><a
						href="<%=request.getContextPath()%>/webcontent/portal/index.jsp?user="<%=userName%>"><i class="fa fa-home"></i><span class="title">HOME</span> </a></li>
					<li class="active open"><a
						href="<%=request.getContextPath()%>/webcontent/info/index.jsp"> <i class="fa fa-bar-chart-o"></i> <span class="title"> Dashboard </span> </a></li>
					<li><a href="javascript:void(0)"><i class="fa fa-desktop"></i>
							<span class="title"> User Master </span><i class="icon-arrow"></i>
					</a>
						<ul class="sub-menu">


							<li><a
								href="<%=request.getContextPath()%>/webcontent/info/addEntrepreneur.jsp">
									Add Entreprenure </a></li>
							<li><a
								href="<%=request.getContextPath()%>/Store?actionCode=showEntreprenure">
									Manage Entreprenure </a></li>
							<li><a
								href="<%=request.getContextPath()%>/webcontent/info/addInvestor.jsp">
									Add Investor</a></li>
							<li><a
								href="<%=request.getContextPath()%>/Invest?actionCode=showInvestor">
									Manage Investor </a></li>



						</ul></li>
					<li><a href="javascript:void(0)"><i class="fa fa-cogs"></i>
							<span class="title"> Idea Management </span><i class="icon-arrow"></i>
					</a>
						<ul class="sub-menu">

							<li><a href="<%=request.getContextPath()%>/webcontent/info/idea.jsp"> <span class="title">
										Add Idea </span>
							</a></li>
							<li><a href="<%=request.getContextPath()%>/Idea?actionCode=showIdea""> <span class="title">
										Manage Idea </span>
							</a></li>
						</ul></li>
					<li><a href="javascript:void(0)"><i class="fa fa-th-large"></i>
							<span class="title"> Proposal Master </span><i class="icon-arrow"></i>
					</a>
						<ul class="sub-menu">

							<li><a
								href="<%=request.getContextPath()%>/webcontent/info/proposal.jsp">
									<span class="title">Idea Proposal</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/proposal?actionCode=showIdea">
									<span class="title">Idea Approval</span>
							</a></li>
						</ul></li>
										
					<!-- Multi layer Sub menu 
					<li><a href="javascript:;" class="active"> <i
							class="fa fa-folder"></i> <span class="title"> 3 Level
								Menu </span> <i class="icon-arrow"></i>
					</a>
						<ul class="sub-menu">
							<li><a href="javascript:;"> Item 1 <i class="icon-arrow"></i>
							</a>
								<ul class="sub-menu">
									<li><a href="#"> Sample Link 1 </a></li>
									<li><a href="#"> Sample Link 2 </a></li>
									<li><a href="#"> Sample Link 3 </a></li>
								</ul></li>
							<li><a href="javascript:;"> Item 1 <i class="icon-arrow"></i>
							</a>
								<ul class="sub-menu">
									<li><a href="#"> Sample Link 1 </a></li>
									<li><a href="#"> Sample Link 1 </a></li>
									<li><a href="#"> Sample Link 1 </a></li>
								</ul></li>
							<li><a href="#"> Item 3 </a></li>
						</ul></li>
					<li><a href="javascript:;"> <i class="fa fa-folder-open"></i>
							<span class="title"> 4 Level Menu </span><i class="icon-arrow"></i>
							<span class="arrow "></span>
					</a>
					
						<ul class="sub-menu">
							<li><a href="javascript:;"> Item 1 <i class="icon-arrow"></i>
							</a>
								<ul class="sub-menu">
									<li><a href="javascript:;"> Sample Link 1 <i
											class="icon-arrow"></i>
									</a>
										<ul class="sub-menu">
											<li><a href="#"><i class="fa fa-times"></i> Sample
													Link 1</a></li>
											<li><a href="#"><i class="fa fa-pencil"></i> Sample
													Link 1</a></li>
											<li><a href="#"><i class="fa fa-edit"></i> Sample
													Link 1</a></li>
										</ul></li>
									<li><a href="#"> Sample Link 1 </a></li>
									<li><a href="#"> Sample Link 2 </a></li>
									<li><a href="#"> Sample Link 3 </a></li>
								</ul></li>
							<li><a href="javascript:;"> Item 2 <i class="icon-arrow"></i>
							</a>
								<ul class="sub-menu">
									<li><a href="#"> Sample Link 1 </a></li>
									<li><a href="#"> Sample Link 1 </a></li>
									<li><a href="#"> Sample Link 1 </a></li>
								</ul></li>
							<li><a href="#"> Item 3 </a></li>
						</ul></li> -->
					<li><a href="javascript:void(0)"><i class="fa fa-map-marker"></i> <span
							class="title">FAQs</span> </a>
							<ul class="sub-menu">

							<li><a
								href="<%=request.getContextPath()%>/webcontent/info/Faqs.jsp">
									<span class="title">Faq</span>
							</a></li>
							<li><a
								href="<%=request.getContextPath()%>/Faq?actionCode=doLoadFaq">
									<span class="title">People's Faq</span>
							</a></li>
						</ul></li>
					
					
				</ul>
				
				<!-- end: MAIN NAVIGATION MENU -->
			</div>
			<!-- end: SIDEBAR -->
		</div>
		<div class="slide-tools">
			<div class="col-xs-6 text-left no-padding">
				<a class="btn btn-sm status" href="#"> Status <i
					class="fa fa-dot-circle-o text-green"></i> <span>Online</span>
				</a>
			</div>
			<div class="col-xs-6 text-right no-padding">
				<a class="btn btn-sm log-out text-right"
					href="<%=request.getContextPath()%>/Store?actionCode=doLogOut">
					<i class="fa fa-power-off"></i> Log Out
				</a>
			</div>
		</div>
	</nav>
</div>