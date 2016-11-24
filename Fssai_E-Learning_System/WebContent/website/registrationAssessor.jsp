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
    	//permanent1.style.display = checkPermanent.checked ? "none" : "block";
    	//permanent2.style.display = checkPermanent.checked ? "none" : "block";
    	 if(x == true){
    	    	document.getElementById('AssessorPermanentLine1').value= document.getElementById('AssessorCorrespondenceLine1').value;
    	    	document.getElementById('AssessorPermanentLine2').value= document.getElementById('AssessorCorrespondenceLine2').value;
    	    	document.getElementById('AssessorPermanentPincode').value= document.getElementById('AssessorCorrespondencePincode').value;    	
    	    	document.getElementById('').value= document.getElementById('').value;
    	    	document.getElementById('').value= document.getElementById('').value;
    	    	document.getElementById('').value= document.getElementById('').value;
    	    	    	    }
    	    if(x == false){
    	    	document.getElementById('AssessorPermanentLine1').value= "";
    	    	document.getElementById('AssessorPermanentLine2').value= "";
    	    	document.getElementById('AssessorPermanentPincode').value= "";
    	    	document.getElementById('').value= document.getElementById('').value="";
    	    	document.getElementById('').value= document.getElementById('').value="";
    	    	document.getElementById('').value= document.getElementById('').value="";   	    	
    	    }
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
    
    function getDistrict(val)
    {
    	$.ajax({
    	      type: 'post',
    	      url: 'loadDistrict.jspp?'+ val,
    	      success: function (response) {      
    	      var mainData1 = jQuery.parseJSON(response);
    	      $('#AssessorCorrespondenceDistrict option').remove();
    	      $('#AssessorCorrespondenceDistrict').append('<option value="0" label="Select District" />');
    	      $('#AssessorCorrespondenceCity option').remove();
    	      $('#AssessorCorrespondenceCity').append('<option value="0" label="Select City" />');
    	  	 
    	      $.each(mainData1 , function(i , obj)
    	  		{
    	  		
    	  				$('#AssessorCorrespondenceDistrict').append('<option value='+obj.districtId+' label='+obj.districtName+' />');		
    	  		});
    	      }
    	      });     
    }
    
    function getCity(val)
    {
    	$.ajax({
    	      type: 'post',
    	      url: 'loadCity.jspp?'+ val,
    	      success: function (response) {      
    	      var mainData1 = jQuery.parseJSON(response);
    	      $('#AssessorCorrespondenceCity option').remove();
    	      $('#AssessorCorrespondenceCity').append('<option value="0" label="Select City" />');
    	  	  $.each(mainData1 , function(i , obj)
    	  		{
    	  		
    	  				$('#AssessorCorrespondenceCity').append('<option value='+obj.cityId+' label='+obj.cityName+' />');		
    	  		});
    	      }
    	      });     
    }
    
    
    
    function getDistrict1(val)
    {
    	$.ajax({
    	      type: 'post',
    	      url: 'loadDistrict.jspp?'+ val,
    	      success: function (response) {      
    	      var mainData1 = jQuery.parseJSON(response);
    	      $('#AssessorPermanentDistrict option').remove();
    	      $('#AssessorPermanentDistrict').append('<option value="0" label="Select District" />');
    	      $('#AssessorPermanentCity option').remove();
    	      $('#AssessorPermanentCity').append('<option value="0" label="Select City" />');
    	  	 
    	      $.each(mainData1 , function(i , obj)
    	  		{
    	  		
    	  				$('#AssessorPermanentDistrict').append('<option value='+obj.districtId+' label='+obj.districtName+' />');		
    	  		});
    	      }
    	      });     
    }
    
    function getCity1(val)
    {
    	$.ajax({
    	      type: 'post',
    	      url: 'loadCity.jspp?'+ val,
    	      success: function (response) {      
    	      var mainData1 = jQuery.parseJSON(response);
    	      $('#AssessorPermanentCity option').remove();
    	      $('#AssessorPermanentCity').append('<option value="0" label="Select City" />');
    	  	  $.each(mainData1 , function(i , obj)
    	  		{
    	  		
    	  				$('#AssessorPermanentCity').append('<option value='+obj.cityId+' label='+obj.cityName+' />');		
    	  		});
    	      }
    	      });     
    }
