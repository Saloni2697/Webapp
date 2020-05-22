<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>User Profile</title>
<%-- <%@include file="includes/include-css.jsp"%> --%>

<style type="text/css">

	body {
		font-family:"Monospace !important ";
  
	}
	
	.panel{
		padding: 10px 10px 10px 10px;
		border-style: dotted !important;
		border-width: 3px !important;
		border-color:  #ff99aa !important;
		background-color: #f2f2f2 !important; 
		line-height: 1.6 !important;
		
	}
	
	.btn {
		align: right !important;
		position: absolute;
		right: 100px;
		background-color: #FF8095 !important;
	}
	
	h3 {
		background-color: none;
		color: #994d00 !important;
		text-transform: uppercase;
	}
	
	p {
		background-color:none;
		font-size: 15px;
	}
</style>

</head>
<body>
	<%@ include file ="includes/header.jsp" %>
	<div class="container">
		<center>
                    <img src="${pageContext.request.contextPath }/static/UserFiles/${userObj.userId}_IMAGE.${userObj.imageExtention}" name="aboutme" width="140" height="140" border="0" class="img-circle"></a></a>
                    <h3 class="media-heading"> Joe Sixpack <small>USA</small></h3>
                    <span><strong>Skills: </strong></span>
                        <span class="label label-warning">HTML5/CSS</span>
                        <span class="label label-info">Adobe CS 5.5</span>
                        <span class="label label-info">Microsoft Office</span>
                        <span class="label label-success">Windows XP, Vista, 7</span>
                        
                        
                        <form class="marginBottom20">
				      <input type="hidden" value="IMAGE" name="fileType">
				      <input type="hidden" value="${userObj.userId}" name="userId">
		                     <div class="input-group">
			                <span class="input-group-btn">
			                    <span class="btn btn-primary btn-file">
			                        Browse… <input type="file" id="fileupload" name="file"  data-url="${ pageContext.request.contextPath }/user/upload/">
			                    </span>
			                </span>
			                <input type="text" class="form-control hidden" readonly="readonly" id="finame">
			            </div>
				     	 
				      </form>
				      <div class="row">
				<div class="pull-right">
			        <button type="button" class="btn btn-primary" id="upload-btn" style="display: none;">Upload</button>
			      </div>
			</div>
         </center>
                    <hr>
                    <center style="padding-top: 0;">
                    <h3 class="text-left"><strong>Bio </strong><br> </h3>
                       <p> ${jobInfo.bio} </p>
                    <br>
                   <!--   <div class="panel panel-default"> -->
                    </center>
                    
                    <b><br><input type="button" class="btn btn-default" align="right" value="Update Education Details" onclick="updateEducation()"></b>
                    <br><i class="fa fa-graduation-cap fa-2x"></i><h3 class="text-left"><strong>UG Education Details </strong><br> </h3>
                    <div class="panel panel-default">
                    <p class="text-left"><strong>UG Course: </strong><br>
                       ${userInfo.graduation.name } </p>
                       <p class="text-left"><strong>Specialization </strong><br>
                       ${userInfo.graduation.specialization }) </p>
                       <p class="text-left"><strong>Year Of Passing </strong><br>
                       ${userInfo.graduation.yearOfPassing } </p>
                       <p class="text-left"><strong>Grading System</strong><br>
                       ${userInfo.graduation.educationType } </p>
                       <p class="text-left"><strong>Marks </strong><br>
                       ${userInfo.graduation.marks }</p>
                       <p class="text-left"><strong>College/Institute</strong><br>
                       ${userInfo.graduation.universityName }</p>
                       <br>
                      </div>
                      <br><i class="fa fa-child fa-2x"></i><h3 class="text-left"><strong>Senior Secondary and Higher Secondary Education Details </strong><br> </h3>
                      <br><h4 class="text-left"><strong>Class 12</strong><br> </h4>
                      <div class="panel panel-default">
                       <p class="text-left"><strong>Board/Diploma</strong><br>
                       ${userInfo.twelfthStandard.name }</p>
                       <p class="text-left"><strong>Marks</strong><br>
                       ${userInfo.twelfthStandard.marks }</p>
                       <p class="text-left"><strong>Passing Year</strong><br>
                       ${userInfo.twelfthStandard.yearOfPassing }</p>
                       <p class="text-left"><strong>Medium</strong><br>
                       ${userInfo.twelfthStandard.board }</p>
                       </div>
                       
                       <br><h4 class="text-left"><strong>Class 10 </strong><br> </h4>
                       <div class="panel panel-default">
                       <p class="text-left"><strong>Board/Diploma</strong><br>
                       ${userInfo.tenthStandard.name }</p>
                       <p class="text-left"><strong>Marks</strong><br>
                       ${userInfo.tenthStandard.marks }</p>
                       <p class="text-left"><strong>Passing Year</strong><br>
                       ${userInfo.tenthStandard.yearOfPassing }</p>
                       <p class="text-left"><strong>Medium</strong><br>
                       ${userInfo.tenthStandard.board }</p>
                       </div>
                       
                       <br><i class="fa fa-briefcase fa-2x"></i><h3 class="text-left"><strong>Work preference </strong><br> </h3>
                       <div class="panel panel-default">
                       <p class="text-left"><strong>Specification of Preference</strong><br>
                       ${userInfo.workExperience.preference }</p>
                       <p class="text-left"><strong>When Can I Start Working?</strong><br>
                       ${userInfo.workExperience.startDate }</p>
                       <p class="text-left"><strong>Preferred Location</strong><br>
                       ${userInfo.workExperience.location }</p>
                       </div>
                       
                       <br><i class="fa fa-leanpub fa-2x"></i><h3 class="text-left"><strong>Internship Details </strong><br> </h3>
                       <div class="panel panel-default">
                       <p class="text-left"><strong>Company</strong><br>
                       ${userInfo.internship.company }</p>
                       <p class="text-left"><strong>Duration</strong><br>
                        ${userInfo.internship.duration_start }</p>
                       <p class="text-left"><strong>To</strong><br>
                        ${userInfo.internship.duration_end }</p>
                       <p class="text-left"><strong>Details</strong><br>
                       ${userInfo.internship.details }</p>
                       </div>
                       
                       
                       <b><br><input type="button"  class="btn btn-default" align="right" value="Update Job Details" onclick="updateJob()"></b>
                       <br><i class="fa fa-building fa-2x"></i><h3 class="text-left"><strong>Job Details </strong> </h3>
                       <div class="panel panel-default">
                       <p class="text-left"><strong>Profile Picture</strong><br>
                     <!--   <div class="fileinput fileinput-new" data-provides="fileinput"> <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 50px; height: 25px;"></div> <div> <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span>
                        <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div> </div> -->
                       <br>
                       
                       <p class="text-left"><strong>Describe your professional background in one line</strong><br>
                       ${jobInfo.bio }</p>
                       <p class="text-left"><strong>Industry</strong><br>
                       ${jobInfo.industry }</p>
                       <p class="text-left"><strong>Functional Area</strong><br>
                       ${jobInfo.functionalArea }</p>
                       <p class="text-left"><strong>Role</strong><br>
                       ${jobInfo.role }</p>
                       <p class="text-left"><strong>Preferred Work Location</strong><br>
                       ${jobInfo.workLocation }</p>
                       <p class="text-left"><strong>Desired Job Type</strong><br>
                       ${jobInfo.jobType }</p>
                       <p class="text-left"><strong>Desired Employment Type</strong><br>
                       ${jobInfo.employmentType }</p>
                       <p class="text-left"><strong>Skills</strong><br>
                       ${jobInfo.skills }</p>
                       <p class="text-left"><strong>Marital Status</strong><br>
                       ${jobInfo.maritalStatus }</p>
                       
                       <p class="text-left"><strong>Resume</strong><br>
                      
                      <form class="marginBottom20" style="left:100px;position: relative;">
				      <input type="hidden" value="RESUME" name="fileType">
				      <input type="hidden" value="${userObj.userId}" name="userId">
		                     <div class="input-group">
			                <span class="input-group-btn">
			                    <span class="btn btn-primary btn-file">
			                        Browse… <input type="file" id="resumeupload" name="file"  data-url="${ pageContext.request.contextPath }/user/upload/">
			                    </span>
			                </span>
			                <input type="text" class="form-control hidden" readonly="readonly" id="resname">
			            	</div>
				     	 
				      </form>
				      <div class="row">
						<div class="pull-right">
			        <button type="button" class="btn btn-primary" id="upload-res-btn" style="display: none;margin-top: -20px;">Upload</button>
			      		</div>
					  </div>
			
				<embed width="500" height="500" name="plugin" src="${pageContext.request.contextPath }/static/UserFiles/${userObj.userId}_RESUME.pdf" type="application/pdf">
				<a href="${pageContext.request.contextPath }/static/UserFiles/${userObj.userId}_RESUME.pdf" target="_blank">Click to download</a>
                       <br>
                       <p class="text-left"><strong>Passport</strong><br>
                 
                 		<form class="marginBottom20" style="left:100px;position: relative;">
				      <input type="hidden" value="PASSPORT" name="fileType">
				      <input type="hidden" value="${userObj.userId}" name="userId">
		                     <div class="input-group">
			                <span class="input-group-btn">
			                    <span class="btn btn-primary btn-file">
			                        Browse… <input type="file" id="passportupload" name="file"  data-url="${ pageContext.request.contextPath }/user/upload/">
			                    </span>
			                </span>
			                <input type="text" class="form-control hidden" readonly="readonly" id="passname">
			            	</div>
				     	 
				      </form>
				      <div class="row">
						<div class="pull-right">
			        <button type="button" class="btn btn-primary" id="upload-pass-btn" style="display: none;margin-top: -20px;">Upload</button>
			      		</div>
					  </div>
					  <img src="${pageContext.request.contextPath }/static/UserFiles/${userObj.userId}_PASSPORT.${userObj.passportExtention}" name="aboutme" width="140" height="140" border="0" class="img-circle"></a></a>
					  
                        <br>
                       <p class="text-left"><strong>Aadhar Card</strong><br>
                
                <form class="marginBottom20" style="left:100px;position: relative;">
				      <input type="hidden" value="AADHAR" name="fileType">
				      <input type="hidden" value="${userObj.userId}" name="userId">
		                     <div class="input-group">
			                <span class="input-group-btn">
			                    <span class="btn btn-primary btn-file">
			                        Browse… <input type="file" id="aadharupload" name="file"  data-url="${ pageContext.request.contextPath }/user/upload/">
			                    </span>
			                </span>
			                <input type="text" class="form-control hidden" readonly="readonly" id="aadharname">
			            	</div>
				     	 
				      </form>
				      <div class="row">
						<div class="pull-right">
			        <button type="button" class="btn btn-primary" id="upload-aad-btn" style="display: none;margin-top: -20px;">Upload</button>
			      		</div>
					  </div>
					  
					  <img src="${pageContext.request.contextPath }/static/UserFiles/${userObj.userId}_AADHAR.${userObj.aadharExtention}" name="aboutme" width="140" height="140" border="0" class="img-circle"></a></a>
        				<br>
                       </div>
                       
                    	</div>
                    	
                    	
                    	
                    
	<%@ include file ="includes/footer.jsp" %>
	<%@include file="includes/include-js.jsp"%>
	
</body>

<script type="text/javascript">

function updateEducation(){
	
	location.href="http://localhost:8080/Dew-Training/user/addupdateProfile";
}

function updateJob(){
	
	location.href="http://localhost:8080/Dew-Training/user/addjobProfile";
}
initFileUpload();
initFileUploadResume();
initFileUploadPassport();
initFileUploadAadhar();

</script>
</html>