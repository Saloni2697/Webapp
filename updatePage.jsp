<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Profile</title>
<%-- <%@include file="includes/include-css.jsp"%> --%>


<style type="text/css">

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

form {
    width: 100%;
    margin: 0 auto;
}
.btn{
	background-color: #FF8095 !important;
}
</style>
</head>
<body>

<div class="main">
    <%@ include file ="includes/header.jsp" %> 
	
	
	<div class="container"  style="padding-top: 150px;">
		<div class="row">
			<div class=" col-md-12 mx-auto">
			<h2>Update your Profile</h2><br>
			<div class="myform form">
				<form id="updateGraduation">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="text-center">Education Details</h3>
						</div>
					<h4>Under-Graduate Education Details</h4>
				 	<div class="panel-body">
						<div class="form-group">
						<input type="hidden" id="ugcourseid" value="${userInfo.graduation.name }">
					 		<label for="course_select">UG Course</label> 
							<select  name="name" id="courseug" class="form-control" > 
							<option  value="-1" selected="${empty userInfo.graduation.name }"> Select </option>
							  <option value="B.Com" selected="${userInfo.graduation.name eq 'B.Com'}">B.Com</option>
							  <option value="B.A." selected="${userInfo.graduation.name eq 'B.A.'}">B.A.</option>
							  <option value="B.Arch" selected="${userInfo.graduation.name eq 'B.Arch'}">B.Arch</option>
							  <option value="B.Des" selected="${userInfo.graduation.name eq 'B.Des'}">B.Des</option>
							  <option value="B.Ed" selected="${userInfo.graduation.name eq 'B.Ed'}">B.Ed</option>
							  <option value="B.Pharma" selected="${userInfo.graduation.name eq 'B.Pharma'}">B.Pharma</option>
							  <option value="B.Sc" selected="${userInfo.graduation.name eq 'B.Sc'}">B.Sc</option>
							  <option value="B.Tourism" selected="${userInfo.graduation.name eq 'B.Tourism'}">B.Tourism</option>
							  <option value="BBA/ BBM/ BBS" selected="${userInfo.graduation.name eq 'BBA/ BBM/ BBS'}">BBA/ BBM/ BBS</option>
							  <option value="BCA/ BCM" selected="${userInfo.graduation.name eq 'BCA/ BCM'}">BCA/ BCM</option>
							  <option value="BDS" selected="${userInfo.graduation.name eq 'BDS'}">BDS</option>
							  <option value="BE/ B.Tech" selected="${userInfo.graduation.name eq 'BE/ B.Tech'}">BE/ B.Tech</option>
							  <option value="BFA" selected="${userInfo.graduation.name eq 'BFA'}">BFA</option>
							  <option value="BHM" selected="${userInfo.graduation.name eq 'BHM'}">BMH</option>
							  <option value="BJMC" selected="${userInfo.graduation.name eq 'BJMV'}">BJMC</option>
							  <option value="BVSc" selected="${userInfo.graduation.name eq 'BVSc'}">BVSc</option>
							  <option value="Diploma" selected="${userInfo.graduation.name eq 'Diploma'}">Diploma</option> 
							  <option value="LLB" selected="${userInfo.graduation.name eq 'LLB'}">LLB</option>
							  <option value="MBBS" selected="${userInfo.graduation.name eq 'MBBS'}">MBBS</option> 
							</select>
						</div>
						<div class="form-group">
							<label for="specialization">Specialization</label>
							<input type="text" name="specialization" autocomplete="false" class="form-control" id="specialization" placeholder="Enter your specialization" value="${userInfo.graduation.specialization }">
						</div>
						<div class="form-group">
							<label for="yearOfPassing">Year of Passing</label>
							<select name="yearOfPassing" class="form-control" value="${userInfo.graduation.yearOfPassing }">
								<c:forEach var="year" begin="1990" end="2018" step="1">
									<option value="${year }">${year }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
						<input type="hidden" id="educationTypeid" value="${userInfo.graduation.educationType }">
							<label for="grading">Grading System</label>
							<select  name="educationType" id="grade_sys" class="form-control" aria-describedby="emailHelp" >
							<option value="-1" selected="${empty userInfo.graduation.educationType }"> Select </option>
							  <option value="Scale 10 Grading System" selected="${userInfo.graduation.educationType eq 'Scale 10 Grading System' }">Scale 10 Grading System</option>
							  <option value="Scale 4 Grading System" selected="${userInfo.graduation.educationType eq 'Scale 4 Grading System' }">Scale 4 Grading System</option>
							  <option value="% Marks out of 100 Max" selected="${userInfo.graduation.educationType eq '% Marks out of 100 Max' }">% Marks out of 100 Max</option>
							  <option value="Course requires a Pass" selected="${userInfo.graduation.educationType eq 'Course requires a Pass' }">Course requires a Pass</option>
							  </select>
						</div>
						<div class="form-group">
							<label for="marks">Marks</label>
							<input type="text" name="marks" class="form-control" id="marks" placeholder="Enter marks" value="${userInfo.graduation.marks }">
						</div>
						<div class="form-group">
							<label for="college">College/Institute, City</label>
							<input type="text" name="universityName" class="form-control" id="college" placeholder="Enter college/institute" value="${userInfo.graduation.universityName }" >
						</div>
					</div>
					</div>
					</form>
					<form id="updatetwelfth">
							<h4>Senior Secondary and Higher Secondary Education Details</h4>
					<div class="panel-body">
						<div class="form-group">
							<label for="class12">Class 12</label>
							<select  name="name" id="board_tw" class="form-control" aria-describedby="emailHelp" placeholder="Select Board" >
							<option> Select </option>
							  <option value="CBSE" selected="${userInfo.twelfthStandard.name eq 'CBSE' }">CBSE</option>
							  <option value="CISCE(ICSE/ISC)" selected="${userInfo.twelfthStandard.name eq 'CISCE(ICSE/ISC)' }">CISCE(ICSE/ISC)</option>
							  <option value="Diploma" selected="${userInfo.twelfthStandard.name eq 'Diploma' }">Diploma</option>
							  <option value="National Open School" selected="${userInfo.twelfthStandard.name eq 'National Open School' }">National Open School</option>
							  <option value="State Board" selected="${userInfo.twelfthStandard.name eq 'State Board'}">State Board</option>
							 </select><br>
							<input type="text"  name="marks" class="form-control" id="marks" placeholder="Enter your marks" value="${userInfo.twelfthStandard.marks }"><br>
							<select name="yearOfPassing" class="form-control" value="${userInfo.twelfthStandard.yearOfPassing }">
								<c:forEach var="year" begin="1990" end="2018" step="1">
									<option value="${year }">${year }</option>
								</c:forEach>
							</select><br>
							<select  name="board" id="medium_tw" class="form-control" aria-describedby="emailHelp" placeholder="Select Medium" >
							<option> Select </option>
							  <option value="Assamese/Asomiya" selected="${userInfo.twelfthStandard.board eq 'Assamese/Asomiya' }">Assamese/Asomiya</option>
							  <option value="Bengali/Bangla" selected="${userInfo.twelfthStandard.board eq 'Bengali/Bangla' }">Bengali/Bangla</option>
							  <option value="English" selected="${userInfo.twelfthStandard.board eq 'English' }">English</option>
							  <option value="Gujrati" selected="${userInfo.twelfthStandard.board eq 'Gujrati' }">Gujrati</option>
							  <option value="Hindi" selected="${userInfo.twelfthStandard.board eq 'Hindi' }">Hindi</option>
							  <option value="Kannada" selected="${userInfo.twelfthStandard.board eq 'Kannada' }">Kannadaoption>
							  <option value="Kashmiri" selected="${userInfo.twelfthStandard.board eq 'Kashmiri' }">Kashmiri</option>
							  <option value="Konkani" selected="${userInfo.twelfthStandard.board eq 'Konkani' }">Konkani</option>
							  <option value="Malayalam" selected="${userInfo.twelfthStandard.board eq 'Malayalam' }">Malayalam</option>
							  <option value="Manipuri" selected="${userInfo.twelfthStandard.board eq 'Manipuri' }">Manipuri<option>
							  <option value="Marathi" selected="${userInfo.twelfthStandard.board eq 'Marathi' }">Marathi</option>
							  <option value="Oriya" selected="${userInfo.twelfthStandard.board eq 'Oriya' }">Oriya<option>
							  <option value="Punjabi" selected="${userInfo.twelfthStandard.board eq 'Punjabi' }">Punjabi</option>
							  <option value="Sanskrit" selected="${userInfo.twelfthStandard.board eq 'Sanskrit' }">Sanskrit</option>
							  <option value="Tamil" selected="${userInfo.twelfthStandard.board eq 'Tamil' }">Tamil</option>
							  <option value="Telugu" selected="${userInfo.twelfthStandard.board eq 'Telugu' }">Telugu</option>
							  <option value="Urdu" selected="${userInfo.twelfthStandard.board eq 'Urdu' }">Urdu</option> 
							</select><br>
						</div>
						</form>
						<form id="updateTenth">
						<div class="form-group">
							<label for="class10">Class 10</label>
							<select  name="name" id="board_tw" class="form-control" aria-describedby="emailHelp" placeholder="Select Board" >
							  <option value="CBSE" selected="${userInfo.tenthStandard.name eq 'CBSE' }">CBSE</option>
							  <option value="CISCE(ICSE/ISC)" selected="${userInfo.tenthStandard.name eq 'CISCE(ICSE/ISC)' }">CISCE(ICSE/ISC)</option>
							  <option value="Diploma" selected="${userInfo.tenthStandard.name eq 'Diploma' }">Diploma</option>
							  <option value="National Open School" selected="${userInfo.tenthStandard.name eq 'National Open School' }">National Open School</option>
							  <option value="State Board" selected="${userInfo.tenthStandard.name eq 'State Board'}">State Board</option>
							 </select><br>
							<input type="text"  name="marks" class="form-control" id="marks_m" placeholder="Enter your marks" value="${userInfo.tenthStandard.marks }" ><br>
							<select name="yearOfPassing" class="form-control" value="${userInfo.tenthStandard.yearOfPassing }">
								<c:forEach var="year" begin="1990" end="2018" step="1">
									<option value="${year}">${year }</option>
								</c:forEach>
							</select><br>
							<select  name="board" id="medium_te" class="form-control" aria-describedby="emailHelp" placeholder="Select Medium" >
							<option> Select </option>
							  <option value="Assamese/Asomiya" selected="${userInfo.tenthStandard.board eq 'Assamese/Asomiya' }">Assamese/Asomiya</option>
							  <option value="Bengali/Bangla" selected="${userInfo.tenthStandard.board eq 'Bengali/Bangla' }">Bengali/Bangla</option>
							  <option value="English" selected="${userInfo.tenthStandard.board eq 'English' }">English</option>
							  <option value="Gujrati" selected="${userInfo.tenthStandard.board eq 'Gujrati' }">Gujrati</option>
							  <option value="Hindi" selected="${userInfo.tenthStandard.board eq 'Hindi' }">Hindi</option>
							  <option value="Kannada" selected="${userInfo.tenthStandard.board eq 'Kannada' }">Kannadaoption>
							  <option value="Kashmiri" selected="${userInfo.tenthStandard.board eq 'Kashmiri' }">Kashmiri</option>
							  <option value="Konkani" selected="${userInfo.tenthStandard.board eq 'Konkani' }">Konkani</option>
							  <option value="Malayalam" selected="${userInfo.tenthStandard.board eq 'Malayalam' }">Malayalam</option>
							  <option value="Manipuri" selected="${userInfo.tenthStandard.board eq 'Manipuri' }">Manipuri<option>
							  <option value="Marathi" selected="${userInfo.tenthStandard.board eq 'Marathi' }">Marathi</option>
							  <option value="Oriya" selected="${userInfo.tenthStandard.board eq 'Oriya' }">Oriya<option>
							  <option value="Punjabi" selected="${userInfo.tenthStandard.board eq 'Punjabi' }">Punjabi</option>
							  <option value="Sanskrit" selected="${userInfo.tenthStandard.board eq 'Sanskrit' }">Sanskrit</option>
							  <option value="Tamil" selected="${userInfo.tenthStandard.board eq 'Tamil' }">Tamil</option>
							  <option value="Telugu" selected="${userInfo.tenthStandard.board eq 'Telugu' }">Telugu</option>
							  <option value="Urdu" selected="${userInfo.tenthStandard.board eq 'Urdu' }">Urdu</option> 
							</select><br>
						</div>
						
						</form>
					
				
				<form id="updateWork">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center"> Work Preference </h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label for="work_pre">Specify your preference: </label>
							<label class="radio-inline"><input type="radio" name="preference" value="FULL_TIME" checked="${userInfo.workExperience.preference eq 'FULL_TIME' }"> FULL-TIME</label>
							<label class="radio-inline"><input type="radio" name="preference" value="PART_TIME" checked="${userInfo.workExperience.preference eq 'PART_TIME' }"> PART-TIME</label>
							<label class="radio-inline"><input type="radio" name="preference" value="INTERNSHIP" checked="${userInfo.workExperience.preference eq 'INTERNSHIP' }"> INTERNSHIP</label>
 						</div>
 						<div class="form-group">
 							<label for="start_date"> When can you start working? </label>
 							<label class="radio-inline"><input type= "radio" name="startDate" value="IMMEDIATELY" checked="${userInfo.workExperience.startDate eq 'IMMEDIATELY' }"> IMMEDIATELY </label> 
 							<label class="radio-inline"><input type="radio" name="startDate"  value="LATER_DATE" checked="${userInfo.workExperience.startDate eq 'LATER_DATE' }"> LATER DATE </label>
 						</div>
 						<div class="form-group">
 							<label for="location"> Preferred location: </label>
 							<select  name="location" id="location" class="form-control" aria-describedby="emailHelp" >
 							<option> Select</option>
							  <option value="Ahmedabad" selected="${userInfo.workExperience.location eq 'Ahmedabad' }">Ahemdabad</option>
								  <option value="Bangalore" selected="${userInfo.workExperience.location eq 'Bangalore' }">Bangalore</option>
								  <option value="Bhopal" selected="${userInfo.workExperience.location eq 'Bhopal' }">Bhopal</option>
								  <option value="Bhubhaneshwar" selected="${userInfo.workExperience.location eq 'Bhubhaneshwar' }">Bhubhaneshawar</option>
								  <option value="Chennai" selected="${userInfo.workExperience.location eq 'Chennai' }">Chennai</option>
								  <option value=" New Delhi" selected="${userInfo.workExperience.location eq 'New Delhi' }">New Delhi</option>
								  <option value="Gurgaon" selected="${userInfo.workExperience.location eq 'Gurgaon' }">Gurgaon</option>
								  <option value="Guwahati" selected="${userInfo.workExperience.location eq 'Guwahati' }">Guwahati</option>
								  <option value="Hyderabad" selected="${userInfo.workExperience.location eq 'Hyderabad' }">Hyderabad</option>
								  <option value="Indore" selected="${userInfo.workExperience.location eq 'Indore' }">Indore</option>
								  <option value="Jaipur" selected="${userInfo.workExperience.location eq 'Jaipur' }">Jaipur</option>
								  <option value="Kolkata" selected="${userInfo.workExperience.location eq 'Kolkata' }">Koltata</option>
								  <option value="Lucknow" selected="${userInfo.workExperience.location eq 'Lucknow' }">Lucknow</option>
								  <option value="Mumbai" selected="${userInfo.workExperience.location eq 'Mumbai' }">Mumbai</option>
								  <option value="Noida" selected="${userInfo.workExperience.location eq 'Noida' }"> Noida</option>
								  <option value="Patna" selected="${userInfo.workExperience.location eq 'Patna' }">Patna</option>
								  <option value="Pune" selected="${userInfo.workExperience.location eq 'Pune' }">Pune</option> 
								  <option value="Srinagar" selected="${userInfo.workExperience.location eq 'Srinagar' }">Srinagar</option>
							</select>
 						</div>
					</div>
				</div>
				</form>
				
				<form id="updateInternship">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center"> Internship Details</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label for="company-name"> Company </label>
							<input type="text" name="company" id="company_name" class="form-control" value="${userInfo.internship.company }">
						</div>
						<div class="form-group">
							<label for="duration"> Duration </label>
							<input type= "text" name="duration_start" id="date_start" class="form-control" value="${userInfo.internship.duration_start }">
							<h5> To </h5>
							<input type="text"  name="duration_end" id="date-end" class="form-control" value="${userInfo.internship.duration_end }">
						</div>
						<div class="form-group">
							<label for="details"> Details</label>
							<textarea rows="5" cols="10" class="form-control" name="details" id="details" placeholder="${userInfo.internship.details }"></textarea>
						</div>
					</div>
				</div>
				
				</form>
				
				<form id="updateSubmit">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="form-group">
							<input type="checkbox" checked="checked"> I have read and I agree to the terms and conditions.
							<br><br>
							<b><input class="form-control" type="button" onclick="updateUserInfo()" id="agreed" value="Submit and continue with registration"></b> 
						</div>
					</div>
				</div>
				</form>
				
				</div>
			</div>
		</div>
	</div>
			
	<%@include file="includes/include-js.jsp"%> 
	
	</div>
	  <%@ include file ="includes/footer.jsp" %>
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
function updateUserInfo(){
	var userInfo={};
	var ugData=($("#updateGraduation").serializeObject());
	var twelfthData=($("#updatetwelfth").serializeObject());
	var tenthData=($("#updateTenth").serializeObject());
	var workData=($("#updateWork").serializeObject());
	var internData=($("#updateInternship").serializeObject());
	// ugData.educationType='REGULAR';
	userInfo.tenthStandard=tenthData;
	userInfo.twelfthStandard=twelfthData;
	userInfo.graduation=ugData;
	userInfo.workExperience=workData;
	userInfo.internship=internData;
	console.log(JSON.stringify(userInfo));
	
	var url=$("#baseUrl").val()+"/updateUserInfo";
	$.ajax({
        url : url,
        type : 'POST',
        data:JSON.stringify(userInfo),
        dataType : "json",
        contentType : "application/json",
        success : function(data) {
        	console.log(data)
        	if(data.status==='success')
			window.location.href=$("#baseUrl").val()+"/user/addjobProfile"
			else
				alert("Error while adding/updating details")
        }
      });
}


</script>
</html>