</script>
<script type='text/javascript'>
function validate()
{
	 alert("The form was submitted");
	if(document.getElementById('AadharNumber').value==null)
		{
		document.getElementById('AadharNumber').focus();
		document.getElementById('AadharNumber').style.color="red";
		document.getElementById('errorAadharNumber').style.display='block';
		return false;
	}else{
		document.getElementById('AadharNumber').style.color="#ccc";
		document.getElementById('errorAadharNumber').style.display='none';
		}
	
	if(document.getElementById('UserId').value==null)
	{
	document.getElementById('UserId').focus();
	document.getElementById('UserId').style.borderColor="red";
	document.getElementById('errorUserId').style.display='block';
	return false;
   }else{
	document.getElementById('UserId').style.borderColor="#ccc";
	document.getElementById('errorUserId').style.display='none';
	}
	
	if(document.getElementById('Title').value==null)
	{
	document.getElementById('Title').focus();
	document.getElementById('Title').style.borderColor="red";
	document.getElementById('errorTitle').style.display='block';
	return false;
   }else{
	document.getElementById('Title').style.borderColor="#ccc";
	document.getElementById('errorTitle').style.display='none';
	}
	
	if(document.getElementById('DOB').value==null)
	{
	document.getElementById('DOB').focus();
	document.getElementById('DOB').style.borderColor="red";
	document.getElementById('errorDOB').style.display='block';
	return false;
   }else{
	document.getElementById('DOB').style.borderColor="#ccc";
	document.getElementById('errorDOB').style.display='none';
	}
	
	if(document.getElementById('gender').value==null)
	{
	document.getElementById('gender').focus();
	document.getElementById('gender').style.borderColor="red";
	document.getElementById('errorgender').style.display='block';
	return false;
   }else{
	document.getElementById('gender').style.borderColor="#ccc";
	document.getElementById('errorgender').style.display='none';
	}
	
	
	if(document.getElementById('FirstName').value==null)
	{
	document.getElementById('FirstName').focus();
	document.getElementById('FirstName').style.borderColor="red";
	document.getElementById('errorFirstName').style.display='block';
	return false;
   }else{
	document.getElementById('FirstName').style.borderColor="#ccc";
	document.getElementById('errorFirstName').style.display='none';
	}
	
	if(document.getElementById('MiddleName').value==null)
	{
	document.getElementById('MiddleName').focus();
	document.getElementById('MiddleName').style.borderColor="red";
	document.getElementById('errorMiddleName').style.display='block';
	return false;
   }else{
	document.getElementById('MiddleName').style.borderColor="#ccc";
	document.getElementById('errorMiddleName').style.display='none';
	}
	
	if(document.getElementById('LastName').value==null)
	{
	document.getElementById('LastName').focus();
	document.getElementById('LastName').style.borderColor="red";
	document.getElementById('errorLastName').style.display='block';
	return false;
   }else{
	document.getElementById('LastName').style.borderColor="#ccc";
	document.getElementById('errorLastName').style.display='none';
	}
	
	if(document.getElementById('AssessmentAgencyName').value==null)
	{
	document.getElementById('AssessmentAgencyName').focus();
	document.getElementById('AssessmentAgencyName').style.borderColor="red";
	document.getElementById('AssessmentAgencyNameError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessmentAgencyName').style.borderColor="#ccc";
	document.getElementById('AssessmentAgencyNameError').style.display='none';
	}
	
	if(document.getElementById('AssessorCorrespondenceLine1').value==null)
	{
	document.getElementById('AssessorCorrespondenceLine1').focus();
	document.getElementById('AssessorCorrespondenceLine1').style.borderColor="red";
	document.getElementById('errorAssessorCorrespondenceLine1').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorCorrespondenceLine1').style.borderColor="#ccc";
	document.getElementById('errorAssessorCorrespondenceLine1').style.display='none';
	}
	
	if(document.getElementById('AssessorCorrespondenceLine2').value==null)
	{
	document.getElementById('AssessorCorrespondenceLine2').focus();
	document.getElementById('AssessorCorrespondenceLine2').style.borderColor="red";
	document.getElementById('errorAssessorCorrespondenceLine2').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorCorrespondenceLine2').style.borderColor="#ccc";
	document.getElementById('errorAssessorCorrespondenceLine2').style.display='none';
	}
	
	if(document.getElementById('AssessorCorrespondenceState').value==null)
	{
	document.getElementById('AssessorCorrespondenceState').focus();
	document.getElementById('AssessorCorrespondenceState').style.borderColor="red";
	document.getElementById('AssessorCorrespondenceStateError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorCorrespondenceState').style.borderColor="#ccc";
	document.getElementById('AssessorCorrespondenceStateError').style.display='none';
	}
	
	if(document.getElementById('AssessorCorrespondenceDistrict').value==null)
	{
	document.getElementById('AssessorCorrespondenceDistrict').focus();
	document.getElementById('AssessorCorrespondenceDistrict').style.borderColor="red";
	document.getElementById('AssessorCorrespondenceDistrictError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorCorrespondenceDistrict').style.borderColor="#ccc";
	document.getElementById('AssessorCorrespondenceDistrictError').style.display='none';
	}
	
	if(document.getElementById('AssessorCorrespondenceCity').value==null)
	{
	document.getElementById('AssessorCorrespondenceCity').focus();
	document.getElementById('AssessorCorrespondenceCity').style.borderColor="red";
	document.getElementById('AssessorCorrespondenceCityError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorCorrespondenceCity').style.borderColor="#ccc";
	document.getElementById('AssessorCorrespondenceCityError').style.display='none';
	}
	
	if(document.getElementById('AssessorCorrespondencePincode').value==null)
	{
	document.getElementById('AssessorCorrespondencePincode').focus();
	document.getElementById('AssessorCorrespondencePincode').style.borderColor="red";
	document.getElementById('errorAssessorCorrespondencePincode').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorCorrespondencePincode').style.borderColor="#ccc";
	document.getElementById('errorAssessorCorrespondencePincode').style.display='none';
	}
	
	if(document.getElementById('AssessorPermanentEmail').value==null)
	{
	document.getElementById('AssessorPermanentEmail').focus();
	document.getElementById('AssessorPermanentEmail').style.borderColor="red";
	document.getElementById('errorAssessorPermanentEmail').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorPermanentEmail').style.borderColor="#ccc";
	document.getElementById('errorAssessorPermanentEmail').style.display='none';
	}
	
	if(document.getElementById('AssessorPermanentMobile').value==null)
	{
	document.getElementById('AssessorPermanentMobile').focus();
	document.getElementById('AssessorPermanentMobile').style.borderColor="red";
	document.getElementById('errorAssessorPermanentMobile').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorPermanentMobile').style.borderColor="#ccc";
	document.getElementById('errorAssessorPermanentMobile').style.display='none';
	}
	
	if(document.getElementById('AssessorPermanentLine1').value==null)
	{
	document.getElementById('AssessorPermanentLine1').focus();
	document.getElementById('AssessorPermanentLine1').style.borderColor="red";
	document.getElementById('errorAssessorPermanentLine1').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorPermanentLine1').style.borderColor="#ccc";
	document.getElementById('errorAssessorPermanentLine1').style.display='none';
	}
	
	if(document.getElementById('AssessorPermanentLine2').value==null)
	{
	document.getElementById('AssessorPermanentLine2').focus();
	document.getElementById('AssessorPermanentLine2').style.borderColor="red";
	document.getElementById('errorAssessorPermanentLine2').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorPermanentLine2').style.borderColor="#ccc";
	document.getElementById('errorAssessorPermanentLine2').style.display='none';
	}
	
	if(document.getElementById('AssessorrPermanentState').value==null)
	{
	document.getElementById('AssessorrPermanentState').focus();
	document.getElementById('AssessorrPermanentState').style.borderColor="red";
	document.getElementById('AssessorrPermanentStateError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorrPermanentState').style.borderColor="#ccc";
	document.getElementById('AssessorrPermanentStateError').style.display='none';
	}
	
	if(document.getElementById('AssessorPermanentDistrict').value==null)
	{
	document.getElementById('AssessorPermanentDistrict').focus();
	document.getElementById('AssessorPermanentDistrict').style.borderColor="red";
	document.getElementById('AssessorPermanentDistrictError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorPermanentDistrict').style.borderColor="#ccc";
	document.getElementById('AssessorPermanentDistrictError').style.display='none';
	}
	
	if(document.getElementById('AssessorPermanentCity').value==null)
	{
	document.getElementById('AssessorPermanentCity').focus();
	document.getElementById('AssessorPermanentCity').style.borderColor="red";
	document.getElementById('AssessorPermanentCityError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorPermanentCity').style.borderColor="#ccc";
	document.getElementById('AssessorPermanentCityError').style.display='none';
	}
	
	if(document.getElementById('AssessorPermanentPincode').value==null)
	{
	document.getElementById('AssessorPermanentPincode').focus();
	document.getElementById('AssessorPermanentPincode').style.borderColor="red";
	document.getElementById('AssessorPermanentPincodeError').style.display='block';
	return false;
   }else{
	document.getElementById('AssessorPermanentPincode').style.borderColor="#ccc";
	document.getElementById('AssessorPermanentPincodeError').style.display='none';
	}
	
	if(document.getElementById('ReleventExpOfAuditInMonth').value==null)
	{
	document.getElementById('ReleventExpOfAuditInMonth').focus();
	document.getElementById('ReleventExpOfAuditInMonth').style.borderColor="red";
	document.getElementById('ReleventExpOfAuditInMonthError').style.display='block';
	return false;
   }else{
	document.getElementById('ReleventExpOfAuditInMonth').style.borderColor="#ccc";
	document.getElementById('ReleventExpOfAuditInMonthError').style.display='none';
	}
	
	

	
	}
