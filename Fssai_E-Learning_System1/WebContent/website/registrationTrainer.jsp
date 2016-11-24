<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>
<script type='text/javascript'>
    function myFunction() {
    	window.document.myForm.imgcaptcha.src='';window.document.myForm.imgcaptcha.src='./Captcha.jpg?random='+new Date().getTime();
        return false;
    }
    
    function myCheckPermanent() {
    	var x = document.getElementById('checkPermanent').checked;
    	permanent1.style.display = checkPermanent.checked ? "none" : "block";
    	permanent2.style.display = checkPermanent.checked ? "none" : "block";
    	 if(x == true){
    	    	document.getElementById('TrainingCenterPermanentLine1').value= document.getElementById('TrainingCenterCorrespondenceLine1').value;
    	    	document.getElementById('TrainingCenterPermanentLine2').value= document.getElementById('TrainingCenterCorrespondenceLine2').value;
    	    	document.getElementById('TrainingCenterPermanentPincode').value= document.getElementById('TrainingCenterCorrespondencePincode').value;    	
    	    	document.getElementById('').value= document.getElementById('').value;
    	    	document.getElementById('').value= document.getElementById('').value;
    	    	document.getElementById('').value= document.getElementById('').value;
    	    	    	    }
    	    if(x == false){
    	    	document.getElementById('TrainingCenterCorrespondenceLine1').value= "";
    	    	document.getElementById('TrainingCenterCorrespondenceLine2').value= "";
    	    	document.getElementById('TrainingCenterCorrespondencePincode').value= "";
    	    	document.getElementById('').value= document.getElementById('').value="";
    	    	document.getElementById('').value= document.getElementById('').value="";
    	    	document.getElementById('').value= document.getElementById('').value="";   	    	
    	    }
    }
    
    function validateFields() {
    	if(document.getElementById("Title").value=="0") {
    	document.getElementById("Title").style.borderColor = "red";
    	document.getElementById("TitleError").style.display = 'block';
    	document.getElementById("Title").focus();
    	return false;
    	}else{
    	    document.getElementById('Title').style.borderColor = "#ccc";
    	    document.getElementById("TitleError").style.display = 'none';
    	    }
    	if(document.getElementById("TrainingCenterCorrespondenceState").value=="0") {
        	document.getElementById("TrainingCenterCorrespondenceState").style.borderColor = "red";
        	document.getElementById("TrainingCenterCorrespondenceStateError").style.display = 'block';
        	document.getElementById("TrainingCenterCorrespondenceState").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingCenterCorrespondenceState').style.borderColor = "#ccc";
        	    document.getElementById("TrainingCenterCorrespondenceStateError").style.display = 'none';
        	    }
    	/* if(document.getElementById("TrainingCenterCorrespondenceDistrict").value=="0") {
        	document.getElementById("TrainingCenterCorrespondenceDistrict").style.borderColor = "red";
        	document.getElementById("TrainingCenterCorrespondenceDistrictError").style.display = 'block';
        	document.getElementById("TrainingCenterCorrespondenceDistrict").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingCenterCorrespondenceDistrict').style.borderColor = "#ccc";
        	    document.getElementById("TrainingCenterCorrespondenceDistrictError").style.display = 'none';
        	    } */
    	/* if(document.getElementById("TrainingCenterCorrespondenceCity").value=="0") {
        	document.getElementById("TrainingCenterCorrespondenceCity").style.borderColor = "red";
        	document.getElementById("TrainingCenterCorrespondenceCityError").style.display = 'block';
        	document.getElementById("TrainingCenterCorrespondenceCity").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingCenterCorrespondenceCity').style.borderColor = "#ccc";
        	    document.getElementById("TrainingCenterCorrespondenceCityError").style.display = 'none';
        	    } */
    	if(document.getElementById("TrainingCenterPermanentState").value=="0") {
        	document.getElementById("TrainingCenterPermanentState").style.borderColor = "red";
        	document.getElementById("TrainingCenterPermanentStateError").style.display = 'block';
        	document.getElementById("TrainingCenterPermanentState").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingCenterPermanentState').style.borderColor = "#ccc";
        	    document.getElementById("TrainingCenterPermanentStateError").style.display = 'none';
        	    }
    	/* if(document.getElementById("TrainingCenterPermanentDistrict").value=="0") {
        	document.getElementById("TrainingCenterPermanentDistrict").style.borderColor = "red";
        	document.getElementById("TrainingCenterPermanentDistrictError").style.display = 'block';
        	document.getElementById("TrainingCenterPermanentDistrict").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingCenterPermanentDistrict').style.borderColor = "#ccc";
        	    document.getElementById("TrainingCenterPermanentDistrictError").style.display = 'none';
        	    } */
    	/* if(document.getElementById("TrainingCenterPermanentCity").value=="0") {
        	document.getElementById("TrainingCenterPermanentCity").style.borderColor = "red";
        	document.getElementById("TrainingCenterPermanentCityError").style.display = 'block';
        	document.getElementById("TrainingCenterPermanentCity").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingCenterPermanentCity').style.borderColor = "#ccc";
        	    document.getElementById("TrainingCenterPermanentCityError").style.display = 'none';
        	    } */
    	
    	if(document.getElementById("FoodSafetyExpBackground").value=="0") {
        	document.getElementById("FoodSafetyExpBackground").style.borderColor = "red";
        	document.getElementById("FoodSafetyExpBackgroundError").style.display = 'block';
        	document.getElementById("FoodSafetyExpBackground").focus();
        	return false;
        	}else{
        	    document.getElementById('FoodSafetyExpBackground').style.borderColor = "#ccc";
        	    document.getElementById("FoodSafetyExpBackgroundError").style.display = 'none';
        	    }
    	if(document.getElementById("ExpInFoodSafefyTimeMonth").value=="0") {
        	document.getElementById("ExpInFoodSafefyTimeMonth").style.borderColor = "red";
        	document.getElementById("ExpInFoodSafefyTimeMonthError").style.display = 'block';
        	document.getElementById("ExpInFoodSafefyTimeMonth").focus();
        	return false;
        	}else{
        	    document.getElementById('ExpInFoodSafefyTimeMonth').style.borderColor = "#ccc";
        	    document.getElementById("ExpInFoodSafefyTimeMonthError").style.display = 'none';
        	    }
    return( true );
    }
    
    function myBasic(oCheckbox){
    	var y = [];
    	$("input[name='BasicCourse']:checked").each(function (){
    	    y.push($(this).val());
    	});
    	document.getElementById('BasicCourse1').value= y;
    	return y;
    }
    function myAdvance(oCheckbox){
    	var y = [];
    	$("input[name='AdvanceCourse']:checked").each(function (){
    	    y.push($(this).val());
    	});
    	document.getElementById('AdvanceCourse1').value= y;
    	return y;
    }
    function mySpecial(oCheckbox){
    	var y = [];
    	$("input[name='SpecialCourse']:checked").each(function (){
    	    y.push($(this).val());
    	});
    	document.getElementById('SpecialCourse1').value= y;
    	return y;
    }
    
    function checkname()
    {
     var name=document.getElementById( "UserId" ).value;
    	
     if(name)
     {
      $.ajax({
      type: 'post',
      url: 'checkdata.jspp?'+ name,
      data: {
       user_name:name,
      },
      success: function (response) {
       $( '#name_status' ).html(response);
       if(response=="OK")	
       {
    	   document.getElementById("register").style.display = 'none';
        return true;	
       }
       else
       {
    	   document.getElementById("register").style.display = 'block';
        return false;	
       }
      }
      });
     }
     else
     {
      $( '#name_status' ).html("");
      document.getElementById("register").style.display = 'none';
      return false;
     }
    } 
