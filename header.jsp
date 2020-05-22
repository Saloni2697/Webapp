<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,400i,600,600i,700,900" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://www.dewsolutions.in/css/bootstrap.css" type="text/css" media="all">
<link rel="stylesheet" href="http://www.dewsolutions.in/css/owl.carousel.css" type="text/css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/dew/style.css" type="text/css" media="all">
  <div class="top_sec">
			<!-- start header -->
			<div class="top_menubg">
				<div class="container">
				    <div class="mob_top_icon">
		               <a  title="email" href="mailto:info@dewsolutions.in"><i class="fa fa-envelope mob_top_icon" aria-hidden="true"></i></a>
		               <a href="#"><i class="fa fa-phone mob_top_icon" aria-hidden="true"></i></a>
		            </div>
					<div class="web_top_menu">
						<ul class="top_menu_list">
							<li><a title="email" href="mailto:info@dewsolutions.in">Email:
									info@dewsolutions.in</a></li>
							<li><a title="About us" href="#about-us/">Ph No: +91
									(124) 421 2275</a></li>
						</ul>
						<div class="social_iconsSec">
							<a href="https://www.facebook.com/dewsolutions.india"
								class="social_icons"><i class="fa fa-facebook"
								aria-hidden="true"></i></a> <a
								href="https://twitter.com/dewsolutions" class="social_icons"><i
								class="fa fa-twitter" aria-hidden="true"></i></a> <a
								href="https://www.linkedin.com/company/dew-solutions-pvt-ltd"
								class="social_icons"><i class="fa fa-linkedin"
								aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="topMain_menu">
				<div class="container">
					<div class="main_menu_inner">
						<a href="index.html" class="logo_left"><img
							src="${pageContext.request.contextPath}/static/images/logo.png" alt="Dew Solutions" title="Dew Solutions"></a>
							<button class="mobMenu_toggle">
				               <span></span>
				             </button>
						<nav class="mainMenu menu_mob">
							<ul class="main_navList">
								<li><a href="${pageContext.request.contextPath}">Home</a></li>
								<li><a href="http://www.dewsolutions.in/about-us.html" target="_blank">About Us</a></li>
								<li><a href="javascript:void(0)" class="">Services</a>
									<ul class="submenu">
										<li>
											<ul class="subMenuListing">
												<li><a href="http://www.dewsolutions.in/web-development.html"
													title="Web Development" target="_blank">Web Development</a></li>
												<li><a href="infra.html"
													title="Cloud
														Infra Support"> Cloud Infra
														Support</a></li>
												<li><a href="http://www.dewsolutions.in/quality.html" target="_blank" title="Quality Assurance">Quality
														Assurance</a></li>
											</ul>
										</li>
										<li>
											<ul class="subMenuListing">
												<li><a href="mobile-development.html"
													title="Mobile Development">Mobile Development</a></li>
												<li><a href="design.html" title="Design Consultancy">Design
														Consultancy</a></li>
												<li><a href="http://www.dewsolutions.in/product-consultancy.html"
													title="Product Consultancy" target="_blank">Product Consultancy</a></li>
											</ul>
										</li>
									</ul></li>
								<li><a href="javascript:void(0)" class="">Industries</a>
									<ul class="submenu">
										<li>
											<ul class="subMenuListing">
												<li><a href="retail.html" title="Retail">Retail</a></li>
												<li><a href="ecommerce.html" title="E-commerce">E-commerce</a>
												</li>
												<li><a href="logistics.html" title="Logistics">Logistics</a></li>
												<li><a href="banking.html" title="Banking">Banking</a></li>
											</ul>
										</li>
										<li>
											<ul class="subMenuListing">
												<li><a href="education.html" title="Education">Education</a></li>
												<li><a href="travel.html"
													title="Travel &amp;
														Hospitality">Travel &amp;
														Hospitality</a></li>
												<li><a href="airline.html" title="Airline">Airline</a></li>
												<li><a href="consumer-goods.html"
													title="Consumer Goods">Consumer Goods</a></li>
											</ul>
									</ul></li>
								<li><a href="javascript:void(0)" class="">NextGen
										Solutions</a>
									<ul class="submenu">
										<li>
											<ul class="subMenuListing">
												<li><a href="big-data.html" title="Big Data">Big
														Data</a></li>
												<li><a href="internet-of-things.html"
													title="Internet of
														Things">Internet of
														Things</a></li>
												<!-- <li><a href="devops.html" title="Devops">Devops</a></li> -->
											</ul>
										</li>
										<li>
											<ul class="subMenuListing">
												<li>
												 <a href="data-science.html" title="Data Science">Data Science</a></li>
												<li><a href="devops.html" title="Devops">Devops</a></li>
											</ul>
										</li>
									</ul></li>
								<!-- <li><a href="javascript:void(0)">Team</a></li> -->
								<li><a href="contact-us.html">Contact Us</a></li>
								<c:if test="${empty userObj}">
								<li><a href="javascript:;" data-target="#modelForUserRegister" data-toggle="modal" id="loginMe">Login</a></li>
								</c:if>
								<c:if test="${not empty userObj and userObj.userId gt 0 }">
								<li>
								<li><a href="${pageContext.request.contextPath}/user/myProfile">My Profile</a>
									<ul  class="submenu">
										
										<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
									</ul>
									</li>
								</c:if>
								
							</ul>
						</nav>
						<div class="cbp-hsmenubg" style="height: 0px;"></div>
					</div>
				</div>
			</div>
		</div>
  <div class="modal modal-wide fade" id="modelForUserRegister">
		
			<div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Sign In</div>
						<div style="float: right; font-size: 80%; position: relative; top: -10px">
							<a id="forgotPwd" href="#" onclick="$('#signupbox').hide(); $('#loginbox').hide(); $('#forgotPasswordbox').show();$('#forgotPasswordbox').removeClass('hidden') ">Forgot Password?</a>
						</div>
					</div>
					<div class="panel-body" style="padding-top: 30px" >
						<div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>
						<form id="loginform" class="form-horizontal" role="form" data-toggle="validator">
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span> 
								<input id="login-email" type="email" class="form-control" name="email" value="" placeholder="Email" required>
								 <div class="help-block with-errors"></div>
							</div>
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span> 
								<input id="login-password" type="password" class="form-control" name="password" placeholder="password" autocomplete="off" required>
							</div>
							<div style="" class="form-group">
								<div class=" col-sm-12 controls loginFailed red hidden">Email/password do not match, please try again.</div>
							</div>
							<div style="margin-top: 10px" class="form-group">
								<div class="col-sm-12 controls">
								<input type="button" onclick="doLogin()" value="Login" class="btn btn-success" id="btn-login">
									<!-- <a id="btn-login" href="#" class="btn btn-success">Login </a>  -->
									<!-- <a id="btn-fblogin" href="#" class="btn btn-primary" onclick="fbLogin();">Login with Facebook</a> -->
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12 control">
									<div style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
										Don't have an account! 
										<a href="${pageContext.request.contextPath}/registerMe"> Sign Up Here </a>
									</div>
								</div>
							</div>
							<input type="hidden" id="normalFbId" name="facebookId" value="">
							<!-- <input type="hidden" id="fbUserGender" name="gender" value=""> -->
						</form>
						<form id="fbLoginFrm">
							<input type="hidden" id="fbemail" name="email"><input type="hidden" id="fbfirstName" name="firstName"><input type="hidden" id="fbLastName" name="lastName"><input type="hidden" id="fbUserId" name="facebookId">
							
						</form>
					</div>
				</div>
			</div>
			<div id="forgotPasswordbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 hidden">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Forgot Password</div>
						<div style="float: right; font-size: 80%; position: relative; top: -10px">
							<a  href="#" onclick="$('#signupbox').hide(); $('#loginbox').show();$('#forgotPasswordbox').hide();">Sign In</a>
						</div>
					</div>
					<div class="panel-body" style="padding-top: 30px" >
						<div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>
						<form id="forgotPassword" class="form-horizontal" role="form">
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span> 
								<input id="forgot-password-email" type="text" class="form-control" name="email" value="" placeholder="Email" required>
							</div>
							<div style="margin-bottom: 25px" class="input-group hidden" id="requestPasswordSuccess">
							<label><span style="color:green;">Your Password has been sent to your Email Id.</span></label>
							</div>
							<div style="margin-bottom: 25px" class="input-group hidden" id="requestPasswordFailed">
							<label><span style="color:red;">Some error occured, please try again later.</span></label>
							</div>
							<div style="margin-bottom: 25px" class="input-group hidden" id="requestPasswordInvalidUser">
							<label><span style="color:red;">Email Id not registered with us.</span></label>
							</div>
							<div style="margin-bottom: 25px" class="input-group hidden" id="requestPasswordfacebook">
							<label><span style="color:red;">It seems email is registered through facebook, try login via facebook.</span></label>
							</div>
							<div style="margin-top: 25px" class="input-group pull-right" >
								<button id="btn-password-request" type="button" class="btn btn-info "> Request Password Change
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="signupbox" style="display: none; margin-top: 50px;" class=" col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Sign Up</div>
						<div style="float: right; font-size: 85%; position: relative; top: -10px">
							<a  href="#" onclick="$('#signupbox').hide(); $('#loginbox').show();$('#forgotPasswordbox').hide();">Sign In</a>
						</div>
					</div>
					<div class="panel-body">
						<form id="signupform" class="form-horizontal" role="form">
							<div class="row1">
							<div id="signupalert" style="display: none" class="alert alert-danger">
								<p>Error:</p>
								<span></span>
							</div>
							</div>
							<div class="row form-group">
								<label for="firstname" class="col-md-4 control-label">First Name<span style="color:red;">*</span></label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="firstName" placeholder="First Name" required data-msg-required="Please Enter First Name">
								</div>
								</div>
								<div class="row form-group">
								<label for="lastname" class="col-md-4 control-label">Last Name<span style="color:red;">*</span></label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="lastName" placeholder="Last Name" required data-msg-required="Please Enter Last Name">
								</div>
							</div>
							 <div class="row form-group">
								<label class="col-md-4 control-label">Gender<span style="color:red;">*</span></label>
								<div class="col-md-8">
									<select id="gender" class="form-control" name="gender" required data-msg-required="Please Select Gender">
									<option value="">Select</option>
									<option value="1">Male</option>
									<option value="2">Female</option>
		                    		</select>
								</div>
							</div>
							<div class="row form-group">
								<label for="email" class="col-md-4 control-label">Email<span style="color:red;">*</span></label>
								<div class="col-md-8">
									<input type="email" id="signupemail" class="form-control" name="email" placeholder="Email Address" required data-msg-required="Please Enter Email">
								</div>
							</div>
							<div class="row form-group">
								 <label for="password" class="col-md-4 control-label">Mobile<span style="color:red;">*</span></label>
								<div class="col-md-8">
									<input type="number" class="form-control" name="mobile" placeholder="10 Digits Mobile No." required="required" minlength="10" maxlength="10" data-msg-required="Please Enter valid mobile no" data-msg-minlength="Please Enter valid mobile no" data-msg-maxlength="Please Enter valid mobile no">
								</div> 
							</div>
							<div class="row form-group">
								<label for="password" class="col-md-4 control-label">Password<span style="color:red;">*</span></label>
								<div class="col-md-8">
									<input type="password" class="form-control" id="password" name="password" placeholder="Password" required data-msg-required="Please Enter Password">
								</div>
								</div>
								<div class="row form-group">
								<label for="password" class="col-md-4 control-label">Confirm Password<span style="color:red;">*</span></label>
								<div class="col-md-8">
									<input type="password" placeholder="Reenter Password" id="reEnterPass" name="reEnterPass" class="form-control" required data-msg-required="Please Re-Enter Password">
									<span class="error" id="errorPassNotEqual" style="display:none;color: red;font-style: normal;" >Password and Confirm Password do not match.</span>
								</div>
							</div>
							
							<div class="row form-group">
							<div class="col-lg-12">
								<button id="btn-signup" type="button" class="btn btn-info pull-right">
									<i class="icon-hand-right"></i>Sign Up
								</button>
							</div>
							</div>
							
							<input type="hidden" name="facebookId" value="">
						</form>
					</div>
				</div>
			</div>
			
	</div>
</html>