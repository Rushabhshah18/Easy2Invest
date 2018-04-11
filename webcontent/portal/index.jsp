<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		 
		<title>Easy2Invest Investment</title>
	
		<!-- Google font -->
		<link href="<%= request.getContextPath() %>/frontend/fonts.googleapis.com/css.css" rel="stylesheet"> 
		<link rel="shortcut icon" href="<%= request.getContextPath()%>/frontend/img/Favicon.png" />
		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/frontend/css/bootstrap.min.css"/>
		
		<!-- Font Awesome Icon -->
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/frontend/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/frontend/css/font-awesome.min.css">
	
		<!-- Animate Css -->
		<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/frontend/css/animate.css"/>
		
		<!-- lightbox -->
		<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/frontend/css/lightbox.css"/>
		
		<!-- Owl carousel -->
		<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/frontend/css/owl.carousel.css"/>
		
		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/frontend/css/style.css"/>
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
    </head>
	<body>

		<!-- HEADER SECTION -->
		<header id="home" class="header">
		
			<!-- header background image -->
			<div class="bg-image" style="background-image: url('img/background01.jpeg');" data-stellar-background-ratio="0.5">
				<div class="overlay-dark"></div>
			</div>
			<!-- /header background image -->
						
			<!-- nav -->
			<nav class="navbar">
				<div class="container">
				
					<div class="navbar-header">
						<!-- logo -->
						<div  style="margin-top:10px;">
							<h2><a style="color:#fff !important; "  onMouseOver="this.style.color='#E74100'"
   onMouseOut="this.style.color='#fff'" href="<%= request.getContextPath() %>/webcontent/portal/index.jsp"> Easy2Invest</a></h2>
						</div>
						<!-- /logo -->
						
						<!-- collapse nav button -->
						<div class="btn-menu">
							<span></span>
						</div>
						<!-- /collapse nav button -->
					</div>
				<%String user=(String)session.getAttribute("userName"); %>
					<!--  main navigation  -->
					<ul class="main-nav  nav navbar-nav navbar-right">
						<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#home">Home</a></li>
						<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#service">Service</a></li>
						<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#about">About</a></li>
						<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#portfolio">Portfolio</a></li>
						<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#team">Team</a></li>
						<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#contact">Contact</a></li>
						
						<%
							if(user!=null && !user.isEmpty()){
								%><li><a href="<%= request.getContextPath() %>/webcontent/info/index.jsp"><%=user%></a></li>
									<li><a href="<%= request.getContextPath() %>/Store?actionCode=doLogOutHome" class="main-btn default-btn">Logout</a></li>
								<%	
									
							}else{
						%>
						<li><a href="<%= request.getContextPath() %>/webcontent/info/login.jsp" class="main-btn default-btn">Login</a></li>
						<%} %>
					</ul>
					<!-- /main navigation -->
					
				</div>
			</nav>
			<!-- /nav -->

			<!-- home wrap -->
			<div class="home-wrap">
				<div class="container">
					<div class="row">
					
						<!-- home content -->
						<div class="col-md-10 col-md-offset-1">
							<div class="home-content">
								<p>A place For all Startups</p>
								<h1>Easy2Invest<span> Investment</span> Startup portal</h1>
								<p>This portal provides benifits and ways for a emerging startups by providing them guidence and funds
								</p>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#" class="main-btn default-btn">Discover</a>
							</div>
						</div>
						<!-- /home content -->
						
					</div>
				</div>
			</div>
			<!-- /home wrap -->
			
		</header>
		<!-- /HEADER SECTION -->

		
		
		<!-- SERVICE SECTION -->
	<section id="service">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section header -->
				<div class="header-section text-center">
					<h2 class="title">What we do</h2>
					<p>When it comes to investing, consistency is beautiful</p>
				</div>
				<!-- /section header -->

				<!-- single service -->
				<div class="col-sm-6">
					<div class="service">
						<i class="fa fa-magic"></i>
						<div class="service-content">
							<h3>Investor Profile</h3>
							<p>Here in our portal Investor can make profile and get
								Register with us,then allthe other Entrepreneur and see investor
								profile and send proosal request.so thet geeting proper project
								for the investment is soo easy.</p>
						</div>
					</div>
				</div>
				<!-- /single service -->

				<!-- single service -->
				<div class="col-sm-6">
					<div class="service">
						<i class="fa fa-copy"></i>
						<div class="service-content">
							<h3>Entrepreneur Profile</h3>
							<p>Here in our portal Entrepreneur can make profile and get
								Register with us,then Entrepreneur can add project idea and then
								can send proposal to investor.so that getting investment is soo
								easy for our users.</p>
						</div>
					</div>
				</div>
				<!-- /single service -->

				<!-- single service -->
				<div class="col-sm-6">
					<div class="service">
						<i class="fa fa-rocket"></i>
						<div class="service-content">
							<h3>Idea Management</h3>
							<p>Here we provide Idea Management Where Entrepreneur can add
								their project idea. and then make proposal to investor, investor
								can see the idea while reciving proposal.</p>
						</div>
					</div>
				</div>
				<!-- /single service -->

				<!-- single service -->
				<div class="col-sm-6">
					<div class="service">
						<i class="fa fa-cogs"></i>
						<div class="service-content">
							<h3>Proposal Management</h3>
							<p>Here we provide Proposal Management Where Entrepreneur can
								send proposal to investor and investor can do futher actions.</p>
						</div>
					</div>
				</div>
				<!-- /single service -->




			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</section>
	<!-- /SERVICE SECTION -->


		
		<!-- FEATURES SECTION -->
	<section id="features">

		<!-- features background image -->
		<div class="bg-image bg-half"
			style="background-image: url('<%=request.getContextPath()%>/front/img/background02.jpg');">
			<div class="overlay-dark"></div>
		</div>
		<!-- /features background image -->

		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- features content -->
				<div class="col-md-offset-7 col-md-5">

					<!-- section header -->
					<div class="header-section">
						<h2 class="title">Tons of features</h2>
					</div>
					<!-- /section header -->

					<p>We provide many features for the user to make the process easy and comfortable.</p>

					
						
						<!-- single feature -->
						<div class="feature">
							<i class="fa fa-magic"></i>
							<div class="feature-content">
								<h4>Quick Polls</h4>
								<p>Instantly gather customer feedback and reviews by creating custom surveys for your website.</p>
							</div>
						</div>
						<!-- /single feature -->
						
						<!-- single feature -->
						<div class="feature">
							<i class="fa fa-gear"></i>
							<div class="feature-content">
								<h4>Easy To Use</h4>
								<p>Simple user interface for the convenience of user </p>
							</div>
						</div>
						<!-- /single feature -->
						
						
						
						<!-- single feature -->
						<div class="feature">
							<i class="fa fa-camera"></i>
							<div class="feature-content">
								<h4>Online Support</h4>
								<p>24/7 support for the user</p>
							</div>
						</div>
						<!-- /single feature -->
						

				</div>
				<!-- /features content -->

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</section>
	<!-- /FEATURES SECTION -->

		
		
		<!-- NUMBERS SECTION -->
		<section id="numbers">
			<!-- container -->
			<div class="container">
				<!--  row  -->
				<div class="row">
				
					<!-- single number -->
					<div class="col-sm-3">
						<div class="number">
							<h3><span class="counter" data-from="0" data-to="820" data-speed="3000">0</span></h3>
							<p>Our client</p>
						</div>
					</div>
					<!-- /single number -->
					
					<!-- single number -->
					<div class="col-sm-3">
						<div class="number">
							<h3><span class="counter" data-from="0" data-to="147" data-speed="3000">0</span></h3>
							<p>Award won</p>
						</div>
					</div>
					<!-- /single number -->
					
					<!-- single number -->
					<div class="col-sm-3">
						<div class="number">
							<h3><span class="counter" data-from="0" data-to="321" data-speed="3000">0</span></h3>
							<p>Project done</p>
						</div>
					</div>
					<!-- /single number -->
					
					<!-- single number -->
					<div class="col-sm-3">
						<div class="number">
							<h3><span class="counter" data-from="0" data-to="16" data-speed="3000">0</span>K</h3>
							<p>Lines of code</p>
						</div>
					</div>
					<!-- /single number -->
					
				</div>
				<!-- /row  -->
			</div>
			<!-- /container -->
		</section>
		<!-- /NUMBERS SECTION -->	

		
		
		<!-- ABOUT US SECTION -->
		<section id="about" class="animated">
			<!-- container  -->
			<div class="container">
				<!-- row -->
				<div class="row">
				
					<!-- section header -->
					<div class="header-section text-center">
						<h2 class="title">About Us</h2>
						<p>Online Global Portal which brings the right Investors and right entrepreneur meet
						</p>
					</div>
					<!-- /section header -->
							
					<!-- single about -->
					<div class="col-md-4">
						<div class="about">
							<i class="fa fa-money"></i>
							<div class="about-content">
								<h3>Entreprenure Fundings</h3>
								<p>This Portal Provides Every Entreprenures a place where they can find fundings with out going door to door.This portal provides lots of Investors at a click of a button</p>
							</div>
						</div>
					</div>
					<!-- /single about -->
					
					<!-- single about -->
					<div class="col-md-4">
						<div class="about">
							<i class="fa fa-rocket"></i>
							<div class="about-content">
								<h3>Investment possibilities</h3>
								<p>This portal provides a solution for different investors main investment issues.Here they can find multiple interesting ideas with out any stress</p>
							</div>
						</div>
					</div>
					<!-- /single about -->
					
					<!-- single about -->
					<div class="col-md-4">
						<div class="about">
							<i class="fa fa-comments"></i>
							<div class="about-content">
								<h3>IDEAS</h3>
								<p>A place where idea and thoughts of different users accepted with out a doubt.</p>
							</div>
						</div>
					</div>
					<!-- /single about -->
						
				</div>
				<!-- /row  --> 
			</div>
			<!-- /container  -->
		</section>
		<!-- /ABOUT US SECTION -->

		
		
		<!-- WHY CHOOSE US SECTION -->
		<section id="whychoose">
		
			<!-- whychoose background image -->
			<div class="bg-image bg-half bg-right" style="background-image: url('frontendimg/background03.jpg');">
				<div class="overlay-white"></div>
			</div>		
			<!-- /whychoose background image -->
			
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					
					<!-- Why choose Us content -->
					<div class="col-md-5">
					
						<!-- section header -->
						<div class="header-section">
							
							<div class="header-section">
							<h2 class="title">Why choose Us</h2>
							<p>Goal to satisfy our customer's needs, 
							whether it be through timely delivery, 
							providing the best value for the money.
							</p>
						</div>
						</div>
						<!-- /section header -->
						
						<p> IT service provider company in India. We believe in innovations and excellence. 
						Our aim is providing excellent satisfaction to our clients with 
						our best team efforts in area of Web development, 
						Web designing, Mobile development and Software development.
						</p>
						
						<!-- single skill -->
						<div class="skill">
							<p>Web Design
								<span class="skill-counter"><span class="counter" data-from="0" data-to="74" data-speed="2000"></span>%</span>
							</p>
							<div class="skill-bar">
								<div class="progressbar" data-to="74" data-speed="2000"></div>
							</div>
						</div>
						<!-- /single skill -->
						
						<!-- /single skill -->
						<div class="skill">
							<p>Web Development
								<span class="skill-counter"><span class="counter" data-from="0" data-to="84" data-speed="2000"></span>%</span>
							</p>
							<div class="skill-bar">
								<div class="progressbar" data-to="84" data-speed="2000"></div>
							</div>
						</div>
						<!-- /single skill -->
						
						<!-- /single skill -->
						<div class="skill">
							<p>Java
								<span class="skill-counter"><span class="counter" data-from="0" data-to="92" data-speed="2000"></span>%</span>
							</p>
							<div class="skill-bar">
								<div class="progressbar" data-to="92" data-speed="2000"></div>
							</div>
						</div>
						<!-- /single skill -->
						
						<!-- /single skill -->
						<div class="skill">
							<p>Mobile Development
								<span class="skill-counter"><span class="counter" data-from="0" data-to="64" data-speed="2000"></span>%</span>
							</p>
							<div class="skill-bar">
								<div class="progressbar" data-to="64" data-speed="2000"></div>
							</div>
						</div>
						<!-- /single skill -->
						
					</div>
					<!-- /Why choose Us content -->
				
				</div>
				<!-- /row  --> 
			</div>
			<!-- /container  -->
		</section>
		<!-- /WHY CHOOSE US SECTION -->
				
				</div>
				<!-- /row  --> 
			</div>
			<!-- /container  -->
		</section>
		<!-- /WHY CHOOSE US SECTION -->

		
		
		<!-- PORTFOLIO SECTION -->
		<section id="portfolio">
			<!-- container -->
			<div class="container-fluid">
				<!-- row -->
				<div style="background-color:#252525 !important;" class="row">
					
					<!-- section header -->
				
					<div class="header-section text-center  ">
						<h2 style="color:#fff !important"class="title">Our portfolio</h2>
						<p>Our Work That Define's Us.</p>
						
					</div>
					<!-- section header -->
						
					<!-- single work -->
					<div  class="col-xs-12 col-sm-6 col-md-4">
						<div class="work">
							<img src="<%= request.getContextPath() %>/frontend/img/work01.jpg" alt="">
							<div class="work-content">
								<h3>Pallete</h3>
								
							</div>
							<div class="work-links">
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-link"></i></a>
								<a href="<%= request.getContextPath() %>/frontend/img/work01.jpg" data-lightbox="work"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>	
						
					<!-- single work -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="work">
							<img src="<%= request.getContextPath() %>/frontend/img/work02.jpg" alt="">
							<div class="work-content">
								<h3>End Difference Mobile</h3>
								
							</div>
							<div class="work-links">
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-link"></i></a>
								<a href="<%= request.getContextPath() %>/frontend/img/work02.jpg" data-lightbox="work"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>	
					<!-- /single work -->
						
					<!-- single work -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="work">
							<img src="<%= request.getContextPath() %>/frontend/img/work03.jpg" alt="">
							<div class="work-content">
								<h3>Nukkad Fashion</h3>
								
							</div>
							<div class="work-links">
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-link"></i></a>
								<a href="<%= request.getContextPath() %>/frontend/img/work03.jpg" data-lightbox="work"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>	
					<!-- /single work -->
						
					<!-- single work -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="work">
							<img src="<%= request.getContextPath() %>/frontend/img/work04.jpg" alt="">
							<div class="work-content">
								<h3>Xzone Fashion</h3>
								
							</div>
							<div class="work-links">
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-link"></i></a>
								<a href="<%= request.getContextPath() %>/frontend/img/work04.jpg" data-lightbox="work"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>	
					<!-- /single work -->
						
					<!-- single work -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="work">
							<img src="<%= request.getContextPath() %>/frontend/img/work05.jpg" alt="">
							<div class="work-content">
								<h3>Home Solutions</h3>
								
							</div>
							<div class="work-links">
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-link"></i></a>
								<a href="<%= request.getContextPath() %>/frontend/img/work05.jpg" data-lightbox="work"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
					<!-- /single work -->
						
					<!-- single work -->
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="work">
							<img src="<%= request.getContextPath() %>/frontend/img/work06.jpg" alt="">
							<div class="work-content">
								<h3>Rudratmx</h3>
								
							</div>
							<div class="work-links">
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-link"></i></a>
								<a href="<%= request.getContextPath() %>/frontend/img/work06.jpg" data-lightbox="work"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>	
					<!-- /single work -->
					
					<!-- load more btn -->
					<div class="col-xs-12 btn-container">
						<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#" class="main-btn default-btn">Load more</a>
					</div>
					<!-- /load more btn -->
						
				</div>
				<!-- /row  -->
			</div>
			
			<!-- /container -->
		</section>
		<!-- /PORTFOLIO SECTION -->

		

		<!-- TEAM SECTION -->
		<section id="team" class="animated">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					
					<!-- section header -->
					<div class="header-section text-center">
						<h2 class="title">Our Amazing team</h2>
						<p>A perfect blend of creativity and technical wizardry.
						The best people formula for great websites!
						</p>
					</div>
					<!-- section header -->
					
					<!-- single team -->
					<div class="col-md-4">
						<div class="team">
							<div class="team-img">
								<img src="<%= request.getContextPath() %>/frontend/img/Rushabh.JPG" alt="">
							</div>
							<div class="team-content">
								<h3>Rushabh Shah</h3>
								<p>Backend Developer</p>
							</div>
							<div class="team-social">
								<a href="https://www.facebook.com/rushabh.shah.714655"><i class="fa fa-facebook"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-google-plus"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-linkedin"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-twitter"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-github"></i></a>
							</div>
						</div>
					</div>
					<!-- /single team -->
					
					<!-- single team -->
					<div class="col-md-4">
						<div class="team">
							<div class="team-img">
								<img src="<%= request.getContextPath() %>/frontend/img/Malay.jpg" alt="" style="height:540px;width:360px;">
							</div>
							<div class="team-content">
								<h3>Malay Shah</h3>
								<p>Web Developer</p>
							</div>
							<div class="team-social">
								<a href="https://www.facebook.com/malay.shah.58?fref=ts&ref=br_tf"><i class="fa fa-facebook"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-google-plus"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-linkedin"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-twitter"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-github"></i></a>
							</div>
							</div>
					</div>
					<!-- /single team -->
					
					<!-- single team -->
					<div class="col-md-4">
						<div class="team">
							<div class="team-img">
								<img src="<%= request.getContextPath() %>/frontend/img/team03.jpg" alt="">
							</div>
							<div class="team-content">
								<h3>Vipul Basapati</h3>
								<p>Web Developer</p>
							</div>
							<div class="team-social">
								<a href="https://www.facebook.com/vbasapati?fref=ts"><i class="fa fa-facebook"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-google-plus"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-linkedin"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-twitter"></i></a>
								<a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#"><i class="fa fa-github"></i></a>
							</div>
						</div>
					</div>
					<!-- /single team -->
					
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</section>
		<!-- /TEAM -->	

		

	

		
		
	
	<!-- TESTIMONIAL SECTION -->
	<section id="testimonial">

		<!-- testimonial background image-->
		<div class="bg-image"
			style="background-image: url('<%=request.getContextPath()%>/front/img/background04.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay-dark"></div>
		</div>
		<!-- /testimonial background image-->

		<!-- container -->
		<div class="container">
			<!-- row  -->
			<div class="row">

				<!--  section header -->
				<div class="header-section text-center">
					<h2 class="title">What they say</h2>
				</div>
				<!-- /section header -->

				<!-- client slider -->
				<div class="col-md-8 col-md-offset-2">
					<div id="testimonial-slider" class="owl-carousel ">

						<!-- single client -->
						<div class="owl-item">
							<div class="client">
								<p class="client-quote">Easy2Invest Investment has been a great
									source of early-stage investment opportunities! The companies
									that showcase through BLIS Investment cover a wide range of
									addressable markets, technologies and services, often from
									areas of the country that we do not have time to cover.</p>
								<h3>Bob Gailus</h3>
								<span>New York Angels</span>
							</div>
						</div>
						<!-- /single client -->

						<!-- single client -->
						<div class="owl-item">
							<div class="client">
								<p class="client-quote">I am happy to be a member of Easy2Invest
									Investment We always find good prospects, and the interface is
									efficient and easy to use. Thanks for putting this together."</p>
								<h3>George Petracek</h3>
								<span>Atrium Capital</span>
							</div>
						</div>
						<!-- /single client -->

						<!-- /single client -->
						<div class="owl-item">
							<div class="client">
								<p class="client-quote">Easy2Invest Investment has provided
									Investors a great way to read company summaries from across the
									country, and entrepreneurs the opportunity to get in front of a
									lot of Venture Funds they wouldn't normally have access to.</p>
								<h3>Richard Irving</h3>
								<span>Pond Venture Partners</span>
							</div>
						</div>
						<!-- /single client -->

					</div>
				</div>
				<!-- /testimonial slider -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</section>
	<!-- /TESTIMONIAL SECTION -->

		
		
		<!-- CALL ACTION SECTION -->
		<section id="action">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
				
					<!-- action content -->
					<div class="col-md-9">
						<div class="action-content">
							<h2>What are you waiting for ?</h2>
							<h3>Get Started Now And Enjoy The Service.
							</h3>
						</div>
					</div>
					<!-- /action content -->
					
					<!-- action btn -->
					<div class="col-md-3">
						<div class="action-btn">
							<a class="main-btn outline-btn" href="<%= request.getContextPath() %>/webcontent/info/login.jsp#">Join Us</a>
						</div>
					</div>
					<!-- /action btn -->
					
				</div>
				<!-- /row -->
			</div>	
			<!-- /container -->
		</section>
		<!-- /CALL ACTION SECTION -->

		
		
		<!-- BLOG SECTION -->
		
		<!-- /BLOG SECTION -->

		
		
		<!-- CONTACT SECTION -->
		<section id="contact">
		
			<!-- contact background image -->
			<div class="bg-image"  style="background-image: url('frontend/img/background05.jpg');" data-stellar-background-ratio="0.5">
				
			</div>
			<!-- /contact background image -->
			
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
			
					<!--  section header -->
					<div class="header-section text-center">
						<h2 class="title">Get in touch</h2>
						<p>Feel free to ask anything, we'll get back to you ASAP
						</p>
					</div>
					<!-- /section header -->
						
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d405691.5725011225!2d-122.32129193351584!3d37.40247296586346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb68ad0cfc739%3A0x7eb356b66bd4b50e!2sSilicon+Valley%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1491748719601" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
					<!-- /contact detail -->
					<div class="col-md-5">
						<p>Our Address and Contact Details available below.
						</p>
						
						<!-- single contact -->
						<div class="contact">
							<i class="fa fa-map-marker"></i>
							<div class="contact-content">
								<p>Silicon Valley, California, NY, 29160</p>
							</div>
						</div>
						<!-- /single contact -->
						
						<!-- single contact -->
						<div class="contact">
							<i class="fa fa-phone"></i>
							<div class="contact-content">
								<p>+91 9978752064</p>
							</div>
						</div>
						<!-- /single contact -->
						
						<!-- single contact -->
						<div class="contact">
							<i class="fa fa-envelope-o"></i>
							<div class="contact-content">
								<p><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#">rushabhshah130@gmail.com</a></p>
								<p><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#">basapativipulkumar@gmail.com</a></p>
								<p><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#">shahmalay95@gmail.com</a></p>
							</div>
						</div>
						<!-- /single contact -->
						
					</div>
					<!-- /contact detail -->
				</div>
				<!-- /row -->	
			</div>	
			<!-- /container -->
		</section>
		<!-- /CONTACT SECTION -->

		<!-- FOOTER SECTION -->
		<footer id="footer">
			<div class="bottom-footer">
			
				<!-- copyright -->
				<p class="copyright">Easy2Invest, 2017 All rights reserved &copy; Created by Rushabh, Malay & vipul</p>
				<!-- /copyright -->
						
				<!-- social links -->
				<ul class="social">
					<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#" class="main-btn primary-btn"><i class="fa fa-facebook"></i></a></li>
					<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#" class="main-btn primary-btn"><i class="fa fa-twitter"></i></a></li>
					<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#" class="main-btn primary-btn"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="<%= request.getContextPath() %>/webcontent/portal/index.jsp#" class="main-btn primary-btn"><i class="fa fa-linkedin"></i></a></li>
				</ul>
				<!-- /social links -->
				
			</div>
		</footer>
		<!-- /FOOTER SECTION -->
		
		<!-- PRELOADER -->
		<div id="preloader">
			<div class="preloader">
				<div class="pre1"></div>
				<div class="pre2"></div>
			</div>
		</div>
		<!-- /PRELOADER -->
		
		<!-- BACK TO TOP -->
		<div id="back-to-top" class="main-btn primary-btn">
			<i class="fa fa-angle-up"></i>
		</div>
		<!-- /BACK TO TOP -->
		
		
		<!-- jQuery Plugins -->
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/jquery.waypoints.min.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/jquery.stellar.min.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/jquery.countTo.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/lightbox.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%= request.getContextPath() %>/frontend/js/main.js"></script>
		
	</body>
</html>