</script>
<cf:form action="registrationTrainer.fssai" name="myForm" method="POST" commandName="registrationFormTrainer" onsubmit="return validateFields();"> 

<!-- login form -->
<div class="row">
<div class="col-md-2 hidden-xs"></div>
<div class="col-md-8  col-xs-12">
<h3 class="text-capitalize heading-3-padding">Trainer Registration Form</h3>
         
          <!-- personal info -->
          <div class="personel-info">
            <fieldset>
              <legend>Personal Information</legend>              
              <!-- left side -->
<div class="col-md-6 col-xs-12">
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.UserId" /></strong></li>
<li class="style-li error-red"><span id="name_status"> </span><span id="err"> </span>
<cf:errors path="UserId" cssClass="error" /></li>
</ul>
</div>
<cf:input path="UserId" class="form-control"  placeholder="User Id"  onblur  ="checkname();"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.AadharNumber" /></strong></li>
<li class="style-li error-red"><cf:errors path="AadharNumber" cssClass="error" /></li>
</ul>
</div>
<cf:input path="AadharNumber" class="form-control" maxlength="12"  placeholder="Aadhar Number" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.DOB" /></strong></li>
<li class="style-li error-red"><cf:errors path="DOB" cssClass="error" /></li>
</ul>
</div>
<cf:input path="DOB" class="form-control"  placeholder="DOB"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Gender" /></strong></li>
<li class="style-li error-red"><cf:errors path="gender" cssClass="error" /></li>
</ul>
</div>
<label class="radio-inline">
<cf:radiobutton path="gender" value="M" checked="true" />Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <cf:radiobutton path="gender" value="F" />Female
</label>
</div>
</div>         
<!-- right side -->
<div class="col-md-6 col-xs-12">
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Title" /></strong></li>
<li class="style-li error-red"><label Class="error visibility" id="TitleError">Please select title</label>
<cf:errors path="Title" cssClass="error" /></li>
</ul>
</div>
<cf:select path="Title" class="form-control">
<cf:option value="0" label="Select Title" />
<cf:options items="${titleList}" itemValue="titleId" itemLabel="titleName" />
</cf:select>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.FirstName" /></strong></li>
<li class="style-li error-red"><cf:errors path="FirstName" cssClass="error" /></li>
</ul>
</div>
<cf:input path="firstName" class="form-control"  placeholder="First Name"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.MiddleName" /></strong></li>
<li class="style-li error-red"><cf:errors path="MiddleName" cssClass="error" /></li>
</ul>
</div>
<cf:input path="MiddleName" class="form-control" name="MiddleName"  placeholder="Middle Name"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.LastName" /></strong></li>
<li class="style-li error-red"><cf:errors path="LastName" cssClass="error" /></li>
</ul>
</div>
<cf:input path="LastName" class="form-control"  placeholder="Last Name"/>
</div>