</script>

<cf:form action="registrationAsssessor.fssai"  name="myForm" method="POST" commandName="registrationFormAssessor" > 

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
<li class="style-li"><strong><cs:message code="lbl.Trainee.AadharNumber" /></strong></li>
<li class="style-li error-red">
<label id="errorAadharNumber" class="error visibility">* error</label>
<cf:errors path="AadharNumber" cssClass="error" /></li>
</ul>
</div>
<cf:input path="AadharNumber" class="form-control" maxlength="12"  placeholder="Aadhar Number" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.UserId" /></strong></li>
<li class="style-li error-red"><!-- <a href="userIdCheck.fssai" onclick="return loadonxml();">check availability</a> -->
<span id="name_status"> </span>
<label id="errorUserId" class="error visibility">* error</label>
<cf:errors path="UserId" cssClass="error" /></li>
</ul>
</div>
<cf:input path="UserId" class="form-control"  placeholder="User Id"  onblur  ="checkname();"/>
</div>
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Title" /></strong></li>
<li class="style-li error-red"><label Class="error visibility" id="TitleError">Please select title</label>
<label id="errorTitle" class="error visibility">* error</label>
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
<li class="style-li"><strong><cs:message code="lbl.Trainee.DOB" /></strong></li>
<li class="style-li error-red">
<label id="errorDOB" class="error visibility">* error</label>
<cf:errors path="DOB" cssClass="error" /></li>
</ul>
</div>
<cf:input path="DOB" class="form-control"  placeholder="DOB"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Gender" /></strong></li>
<li class="style-li error-red">
<label id="errorgender" class="error visibility">* error</label>
<cf:errors path="gender" cssClass="error" /></li>
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

