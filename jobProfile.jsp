<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
.btn{
	background-color: #FF8095 !important;
	}
</style>

</head>

<body>
	<%@ include file ="includes/header.jsp" %>
	
	<div class="container"  style="padding-top: 150px;">
		<div class="row">
			<div class=" col-md-12 mx-auto">
				<h2>Update your  Job Profile</h2><br>
					<div class="myform form">
						<form id="updateJob">
							
							 <!--   <div class="form-group">
								<label for="image">Upload Picture</label>
								<input type="text" id="image" class="form-control">
							  </div> -->
							  <div class="form-group">
							  	<label for="bio"> Describe your professional background </label>
							  	<textarea name="bio" rows="5" cols="5" class="form-control" id="bio" placeholder="${jobInfo.bio }"></textarea>
							  </div>
							  <div class="form-group">
							  	<label for="industry">Industry</label>
							  	<select  name="industry" id="industry" class="form-control" aria-describedby="emailHelp">
							  	  <option>Select</option>
								  <option value="Accounting/Finance" selected="${jobInfo.industry eq 'Accounting/Finance' }">Accounting/Finance</option>
								  <option value="Advertising/PR/MR/Events"  selected="${jobInfo.industry eq 'Advertising/PR/MR/Events' }">Advertising/PR/MR/Events</option>
								  <option value="Architecture/Interior Designing" selected="${jobInfo.industry eq 'Architecture/Interior Designing' }">Architecture/Interior Designing</option>
								  <option value="Aviation/Aerospace Firms" selected="${jobInfo.industry eq 'Aviation/Aerospace Firms' }">Aviation/Aerospace Firms</option>
								  <option value="Banking/Financial Services/Broking" selected="${jobInfo.industry eq 'Banking/Financial Services/Broking' }">Banking/Financial Services/Broking</option>
								  <option value="Construction/Engineering/Cement/Metals" selected="${jobInfo.industry eq 'Construction/Engineering/Cement/Metals' }">Construction/Engineering/Cement/Metals</option>
								  <option value="Export Import" selected="${jobInfo.industry eq 'Export Import' }">Export Import</option>
								  <option value="Food Processing" selected="${jobInfo.industry eq 'Food Processing' }">Food Processing</option>
								  <option value="Gems and Jewellery" selected="${jobInfo.industry eq 'Gems and Jewellery' }">Gems and Jewellery</option>
								  <option value="Hotel Management" selected="${jobInfo.industry eq 'Hotel Management' }"> Hotel Management</option>
								  <option value="Heavy Machinery" selected="${jobInfo.industry eq 'Heavy Machinerys' }">Heavy Machinery</option>
								  <option value="Insurance" selected="${jobInfo.industry eq 'InsuranceInsurance' }">Insurance</option>
								  <option value="Internet/E-Commerce" selected="${jobInfo.industry eq 'Internet/E-Commerce' }">Internet/E-Commerce</option>
								  <option value="IT- Hardware/ Software Services" selected="${jobInfo.industry eq 'IT- Hardware/ Software Services' }">IT- Hardware/ Software Services</option>
								  <option value="Leather" selected="${jobInfo.industry eq 'Leather' }">Leather</option>
								  <option value="Healthcare/ Medical equipments" selected="${jobInfo.industry eq 'Healthcare/ Medical equipments' }">Healthcare/ Medical equipments</option>
								  <option value="Mining" selected="${jobInfo.industry eq 'Mining' }">Mining</option> 
								  <option value="NGO and Social Services" selected="${jobInfo.industry eq 'NGO and Social Services' }">NGO and Social Services</option>
								  <option value="Automation" selected="${jobInfo.industry eq 'Automation' }">Automation</option>
								  <option value="Security/ Law Enforcements" selected="${jobInfo.industry eq 'Security/ Law Enforcements' }">Security/ Law Enforcements</option>
								  <option value="Real-estate" selected="${jobInfo.industry eq 'Real-estate' }">Real-estate</option> 
								  <option value="Shipping & Marine" selected="${jobInfo.industry eq 'Shipping & Marine' }">Shipping & Marine</option>
								  <option value="Textiles" selected="${jobInfo.industry eq 'Textiles' }">Textiles</option>
								</select>
							  </div>
							  <div class="form-group">
							  	<label for="function">Functional Area </label>
							  	<select  name="functionalArea" id="area" class="form-control" aria-describedby="emailHelp" >
							  	  <option> Select </option>
								  <option value="Accounting/Finance/Tax" selected="${jobInfo.functionalArea eq 'Accounting/Finance/Tax'}">Accounting/Finance/Tax</option>
								  <option value="Agent" selected="${jobInfo.functionalArea eq 'Agent'}">Agent</option>
								  <option value="Analytics/ Business Intelligence" selected="${jobInfo.functionalArea eq 'Analytics/ Business Intelligence'}">Analytics/ Business Intelligence</option>
								  <option value="Architecture/Interior Designing" selected="${jobInfo.functionalArea eq 'Architecture/Interior Designing'}">Architecture/Interior Designing</option>
								  <option value="Banking/Insurance" selected="${jobInfo.functionalArea eq 'Banking/Insurance'}">Banking/Insurance</option>
								  <option value="Content Journalism" selected="${jobInfo.functionalArea eq 'Content Journalism'}">Content Journalism</option>
								  <option value="Corporate Planning/ Consulting" selected="${jobInfo.functionalArea eq 'Corporate Planning/ Consulting'}">Corporate Planning/ Consulting</option>
								  <option value="Engineering Design/ R&D" selected="${jobInfo.functionalArea eq 'Engineering Design/ R&D'}">Engineering Design/ R&D</option>
								  <option value="Export/ Import/ Mechandise" selected="${jobInfo.functionalArea eq 'Export/ Import/ Mechandise'}">Export/ Import/ Mechandise</option>
								  <option value="IT Software- Client Server" selected="${jobInfo.functionalArea eq 'IT Software- Client Server'}">IT Software- Client Server</option>
								  <option value="IT Software- Mainframe" selected="${jobInfo.functionalArea eq 'IT Software- Mainframe'}">IT Software- Mainframe</option>
								  <option value="IT Software- Middleware" selected="${jobInfo.functionalArea eq 'IT Software- Middleware'}">IT Software- Middleware</option>
								  <option value="IT Software- Mobile" selected="${jobInfo.functionalArea eq 'IT Software- Mobile'}">IT Software- Mobile</option>
								  <option value="IT Software- ECommerce" selected="${jobInfo.functionalArea eq 'IT Software- ECommerce'}">IT Software- ECommerce</option>
								  <option value="Marketing/ Advertising" selected="${jobInfo.functionalArea eq 'Marketing/ Advertising'}">Marketing/ Advertising</option>
								  <option value="Legal" selected="${jobInfo.functionalArea eq 'Legal'}">Legal</option>
								  <option value="Graphic Design/ Visualising" selected="${jobInfo.functionalArea eq 'Graphic Design/ Visualising'}">Graphic Design/ Visualising</option>
								</select>
							  </div>
							  <div class="form-group">
							  	<label for="role">Role </label>
							  	<input name="role" type="text" id="role" class="form-control" value="${jobInfo.role }">
							  </div>
							  <div class="form-group">
							  	<label for="loc">Preferred Work Location</label>
							  	<select  name="workLocation" id="location" class="form-control" aria-describedby="emailHelp"  >
							  	  <option> Select </option>
								  <option value="Ahmedabad" selected="${jobInfo.workLocation eq 'Ahmedabad' }">Ahemdabad</option>
								  <option value="Bangalore" selected="${jobInfo.workLocation eq 'Bangalore' }">Bangalore</option>
								  <option value="Bhopal" selected="${jobInfo.workLocation eq 'Bhopal' }">Bhopal</option>
								  <option value="Bhubhaneshwar" selected="${jobInfo.workLocation eq 'Bhubhaneshwar' }">Bhubhaneshawar</option>
								  <option value="Chennai" selected="${jobInfo.workLocation eq 'Chennai' }">Chennai</option>
								  <option value=" New Delhi" selected="${jobInfo.workLocation eq 'New Delhi' }">New Delhi</option>
								  <option value="Gurgaon" selected="${jobInfo.workLocation eq 'Gurgaon' }">Gurgaon</option>
								  <option value="Guwahati" selected="${jobInfo.workLocation eq 'Guwahati' }">Guwahati</option>
								  <option value="Hyderabad" selected="${jobInfo.workLocation eq 'Hyderabad' }">Hyderabad</option>
								  <option value="Indore" selected="${jobInfo.workLocation eq 'Indore' }">Indore</option>
								  <option value="Jaipur" selected="${jobInfo.workLocation eq 'Jaipur' }">Jaipur</option>
								  <option value="Kolkata" selected="${jobInfo.workLocation eq 'Kolkata' }">Koltata</option>
								  <option value="Lucknow" selected="${jobInfo.workLocation eq 'Lucknow' }">Lucknow</option>
								  <option value="Mumbai" selected="${jobInfo.workLocation eq 'Mumbai' }">Mumbai</option>
								  <option value="Noida" selected="${jobInfo.workLocation eq 'Noida' }"> Noida</option>
								  <option value="Patna" selected="${jobInfo.workLocation eq 'Patna' }">Patna</option>
								  <option value="Pune" selected="${jobInfo.workLocation eq 'Pune' }">Pune</option> 
								  <option value="Srinagar" selected="${jobInfo.workLocation eq 'Srinagar' }">Srinagar</option>
								</select>
							  </div>
							  <div class="form-group">
							  	<label for="type_job">Desired Job Type</label><br>
							  	<input type="radio" name="jobType" value="PERMANENT" checked="${jobInfo.jobType eq 'PERMANENT' }"> Permanent
							  	<input type="radio" name="jobType" value="TEMPORARY" checked="${jobInfo.jobType eq 'TEMPORARY' }"> Temporary/ Contract
							  	<input type="radio" name="jobType" value="BOTH" checked="${jobInfo.jobType eq 'BOTH' }" > Both
							  </div>
							  <div class="form-group">
							  	<label for="type_employ">Desired Employment Type</label><br>
							  	<input type="radio" name="employmentType" value="FULL_TIME" checked="${jobInfo.employmentType eq 'FULL_TIME' }"> Full-Time
							  	<input type="radio" name="employmentType" value="PART_TIME" checked="${jobInfo.employmentType eq 'PART_TIME' }"> Part-Time
							  	<input type="radio" name="employmentType" value="INTERNSHIP" checked="${jobInfo.employmentType eq 'INTERNSHIP' }"> Both
							  </div>
							  <div class="form-group">
							  	<label for="skills">Skills</label>
							  	<textarea name="skills" rows="5" cols="5" class="form-control" id="skills" placeholder="${jobInfo.skills }"></textarea>
							  </div>
							  <div class="form-group">
							  	<label for="status">Marital Status</label>
							  	<select name="maritalStatus" id="status" class="form-control" >
							  		<option> Select </option>
							  		<option value="Married" selected="${jobInfo.maritalStatus eq 'Married'}">Married</option>
							  		<option value="Single" selected="${jobInfo.maritalStatus eq 'Single'}">Single</option>
							  		<option value="Widowed" selected="${jobInfo.maritalStatus eq 'Widowed'}">Widowed</option>
							  		<option value="Divorced" selected="${jobInfo.maritalStatus eq 'Divorced'}">Divorced</option>
							  	</select>
							  </div>
							  <!--  <div class="form-group">
							  	<label for="aadhar">Upload Aadhar Card</label>
							  	<input type="text" id="aadhar" class="form-control">
							  </div>
							  <div class="form-group">
							  	<label for="passport">Upload Passport</label>
							  	<input type="text" id="passport" class="form-control">
							  </div>
							  <div class="form-group">
							  	<label for="resume">Upload Resume</label>
							  	<input type="text" id="resume" class="form-control">
							  </div> -->
							  <hr>
							  <div class="form-group">
							  	<b><input type="button" class="form-control btn btn-default"  onclick="updateJobInfo()" value="Submit and view Profile"></b>
							  </div>
							  <br> 
						</form>
						<br>
					</div>
			</div>
		</div>
	</div>
	
	
	
	
	<%@ include file ="includes/footer.jsp" %>
	<%@include file="includes/include-js.jsp"%> 
	
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
function updateJobInfo(){
	var formData=$("#updateJob").serializeObject();
	console.log(formData);
	var url=$("#baseUrl").val()+"/updateJobInfo";
	$.ajax({
        url : url,
        type : 'POST',
        data:JSON.stringify(formData),
        dataType : "json",
        contentType : "application/json",
        success : function(data) {
        	console.log(data)
        	if(data.status==='success')
			window.location.href=$("#baseUrl").val()+"/user/myProfile"
			else
				alert("Error while adding/updating details")
        }
      });
}

</script>
</html>