</div></fieldset>
</div>

<div class="row" style="height: 20px;"> </div>          
<!-- contact details -->
<div class="personel-info">
<fieldset>
<legend>Correspondence Address</legend>              
<!-- permanent address -->
<!--Left side-->
<div class="col-md-6 col-xs-12">

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.TrainingCenterCorrespondenceLine1" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterCorrespondenceLine1" cssClass="error" /></li>  
</ul>
</div>
<cf:input path="TrainingCenterCorrespondenceLine1" class="form-control"  placeholder="Address Line 1"/>
</div> 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.TrainingCenterCrrespondenceLine2" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterCorrespondenceLine2" cssClass="error" /></li>  
</ul>
</div>
<cf:input path="TrainingCenterCorrespondenceLine2" class="form-control"  placeholder="Address Line 1"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceState" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="TrainingCenterCorrespondenceStateError">Please select state</label>
<cf:errors path="TrainingCenterCorrespondenceState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="TrainingCenterCorrespondenceState" class="form-control">
<cf:option value="0" label="Select State" />
<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName" />
</cf:select>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.District" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="TrainingCenterCorrespondenceDistrictError">Please select district</label>
<cf:errors path="TrainingCenterCorrespondenceDistrict" cssClass="error" /></li>
</ul>
</div>
<cf:select path="TrainingCenterCorrespondenceDistrict" class="form-control">
<cf:option value="0" label="Select District" />
<cf:options items="${districtList}" itemValue="districtId" itemLabel="districtName" />
</cf:select>
</div>
</div>
<!-- left side ends -->               
<!-- right side -->
<div class="col-md-6 col-xs-12">

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceCity" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="TrainingCenterCorrespondenceCityError">Please select city</label>
<cf:errors path="TrainingCenterCorrespondenceCity" cssClass="error" /></li>
</ul>
</div>
<cf:select path="TrainingCenterCorrespondenceCity" class="form-control">
<cf:option value="0" label="Select City" />
<cf:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
</cf:select>
</div>
              
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondencePincode" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterCorrespondencePincode" cssClass="error" /></li>        
</ul>
</div>
<cf:input path="TrainingCenterCorrespondencePincode"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Pincode" class="form-control"  maxlength="6" />
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceEmail" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterPermanentEmail" cssClass="error" /></li>
</ul>
</div>
<cf:input path="TrainingCenterPermanentEmail" placeholder="Email Id" class="form-control" />
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceMobile" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterPermanentMobile" cssClass="error" /></li>
</ul>
</div>
<cf:input path="TrainingCenterPermanentMobile" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Mobile Number" class="form-control"  maxlength="10" />  
</div>
</div>
<!-- right side ends -->
<!-- permanent address ends -->
<!-- selection -->


<!-- selection ends -->
              

</fieldset>

<br><br>












<fieldset>
		<legend>Permanent Address</legend>
		
<div class="col-xs-12">
<div class="col-md-12 col-sm-12 col-x-sm-12">
<input type="checkbox" id="checkPermanent" onclick="myCheckPermanent(this)"> <label class = "error">Is your correspondence address same as permanent address.</label> 
</div>

