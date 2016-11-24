
<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %>


<html>
<head>

<script type='text/javascript'>
    function myFunction() {
    	window.document.myForm.imgcaptcha.src='';window.document.myForm.imgcaptcha.src='./Captcha.jpg?random='+new Date().getTime();
        return false;
    }
</script>
 <style>
.error {
    color: red;
}
</style>


<script>
function my11(str) {
  var xhttp;
  if (str == "") {
    document.getElementById("resState").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("resCity").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "loadCity.fssaii?q="+str, true);
  xhttp.send();
}
</script>


<script language="javascript" type="text/javascript">
function myBusiness() {
    var x = document.getElementById("KindOfBusiness").value;
	if($('[id*=KindOfBusiness] option:selected').text()=='Others') {
    	document.getElementById("businessID1").style.display= 'none';
    	document.getElementById("businessID2").style.display= 'none';
    	document.getElementById("businessID3").style.display= 'none';
    }else{
    	document.getElementById("businessID1").style.display= 'block';
    	document.getElementById("businessID2").style.display= 'block';
    	document.getElementById("businessID3").style.display= 'block';
    }
	

}
function myCorrespondence() {
    residential1.style.display = checkCorrespondence.checked ? "none" : "block";
    residential2.style.display = checkCorrespondence.checked ? "none" : "block";
    var x = document.getElementById('checkCorrespondence').checked;
    var y = document.getElementById("correspondenceState").selectedIndex;
    var z = document.getElementById("correspondenceCity").selectedIndex;
    //alert(z + "    " + y);
    if(x == true){
    	document.getElementById('Email').value= document.getElementById('correspondenceEmail').value;
    	document.getElementById('ResidentialAddressLine1').value= document.getElementById('correspondenceAddress1').value;
    	document.getElementById('ResidentialAddressLine2').value= document.getElementById('correspondenceAddress2').value;
    	document.getElementById('Mobile').value= document.getElementById('correspondenceMobile').value;
    	document.getElementById('resPincode').value= document.getElementById('correspondencePincode').value;
    	document.getElementById('resState').selectedIndex= y; 
    	document.getElementById('resCity').selectedIndex= z;
    	
    }
    if(x == false){
    	document.getElementById('Email').value= "";
    	document.getElementById('ResidentialAddressLine1').value="";
    	document.getElementById('ResidentialAddressLine2').value= "";
    	document.getElementById('Mobile').value= "";
    	document.getElementById('resPincode').value= "";
    	document.getElementById('resState').value= "";
    	document.getElementById('resCity').value= "";
    }
}
    
    function myCompany() {
    	businessID3.style.display = checkCompany.checked ? "none" : "block";
    	businessID2.style.display = checkCompany.checked ? "none" : "block";
 }
 
    function checkname()
    {
     var name=document.getElementById( "userId" ).value;
    	
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
<head>
<body>

<cf:form action="registerTrainee.fssai" name="myForm" method="POST" commandName="registrationFormTrainee" onsubmit="return(validateFields());" >

 <div class="row">
      <div class="col-md-2 hidden-xs"></div>
      <div class="col-md-8  col-xs-12">
        <h3 class="text-capitalize heading-3-padding">Trainee Registration Form</h3>
        <!-- personel info Start -->
        <div class="personel-info">
          <fieldset >
            <legend>Personal Information</legend>
            <!-- left side -->
			<div class="col-md-6 col-xs-12">
				
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.UserId" /></strong></li>
<li class="style-li error-red"><span id="name_status"> </span><span id="err"> </span>
<cf:errors path="userId" cssClass="error" />${created }</li>
</ul>
</div>
<cf:input path="userId" onKeyUP="this.value = this.value.toUpperCase();" class="form-control"  onblur  ="checkname();" maxlength="20"  placeholder="User Id"/>
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
<li class="style-li error-red"><cf:errors path="dob" cssClass="error" /></li>
</ul>
</div>
<cf:input path="dob" class="form-control"  placeholder="DOB"/>
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Gender" /></strong></li>
<li class="style-li error-red"><cf:errors path="gender" cssClass="error" /></li>
</ul>
</div>
<label class="radio-inline">
<cf:radiobutton path="gender" value="M" checked="true" />Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <cf:radiobutton path="gender" value="F" />Female</td>
</label>
</div>
</div>



<!-- right side -->
<div class="col-md-6 col-xs-12">
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Title" /></strong></li>
<li class="style-li error-red"><cf:errors path="Title" cssClass="error" /></li>
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
<cf:input path="lastName" class="form-control"  placeholder="Last Name"/>
</div>
</div>
</fieldset>
</div>
<!-- personel info End-->
<div class="row" style="height:20px;"></div>


<!-- Contact details Start -->
<div class="personel-info">
<fieldset>
<legend>Correspondence Address </legend>

<!--Left side-->

<div class="col-md-6 col-xs-12" id = "correspondence1">

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceAddress1" /></strong></li>
<li class="style-li error-red"><cf:errors path="correspondenceAddress1" cssClass="error" /></li>  
</ul>
</div>
<cf:input path="correspondenceAddress1" class="form-control"  placeholder="Address "/>
</div> 
 
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceAddress2" /></strong></li>
<li class="style-li error-red"><cf:errors path="correspondenceAddress2" cssClass="error" /></li>       
</ul>
</div>
<cf:input path="correspondenceAddress2" class="form-control"  placeholder="Address 2"/>
</div> 

 <div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceState" /></strong></li>
<li class="style-li error-red"><cf:errors path="correspondenceState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="correspondenceState" class="form-control">
<cf:option value="0" label="Select State" />
<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName"/>
</cf:select>
</div>



</div>
<!--Left side--> 
<!--Right side-->
<div class="col-md-6 col-xs-12" id = "correspondence2">
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.District" /></strong></li>
<li class="style-li error-red"><cf:errors path="correspondenceDistrict" cssClass="error" /></li>
</ul>
</div>
<cf:select path="correspondenceDistrict" class="form-control">
<cf:option value="0" label="Select District" />
<%-- <cf:options items="${districtList}" itemValue="districtId" itemLabel="districtName" /> --%>
</cf:select>
</div>
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondenceCity" /></strong></li>
<li class="style-li error-red">
<cf:errors path="correspondenceCity" cssClass="error" />
</li>
</ul>
</div>                                
<cf:select path="correspondenceCity" class="form-control" onchange="return myBusiness()">
	<cf:option value="0" label="Select City" />
	<cf:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
	</cf:select>  		
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.correspondencePincode" /></strong></li>
<li class="style-li error-red"><cf:errors path="correspondencePincode" cssClass="error" /></li>        
</ul>
</div>
<cf:input path="correspondencePincode"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Pincode" class="form-control"  maxlength="6" />
</div>

<!--Right side-->
</div></fieldset>
</div>





<!-- Contact details End-->
<div class="row" style="height:20px;"></div>

<div class="personel-info">
<fieldset>
<legend>Permanent Address </legend>

<div class="col-md-12 col-sm-12 col-x-sm-12">
<input type="checkbox" id="checkCorrespondence" onclick="myCorrespondence(this)"> <label class = "error">Is your permanent address same as correspondence address.</label> 
</div>

<!--Left side-->
<div class="col-md-6 col-xs-12" id="residential1">

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.ResidentialAddressLine1" /></strong></li>
<li class="style-li error-red"><cf:errors path="ResidentialAddressLine1"  cssClass="error"/></li> 
</ul>
</div>
<cf:input path="ResidentialAddressLine1" placeholder="Residential Address Line 2" class="form-control" />
</div> 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.ResidentialAddressLine2" /></strong></li>
<li class="style-li error-red"><strong><cf:errors path="ResidentialAddressLine2"  cssClass="error"/></li>       
</ul>
</div>
<cf:input path="ResidentialAddressLine2" placeholder="Residential Address Line 2" class="form-control" />
</div>




 <div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.State" /></strong></li>
<li class="style-li error-red"><cf:errors path="resState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="resState" class="form-control state">
<cf:option value="0" label="Select State" />
<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName" />
</cf:select>
</div>
<table>
<tr>
<td id="response">
                <!--Response will be inserted here-->
            </td>
</tr>
</table>
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.District" /></strong></li>
<li class="style-li error-red"><cf:errors path="residentialDistrict" cssClass="error" /></li>
</ul>
</div>
<cf:select path="residentialDistrict" class="form-control" onchange="return my(this.value)">
<cf:option value="0" label="Select District" />
<cf:options items="${districtList}" itemValue="districtId" itemLabel="districtName" />
</cf:select> 
</div>


 

</div>
<!--Left side--> 
<!--Right side-->
<div class="col-md-6 col-xs-12" id="residential2">

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><strong><cs:message code="lbl.Trainee.City" /></strong></li>
<li class="style-li error-red">
<cf:errors path="resCity" cssClass="error" />
</li>
</ul>
</div>                                
<cf:select path="resCity" class="form-control">
<cf:option value="0" label="Select City" />
<cf:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
</cf:select> 		
</div>


<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Pincode" /></strong></li>
<li class="style-li error-red"><cf:errors path="resPincode" cssClass="error" /></li>        
</ul>
</div>
<input id="resPincode" name="resPincode" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Pincode" class="form-control" type="text" value="" maxlength="6">
</div>

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Email" /></strong></li>
<li class="style-li error-red"><cf:errors path="Email" cssClass="error" /></li>
</ul>
</div>
<cf:input path="Email" class="form-control"  placeholder="Email"/>
</div>


<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Mobile" /></strong></li>
<li class="style-li error-red"><cf:errors path="Mobile" cssClass="error" /></li>
</ul>
</div>
<cf:input path="Mobile" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Mobile Number" class="form-control" type="text" value="" maxlength="10"/>
</div>
 



<!--Right side-->
</div></fieldset>
</div>


<!-- Business address Start -->
<div class="personel-info ">
<fieldset>
<legend>Business Details</legend>

<div class="col-xs-12">
	<div class="form-group">
		<div>
		<ul class="lab-no">
		<li class="style-li"><strong><cs:message code="lbl.Trainee.KindOfBusiness" /></strong></li>
		<li class="style-li error-red"><cf:errors path="KindOfBusiness" cssClass="error" /></li>
		</ul>
		</div>
	<cf:select path="KindOfBusiness" class="form-control" onchange="return myBusiness()">
	<cf:option value="0" label="Select Business" />
	<cf:options items="${kindOfBusinessList}" itemValue="kindOfBusinessId" itemLabel="kindOfBusinessName" />
	</cf:select>
	</div>
</div>




<!--Left side-->

<div class="col-md-12 col-sm-12 col-x-sm-12" id="businessID1">
<input type="checkbox" id="checkCompany" onclick="myCompany(this)"> <label class = "error">Is your company address same as correspondence address.</label> 
</div>
<div class="col-md-6 col-xs-12" id="businessID2">
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.CompanyName" /></strong></li>
<li class="style-li error-red">
<cf:errors path="CompanyName" cssClass="error" /></li>
</ul>
</div>
<cf:input path="CompanyName" class="form-control"  placeholder="Company Name"/>
</div>


<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.BusinessAddressLine1" /></strong></li>
<li class="style-li error-red"><cf:errors path="BusinessAddressLine1" cssClass="error" /></li>
</ul>
</div>
<cf:input path="BusinessAddressLine1" class="form-control"  placeholder="Business Address Line 1"/>
</div>



<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.BusinessAddressLine2" /></strong></li>
<li class="style-li error-red">
<cf:errors path="BusinessAddressLine2" cssClass="error" /></li>
</ul>
</div>
<cf:input path="BusinessAddressLine2" class="form-control"  placeholder="Business Address Line 2"/>
</div>
 
 

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.State" /></strong></li>
<li class="style-li error-red">
<cf:errors path="bussState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="bussState" class="form-control">
<cf:option value="0" label="Select State" />
<cf:options items="${stateList}" itemValue="stateId" itemLabel="StateName" />
</cf:select>					
</div>
 



</div>
<!--Left side--> 
<!--Right side-->
<div class="col-md-6 col-xs-12" id="businessID3">

<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Designation" /></strong></li>
<li class="style-li error-red"><cf:errors path="Designation" cssClass="error" /></li>
</ul>
</div>
<cf:input path="Designation" class="form-control"  placeholder="Designation"/>
</div>



<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.District" /></strong></li>
<li class="style-li error-red">
<cf:errors path="bussDistrict" cssClass="error" /></li>
</ul>
</div>
<cf:select path="bussDistrict" class="form-control">
<cf:option value="0" label="Select District" />
<cf:options items="${districtList}" itemValue="districtId" itemLabel="districtName" />
</cf:select>					
</div>
 
<div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.City" /></strong></li>
<li class="style-li error-red">
<cf:errors path="correspondenceState" cssClass="error" /></li>
</ul>
</div>
<cf:select path="bussCity" class="form-control">
<cf:option value="0" label="Select City" />
<cf:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
</cf:select>					
</div>

 <div class="form-group">
<div>
<ul class="lab-no">
<li class="style-li"><strong><cs:message code="lbl.Trainee.Pincode" /></strong></li>
<li class="style-li error-red"><cf:errors path="bussPincode" cssClass="error" /></li>
</ul>
</div>
<cf:input path="bussPincode" class="form-control"  placeholder="Pincode" maxlength="6" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"/>
</div>
</div>
<!--Right side-->
</fieldset>
</div>


<!-- Business address Start -->
<div class="row" style="height:20px;"></div>
<div style="width:60%; margin-left:36px; float:left; height:100px; border:1px solid #cecece;"  class="form-group">
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

<div class="col-xs-12">
<div class="col-xs-4"></div>
<div class="col-xs-4" id="register">
<div class="form-group">
<input  type="submit" class="form-control login-btn"  value="Register" />
</div>
</div>
<div class="col-xs-4"></div>
</div>
</div>
</div>    
 </cf:form>      

<div class="col-md-2 hidden-xs"></div>      
