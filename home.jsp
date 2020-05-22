<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dew Training Session At Dew Office</title>
<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

 	<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<style type="text/css">
	.register-link{
		background-color: rgba(255,255,255,.8);
    border-top: 1px solid #ddd;
    clear: both;
    padding: 14px;
	}
	body{
	background: 
  linear-gradient(45deg,  transparent 0%, transparent 57%, #423246 100%),
  linear-gradient(-45deg, #8f5046 0%,  #A14436 0.3%, #4C2556 112%,  transparent 11% ),
  linear-gradient(-90deg, #A14436 100%, #A14436 65%, transparent 20% );
  
	}
	.container{
		margin-top:150px;
		margin-bottom:150px;
	}
	.myform {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    padding: 1rem;
    -ms-flex-direction: column;
    flex-direction: column;
    width: 100%;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: 1.1rem;
    outline: 0;
}
.hidden{display: none;}
.login-or {
    position: relative;
    color: #aaa;
    margin-top: 10px;
    margin-bottom: 10px;
    padding-top: 10px;
    padding-bottom: 10px;
}
.span-or {
    display: block;
    position: absolute;
    left: 50%;
    top: -2px;
    margin-left: -25px;
    background-color: #fff;
    width: 50px;
    text-align: center;
}
.hr-or {
    height: 1px;
    margin-top: 0px !important;
    margin-bottom: 0px !important;
}
#Remember-me{
	font-size: 13px;
	font-color: red;
	
}
.btn-primary{
	background-color: #FF8095 !important;
	border:none;
}
#male, #female, #other{
	width: 10%;
}
.red{
	color: red;
}
</style>
</head>
<body>
    <div class="container">
        <div class="row">
			<div class="col-md-5 mx-auto">
			<div id="first">
				<div class="myform form ">
					 <div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<h1>Login</h1>
						 </div>
					</div>
                   <form id="loginForm" name="login">
                           <div class="form-group">
                              <label for="exampleInputEmail1">Email Address</label>
                              <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Password</label>
                              <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                           </div>
                           <div class="form-group">
	                           <div class="checkbox">
				    	    	<label id="Remember-me">
				    	    		<input type="checkbox" value="Remember Me"> Remember Me
				    	    	</label>
				    	    	</div>
			    	    	</div>
                           <div class="form-group">
                              <p class="text-center">By signing up you accept our <a href="#">Terms Of Use</a></p>
                           </div>
                           <div class="col-md-12 text-center ">
                              <button type="button" class=" btn btn-block mybtn btn-primary tx-tfm" onclick="doLogin()">Login</button>
                           </div>
                           <div class="col-md-12 ">
                              <div class="login-or">
                                 <hr class="hr-or">
                                 <span class="span-or">or</span>
                              </div>
                           </div>
                           <div class="col-md-12 mb-3">
                              <p class="text-center">
                                 <a href="javascript:void();" onclick="#" class="google btn mybtn"><i class="fa fa-google-plus">
                                 </i> Signup using Google
                                 </a>
                              </p>
                           </div>
                           <div class="form-group">
                              <p class="text-center">Don't have account? <a href="#" id="signup" onclick="openSignUp()">Sign up here</a></p>
                           </div>
                        </form>
                 
				</div>
			</div>
			  <div id="second" class="hidden">
			      <div class="myform form ">
                        <div class="logo mb-3">
                           <div class="col-md-12 text-center">
                              <h1 >Signup</h1>
                           </div>
                        </div>
                        <form name="registration" id="registerForm" onsubmit="submitForm()">
                           <div class="form-group">
                              <label for="exampleInputEmail1">First Name<span class="red">*</span></label>
                              <input type="text"  name="firstName" class="form-control" id="firstname" aria-describedby="emailHelp" placeholder="Enter Firstname">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Last Name<span class="red">*</span></label>
                              <input type="text"  name="lastName" class="form-control" id="lastname" aria-describedby="emailHelp" placeholder="Enter Lastname">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Gender<span class="red">*</span></label>
                              <br>
                              <div class="text-center">
                              <input type="radio" name="gender" value="MALE" id="male" aria-describedby="emailHelp"> Male   
                              <input type="radio" name="gender" id="female" value="FEMALE" aria-describedby="emailHelp"> Female  
                              <input type="radio" name="gender" id="other"  value="OTHER" aria-describedby="emailHelp"> Other  
                              </div>
                           </div>
                           <div> 
                           	  <label for="exampleInputEmail1">Date of Birth<span class="red">*</span></label>
                              <input type="date" name="dateOfBirth"  class="form-control" id="dob" aria-describedby="emailHelp" placeholder=" DD / MM / YYYY ">
                           </div>
                           <br>
                           <div class="form-group">
                           <label for="exampleInputEmail">Contact Number<span class="red">*</span></label>
                           <div class="row">
                           	<div class="col-md-3">
                              <input type="tel" disabled="disabled" class="form-control" id="contact" aria-describedby="emailHelp" value="+91 ">
                              <label for="exampleInputEmail"></label>
                              </div>
                              <div class="col-md-9">
                              <input type="tel" name="mobile" class="form-control" id="contact_main" aria-describedby="emailHelp" placeholder="Enter Contact Number ">
                           	  <label for="exampleInputEmail"></label>
                           	  </div>
                           </div>
                           </div>
                           <div class="form-group">
                           	<label for="exampleInputEmail">Address<span class="red">*</span></label>
                           	<textarea rows="5" cols="10" class="form-control" name="address" id="address" placeholder="Enter Address"></textarea>
                           	</div>
                           	<div class="form-group">
                           	<label for="exampleInputEmail">City<span class="red">*</span></label>
                           	<select  name="city" id="city" class="form-control" aria-describedby="emailHelp" placeholder="Enter City">
							  <option value="Ahmedabad">Ahemdabad</option>
							  <option value="Bangalore">Bangalore</option>
							  <option value="Bhopal">Bhopal</option>
							  <option value="Bhubhaneshwar">Bhubhaneshawar</option>
							  <option value="Chennai">Chennai</option>
							  <option value=" New Delhi">New Delhi</option>
							  <option value="Gurgaon">Gurgaon</option>
							  <option value="Guwahati">Guwahati</option>
							  <option value="Hyderabad">Hyderabad</option>
							  <option value="Indore">Indore</option>
							  <option value="Jaipur">Jaipur</option>
							  <option value="Kolkata">Koltata</option>
							  <option value="Lucknow">Lucknow</option>
							  <option value="Mumbai">Mumbai</option>
							  <option value="Noida">Noida</option>
							  <option value="Patna">Patna</option>
							  <option value="Pune">Pune</option> 
							  <option value="Srinagar">Srinagar</option>
							</select>
                           	</div>
                           	<div class="form-group">
                           	<label for="exampleInputEmail">State<span class="red">*</span></label>   	
                           	<select  name="state" id="state" class="form-control" aria-describedby="emailHelp" placeholder="Enter City">
							  <option value="Assam">Assam</option>
							  <option value="Bihar">Bihar</option>
							  <option value="Delhi">Delhi</option>
							  <option value="Gujarat">Gujarat</option>
							  <option value="Haryana">Haryana</option>
							  <option value="Jammu and Kashmir">Jammu and Kashmir</option>
							  <option value="Karnataka">Karnataka</option>
							  <option value="Madhya Pradesh">Madhya Pradesh</option>
							  <option value="Maharashtra">Maharashtra</option>
							  <option value="Orissa">Orissa</option>
							  <option value="Rajasthan">Rajasthan</option>
							  <option value="Tamil Nadu">Tamil Nadu</option>
							  <option value="Telangana">Telangana</option>
							  <option value="Uttar Pradesh">Uttar Pradesh</option>
							  <option value="West Bengal">West Bengal</option>
							</select>
                           	</div>
                           	<div class="form-group">
                           	<label for="exampleInputEmail">Country<span class="red">*</span></label>   	
                           	<input type="text"  disabled= "disabled" name="country" id="country" class="form-control" aria-describedby="emailHelp" value="India">
                           	</div>
                           	<div class="form-group">
                           	<label for="exampleInputEmail">Pincode</label>   	
                           	<input type="text" maxlength="6" name="pincode" id="pincode" class="form-control" aria-describedby="emailHelp" placeholder="Enter Pincode">
                           	</div>
                           	<div class="form-group">
                              <label for="exampleInputEmail1">Email Address<span class="red">*</span></label>
                              <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter Email">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Password<span class="red">*</span></label>
                              <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1"> Confirm Password<span class="red">*</span></label>
                              <input type="password"  id="cpassword"  class="form-control" aria-describedby="emailHelp" placeholder="Re-enter Password">
                           </div>
                           <div class="col-md-12 text-center mb-3">
                              <button type="button" class=" btn btn-block mybtn btn-primary tx-tfm" onclick="submitForm()">Get Started For Free</button>
                           </div>
                           <div class="col-md-12 ">
                              <div class="form-group">
                                 <p class="text-center"><a href="#" id="signin" onclick="openSignIn()">Already have an account?</a></p>
                              </div>
                           </div>
                            </div>
                        </form>
                        </div>
                     </div>
			</div>
		</div>
      </div>   
        		
         
</body>

<script type="text/javascript">
$.fn.serializeObject = function()
{
   var o = {};
   var a = this.serializeArray();
   $.each(a, function() {
       if (o[this.name]) {
           if (!o[this.name].push) {
               o[this.name] = [o[this.name]];
           }
           o[this.name].push(this.value || '');
       } else {
           o[this.name] = this.value || '';
       }
   });
   return o;
};
function submitForm(){
	var formData=$("#registerForm").serializeObject();
	console.log(formData);
	var url="http://localhost:8090/Training/register";
	$.ajax({
        url : url,
        type : 'POST',
        data:JSON.stringify(formData),
        dataType : "json",
        contentType : "application/json",
        success : function(data) {
			console.log(data);
        }
      });
}


function doLogin(){
	var formData=$("#loginForm").serializeObject();
	console.log(formData);
	var url="http://localhost:8080/Dew-Training/login/";
	$.ajax({
        url : url,
        type : 'POST',
        data:JSON.stringify(formData),
        dataType : "json",
        contentType : "application/json",
        success : function(data) {
			console.log(data);
			
        }
      });
}
		function openSignUp(){
		$("#first").addClass('hidden');
		$("#second").removeClass('hidden');
	}
	
	function openSignIn(){
		$("#first").removeClass('hidden');
		$("#second").addClass('hidden');
	}
	
</script>
</html>