</div>		
<!--Left side-->
<div class="col-md-6 col-xs-12" id="permanent1">

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.TrainingCenterPermanentLine1" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterPermanentLine1"  cssClass="error"/></li> 
</ul>
</div>
<cf:input path="TrainingCenterPermanentLine1" placeholder="Address Line 1" class="form-control" />
</div> 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.TrainingCenterPermanentLine2" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterPermanentLine2"  cssClass="error"/></li> 
</ul>
</div>
<cf:input path="TrainingCenterPermanentLine2" placeholder="Address Line 2" class="form-control" />
</div> 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.State" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="TrainingCenterPermanentStateError">Please select state</label>
<cf:errors path="TrainingCenterPermanentState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="TrainingCenterPermanentState" class="form-control">
<cf:option value="0" label="Select State" />
<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName" />
</cf:select>
</div>


</div>
<!-- left side ends -->               
<!-- right side -->
<div class="col-md-6 col-xs-12" id="permanent2">
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.District" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="TrainingCenterPermanentDistrictError">Please select district</label>
<cf:errors path="TrainingCenterPermanentDistrict" cssClass="error" /></li>
</ul>
</div>
<cf:select path="TrainingCenterPermanentDistrict" class="form-control">
<cf:option value="0" label="Select District" />
<cf:options items="${districtList}" itemValue="districtId" itemLabel="districtName" />
</cf:select>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.City" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="TrainingCenterPermanentCityError">Please select city</label>
<cf:errors path="TrainingCenterPermanentCity" cssClass="error" /></li>
</ul>
</div>
<cf:select path="TrainingCenterPermanentCity" class="form-control">
<cf:option value="0" label="Select City" />
<cf:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
</cf:select>
</div>
              
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Pincode" /></strong></li>
<li class="style-li error-red"><cf:errors path="TrainingCenterPermanentPincode" cssClass="error" /></li>        
</ul>
</div>
<input id="TrainingCenterPermanentPincode" name="TrainingCenterPermanentPincode" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Pincode" class="form-control" type="text" value="" maxlength="6">
</div>


</div>
<!-- right side ends -->
</fieldset>



</div>


<!-- contact details ends -->          
<div class="row" style="height: 20px;"> </div>          
<!-- Experience Detais -->
<div class="personel-info">
<fieldset>
<legend>Experience Details</legend>              
<!-- left side -->
<div class="col-md-6 col-xs-12">
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.FoodSafetyExperienceBackground" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="TrainingCenterCorrespondenceCityError">Please select experience</label>
<cf:errors path="FoodSafetyExpBackground" cssClass="error" /></li>
</ul>
</div>
<cf:select path="FoodSafetyExpBackground" class="form-control">
<cf:option value="0" label="Select background" />
<cf:option value="1" label="Industry" />
<cf:option value="2" label="Academics" />
<cf:option value="3" label="R & D" />
</cf:select>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.ExperienceinFoodSafetyExperience" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="ExpInFoodSafefyTimeMonthError">Please select experience</label>
</li>
</ul>
</div>
<div class="row">
<div class="col-xs-6">
<cf:input cssClass="form-control" place-holder="Years" path="ExpInFoodSafefyTimeYear" maxlength="2" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>
<div class="col-xs-6">
<cf:select path="ExpInFoodSafefyTimeMonth" class="form-control">
<cf:option value="0" label="Select Month" />
<cf:option value="1" label="1" />
<cf:option value="2" label="2" />
<cf:option value="3" label="3" />
<cf:option value="4" label="4" />
<cf:option value="5" label="5" />
<cf:option value="6" label="6" />
<cf:option value="7" label="7" />
<cf:option value="8" label="8" />
<cf:option value="9" label="9" />
<cf:option value="10" label="10" />
<cf:option value="11" label="11" />
<cf:option value="12" label="12" />
</cf:select>
</div>
</div>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong>No. Of Training Sessions Conducted:</strong></li>
<li class="style-li error-red"> </li>
</ul>
</div>
<cf:input path="NoOfTrainingSessionConducted" class="form-control" placeholder="Session Number" maxlength="2" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>
</div>
<!-- left side ends --> 
              
<!-- right side -->
<div class="col-md-6 col-xs-12">
<div class="form-group">
<label>How Many Trainings (4Hrs) Sessions Wish To Conduct in a Month ?</label>
<cf:input path="TrainingSessionWishToConduct" class="form-control" placeholder="Session Number" maxlength="2" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>
<div class="form-group">
<label>Associated with any Training Partner ?</label>
<br />

<label class="radio-inline">
<cf:radiobutton path="AssociatedWithAnyTrainingPartner" value="Y" checked="true" />Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<cf:radiobutton path="AssociatedWithAnyTrainingPartner" value="N" />No</td>
</label>