<div class="form-group" style = "height:120px;">
<div>
<div class = "profilePic" style = "width:30%; margin-top:25px; height:120px; border:1px solid gray;">

</div>
</div>

</div>





<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.FirstName" /></strong></li>
<li class="style-li error-red">
<label id="errorFirstName" class="error visibility">* error</label>
<cf:errors path="FirstName" cssClass="error" /></li>
</ul>
</div>
<cf:input path="FirstName" class="form-control"  placeholder="First Name"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.MiddleName" /></strong></li>
<li class="style-li error-red">
<label id="errorMiddleName" class="error visibility">* error</label>
<cf:errors path="MiddleName" cssClass="error" /></li>
</ul>
</div>
<cf:input path="MiddleName" class="form-control" name="MiddleName"  placeholder="Middle Name"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.LastName" /></strong></li>
<li class="style-li error-red">
<label id="errorLastName" class="error visibility">* error</label>
<cf:errors path="LastName" cssClass="error" /></li>
</ul>
</div>
<cf:input path="LastName" class="form-control"  placeholder="Last Name"/>
</div>


<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Assessor.AssesmentAgencyName" /></strong></li>
<li class="style-li error-red"><label Class="error visibility" id="AssessmentAgencyNameError">  * error</label>
<cf:errors path="AssessmentAgencyName" cssClass="error" /></li>
</ul>
</div>
<cf:select path="AssessmentAgencyName" class="form-control">
<cf:option value="0" label="Select Assessment Agency" />
<cf:options items="${assessmentAgencyNameList}" itemValue="manageAssessmentAgencyId" itemLabel="assessmentAgencyName" />
</cf:select>
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
<li class="style-li error-red">
<label id="errorAssessorCorrespondenceLine1" class="error visibility">* error</label>
<cf:errors path="AssessorCorrespondenceLine1" cssClass="error" /></li>  
</ul>
</div>
<cf:input path="AssessorCorrespondenceLine1" class="form-control"  placeholder="Address Line 1"/>
</div> 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.TrainingCenterCrrespondenceLine2" /></strong></li>
<li class="style-li error-red">
<label id="errorAssessorCorrespondenceLine2" class="error visibility">* error</label>
<cf:errors path="AssessorCorrespondenceLine2" cssClass="error" /></li>  
</ul>
</div>
<cf:input path="AssessorCorrespondenceLine2" class="form-control"  placeholder="Address Line 1"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceState" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="AssessorCorrespondenceStateError">  * error</label>
<cf:errors path="AssessorCorrespondenceState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="AssessorCorrespondenceState" class="form-control" onchange="getDistrict(this.value);">
<cf:option value="0" label="Select State" />
<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName" />
</cf:select>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.District" /></strong></li>
<li class="style-li error-red"><label Class="error visibility" id="AssessorCorrespondenceDistrictError">  * error</label>
<cf:errors path="AssessorCorrespondenceDistrict" cssClass="error" /></li>
</ul>
</div>
<cf:select path="AssessorCorrespondenceDistrict" class="form-control" onchange="getCity(this.value);">
<cf:option value="0" label="Select District" />
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
<li class="style-li error-red"><label Class="error visibility" id="AssessorCorrespondenceCityError">  * error</label>
<cf:errors path="AssessorCorrespondenceCity" cssClass="error" /></li>
</ul>
</div>
<cf:select path="AssessorCorrespondenceCity" class="form-control">
<cf:option value="0" label="Select City" />
<cf:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
</cf:select>
</div>
              
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondencePincode" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="errorAssessorCorrespondencePincode">  * error</label>
<cf:errors path="AssessorCorrespondencePincode" cssClass="error" /></li>        
</ul>
</div>
<cf:input path="AssessorCorrespondencePincode"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Pincode" class="form-control"  maxlength="6" />
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceEmail" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="errorAssessorPermanentEmail">  * error</label>
<cf:errors path="AssessorPermanentEmail" cssClass="error" /></li>
</ul>
</div>
<cf:input path="AssessorPermanentEmail" placeholder="Email Id" class="form-control" />
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceMobile" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="errorAssessorPermanentMobile">  * error</label>
<cf:errors path="AssessorPermanentMobile" cssClass="error" /></li>
</ul>
</div>
<cf:input path="AssessorPermanentMobile" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Mobile Number" class="form-control"  maxlength="10" />  
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
<li class="style-li error-red">
<label Class="error visibility" id="errorAssessorPermanentLine1">  * error</label>
<cf:errors path="AssessorPermanentLine1"  cssClass="error"/></li> 
</ul>
</div>
<cf:input path="AssessorPermanentLine1" placeholder="Address Line 1" class="form-control" />
</div> 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainer.TrainingCenterPermanentLine2" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="errorAssessorPermanentLine2">  * error</label>
<cf:errors path="AssessorPermanentLine2"  cssClass="error"/></li> 
</ul>
</div>
<cf:input path="AssessorPermanentLine2" placeholder="Address Line 2" class="form-control" />
</div> 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.State" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="AssessorrPermanentStateError">Please select state</label>
<cf:errors path="AssessorrPermanentState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="AssessorrPermanentState" class="form-control" onchange="getDistrict1(this.value);">
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
<label Class="error visibility" id="AssessorPermanentDistrictError">Please select district</label>
<cf:errors path="AssessorPermanentDistrict" cssClass="error" /></li>
</ul>
</div>
<cf:select path="AssessorPermanentDistrict" class="form-control" onchange="getCity1(this.value);">
<cf:option value="0" label="Select District" />
<cf:options items="${districtList}" itemValue="districtId" itemLabel="districtName" />
</cf:select>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.City" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="AssessorPermanentCityError">Please select city</label>
<cf:errors path="AssessorPermanentCity" cssClass="error" /></li>
</ul>
</div>
<cf:select path="AssessorPermanentCity" class="form-control">
<cf:option value="0" label="Select City" />
<cf:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
</cf:select>
</div>
              
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Pincode" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="AssessorPermanentPincodeError">Please select city</label>
<cf:errors path="AssessorPermanentPincode" cssClass="error" /></li>        
</ul>
</div>
<cf:input path="AssessorPermanentPincode"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Pincode" class="form-control" maxlength="6" />
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
<li class="style-li"><strong><cs:message code="lbl.Assessor.RelevantExperienceOfAudit" /></strong></li>
<li class="style-li error-red">
<label Class="error visibility" id="ReleventExpOfAuditInMonthError">* error</label>
</li>
</ul>
</div>
<div class="row">
<div class="col-xs-6">
<cf:input cssClass="form-control" place-holder="Years" path="ReleventExpOfAuditInYear" maxlength="2" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>
<div class="col-xs-6">
<cf:select path="ReleventExpOfAuditInMonth" class="form-control">
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

</div>
<!-- left side ends --> 
              
<!-- right side -->
<div class="col-md-6 col-xs-12">
<div class="form-group">
<label>How Many assessment can you conduct in a Month ?</label>
<cf:input path="HowManyAssessmentConductInAMonth" class="form-control" placeholder="Session Number" maxlength="2" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>


</div>
<!-- right side ends -->              
</fieldset>
</div>
<div class="row" style="height: 20px;"> </div>
<!-- Basic courses -->
<div class="personel-info">
<h4>Courses wish to conduct assessment on it ?</h4>
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
                <input type="submit" class="form-control login-btn" value="Register" onclick="validate();">
               </div>
            </div>
          </div>
          <div class="col-md-4 hidden-xs"></div>

      </div>
      <div class="col-md-2 hidden-xs"></div>
      </div>
</cf:form>