</div>
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong>If Yes Training Partner Name:</strong></li>
<li class="style-li error-red"> </li>
</ul>
</div>
<cf:input path="AssociatedTrainingpartnerName" class="form-control" placeholder="Partner Name" />
</div>
</div>
<!-- right side ends -->              
</fieldset>
</div>
<div class="row" style="height: 20px;"> </div>
<!-- Basic courses -->
<div class="personel-info">
<h4>Courses wish to conduct ?</h4>
<fieldset>
<legend>Basic Courses</legend>
<!-- left -->
<div class="col-md-6 col-xs-12" style="width:100%;">

            
<div class="checkbox">
 <ct:forEach var="listValue" items="${basicCourseList}">
 <ct:if test="${listValue.coursetypeid == 1}">
 <label> <input type="checkbox"  value="${listValue.coursenameid }" name="BasicCourse"  id="${listValue.coursenameid }"  onclick=" return myBasic();">${listValue.coursename}</label><br>
 </ct:if>
 </ct:forEach>

 <cf:hidden path="BasicCourse1" value=""/>
</div>
 </div>
<!-- right -->
<div class="col-md-6 col-xs-12"></div>
</fieldset>
</div>
<!-- basic course -->           
<!-- Advanced courses -->          
<div class="personel-info">
<fieldset>
<legend>Advanced Courses</legend>
<!-- left -->
<div class="col-md-6 col-xs-12" style="width:100%;">
<div class="checkbox">
 <ct:forEach var="listValue" items="${basicCourseList}">
 <ct:if test="${listValue.coursetypeid == 2}">
 <label> <input type="checkbox" value="${listValue.coursenameid }" name="AdvanceCourse" id="${listValue.coursenameid }" onclick=" return myAdvance();">${listValue.coursename}</label><br>
 </ct:if>
 </ct:forEach>
 <cf:hidden path="AdvanceCourse1" value=""/>
</div>
<!-- right -->
<div class="col-md-6 col-xs-12"></div></div>
</fieldset>
</div>
<!-- advanced course --> 
          
<!-- special courses -->
<div class="personel-info">
<fieldset>
<legend>Special Courses</legend>
<!-- left -->
<div class="col-md-6 col-xs-12" style="width:100%;">
<div class="checkbox">
 <ct:forEach var="listValue" items="${basicCourseList}">
 <ct:if test="${listValue.coursetypeid == 3}">
 <label> <input type="checkbox"  value="${listValue.coursenameid }" name="SpecialCourse"  id="${listValue.coursenameid }"  onclick=" return mySpecial();">${listValue.coursename}</label><br>
 </ct:if>
</ct:forEach>
<cf:hidden path="SpecialCourse1" value=""/>
</div>
</div>              
<!-- right -->
<div class="col-md-6 col-xs-12"> </div>
</fieldset>
</div>
<!-- special course -->          
<div class="row" style="height: 20px;"> </div>
<div style="width:95%; margin-left:20px; float:left; height:100px; border:1px solid #cecece;"  class="form-group">
<div style="float:left">

<div style="float:left; width:98%;">
<label id="captchaError" style="float:left; width:99%; font-family:Calibri; margin-left:0px;">Please enter captcha in below textbox !!!</label>
</div>
<div style="float:left; width:99%;">
<img src="./Captcha.jpg" name="imgcaptcha" class="img-responsive" style="float:left; margin-left:1%;"/>
<button type="button" style="float:left; margin-left:1%; background:#f55d11; height:45px; color:#fff; border-radius:8px; border:none;"
 onclick="window.document.myForm.imgcaptcha.src='';window.document.myForm.imgcaptcha.src='./Captcha.jpg?random='+new Date().getTime();"> <i class="fa fa-refresh"></i> </button>
<input type="text" class="form-control" id ="Captcha"placeholder="Captcha"  style="float:left; margin-left:1%; width:25%;" />
</div>
</div>
<div style="float:left; width:99%;">
<input type="checkbox" id="check" style="margin-left:1%;">
<a href="#" target="_blank" class="terms-font-size"> I have read and understood the Terms & Conditions and the Privacy Policy of FSSAI. </a>
</div>
</div>



<div class="col-xs-12"></div>
          <div class="col-md-4 hidden-xs"></div>
          <div class="col-md-4 col-xs-12" id="register">
            <div class="pull-right">
              <div class="form-group"> 
                <input type="submit"  class="form-control login-btn" value="Register">
                </div>
            </div>
          </div>
          <div class="col-md-4 hidden-xs"></div>

      </div>
      <div class="col-md-2 hidden-xs"></div>
      </div>
</cf:form>