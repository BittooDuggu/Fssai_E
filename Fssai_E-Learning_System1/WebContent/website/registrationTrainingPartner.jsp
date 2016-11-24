<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript" language="javascript">
   
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
    	   document.getElementById("created").style.display = 'none';
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
    	      $('#TrainingPartnerPermanentDistrict option').remove();
    	      $('#TrainingPartnerPermanentDistrict').append('<option value="0" label="Select District" />');
    	      $('#TrainingPartnerPermanentCity option').remove();
    	      $('#TrainingPartnerPermanentCity').append('<option value="0" label="Select City" />');
    	  	 
    	      $.each(mainData1 , function(i , obj)
    	  		{
    	  		
    	  				$('#TrainingPartnerPermanentDistrict').append('<option value='+obj.districtId+' label='+obj.districtName+' />');		
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
    	      $('#TrainingPartnerPermanentCity option').remove();
    	      $('#TrainingPartnerPermanentCity').append('<option value="0" label="Select City" />');
    	  	  $.each(mainData1 , function(i , obj)
    	  		{
    	  		
    	  				$('#TrainingPartnerPermanentCity').append('<option value='+obj.cityId+' label='+obj.cityName+' />');		
    	  		});
    	      }
    	      });     
    }
    
    function validateFields() {
    	alert('jbjh');
    	if(document.getElementById('TrainingPartnerPermanentState').value == '0') {
    		alert('state   ' + document.getElementById('TrainingPartnerPermanentState').value);
    	document.getElementById("TrainingPartnerPermanentState").style.borderColor = "red";
    	document.getElementById("TrainingPartnerPermanentStateError").style.display = 'block';
    	document.getElementById("TrainingPartnerPermanentState").focus();
    	return false;
    	}else{
    	    document.getElementById('TrainingPartnerPermanentState').style.borderColor = "#ccc";
    	    document.getElementById("TrainingPartnerPermanentStateError").style.display = 'none';
    	    }
    	if(document.getElementById('TrainingPartnerPermanentDistrict').value == '0') {
    		alert('district');
        	document.getElementById("TrainingPartnerPermanentDistrict").style.borderColor = "red";
        	document.getElementById("TrainingPartnerPermanentDistrictError").style.display = 'block';
        	document.getElementById("TrainingPartnerPermanentDistrict").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingPartnerPermanentDistrict').style.borderColor = "#ccc";
        	    document.getElementById("TrainingPartnerPermanentDistrictError").style.display = 'none';
        	    }
    	
    	if(document.getElementById('TrainingPartnerPermanentCity').value == '0') {
    		alert('city');
        	document.getElementById("TrainingPartnerPermanentCity").style.borderColor = "red";
        	document.getElementById("TrainingPartnerPermanentCityError").style.display = 'block';
        	document.getElementById("TrainingPartnerPermanentCity").focus();
        	return false;
        	}else{
        	    document.getElementById('TrainingPartnerPermanentCity').style.borderColor = "#ccc";
        	    document.getElementById("TrainingPartnerPermanentCityError").style.display = 'none';
        	    }
    	
    	
    return( true );
    }
    
    function pan_validate(pan)
    {

    var regpan = /^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/;

    if(regpan.test(pan) == false)
    {

    document.getElementById("status").innerHTML = "Invalid PAN !!!";

    }
    else
    {

    document.getElementById("status").innerHTML = ""; 

    }
    }
</script>

<cf:form action="registrationTrainingPartner.fssai" name="myForm" method="POST" commandName="registrationFormTrainingPartner" onsubmit="return validateFields();"> 

    <!-- login form -->
    <div class="row">
      <div class="col-md-2 hidden-xs"></div>
      <div class="col-md-8  col-xs-12">
        <h3 class="text-capitalize heading-3-padding">Training Center Registration Form</h3>

          <!-- personal information -->
          <div class="personel-info">
            <fieldset>
              <legend>Personal Information</legend>
              <!-- left side -->
              <div class="col-md-6 col-xs-12">
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong><cs:message code="lbl.Trainee.UserId" /></strong></li>
                      <li class="style-li error-red"><span id="name_status"> </span><cf:errors path="UserId" cssClass="error" />
                      <label id="created">${created}</label>
                      
                      </li>
                    </ul>
                  </div>
                  <cf:input path="UserId" class="form-control" placeholder="User ID"  onblur  ="checkname();"/>
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Training Partner Name:</strong></li>
                      <li class="style-li error-red"><cf:errors path="TrainingPartnerName" cssClass="error" /> </li>
                    </ul>
                  </div>
                    <cf:select path="TrainingPartnerName" class="form-control">
					<cf:options items="${trainingPartnerNameList}" itemValue="manageTrainingPartnerId" itemLabel="trainingPartnerName" />
					</cf:select>
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>PAN:</strong></li>
                      <li class="style-li error-red"><span id="status"></span> <cf:errors path="PAN" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="PAN" class="form-control"  placeholder="PAN" onKeyUP="this.value = this.value.toUpperCase();" onblur="pan_validate(this.value);" />
                </div>
              </div>              
              <!-- right side -->
              <div class="col-md-6 col-xs-12">
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Title:</strong></li>
                      <li class="style-li error-red"></li>
                    </ul>
                  </div>
                   <cf:select path="Title" class="form-control">
					<cf:options items="${titleList}" itemValue="titleId" itemLabel="titleName" />
					</cf:select>
                </div>
                
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>First Name:(Training Center Head) </strong></li>
                      <li class="style-li error-red"><cf:errors path="FirstName" cssClass="error" /></li>
                    </ul>
                  </div>
                   <cf:input path="FirstName" class="form-control"  placeholder="First Name"/>
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Middle Name:(Training Center Head)</strong></li>
                      <li class="style-li error-red"><cf:errors path="MiddleName" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="MiddleName" class="form-control"  placeholder="Middle Name"/>
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Last Name:(Training Center Head)</strong></li>
                      <li class="style-li error-red"><cf:errors path="LastName" cssClass="error" /></li>
                    </ul>
                  </div>
                 <cf:input path="LastName" class="form-control"  placeholder="Last Name"/>
                </div>
              </div>
              <!-- personal information ends -->
            </fieldset>
          </div>
          <!-- personal information ends -->
          <div class="row" style="height: 20px;"></div>
          <!-- contact details -->
          <div class="personel-info">
            <fieldset>
              <legend>Contact Details</legend>
              <!-- left side -->
              <div class="col-md-6 col-xs-12">
                
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Training Center Address Line 1:</strong></li>
                      <li class="style-li error-red"><cf:errors path="TrainingPartnerPermanentLine1" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="TrainingPartnerPermanentLine1" class="form-control"  placeholder="Training Partner Address 1"/>
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Training Center Address Line 2:</strong></li>
                      <li class="style-li error-red"><cf:errors path="TrainingPartnerPermanentLine2" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="TrainingPartnerPermanentLine2" class="form-control"  placeholder="Training Partner Address 2"/>
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>State:</strong></li>
                      <li class="style-li error-red"><label class="error visibility" id="TrainingPartnerPermanentStateError">* error</label></li>
                    </ul>
                  </div>
                  <cf:select path="TrainingPartnerPermanentState" class="form-control" onchange="getDistrict(this.value);">
					<cf:option value="0" label="Select State" />
					<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName" />
					</cf:select>
                </div>
                 <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>District:</strong></li>
                      <li class="style-li error-red"><label class="error visibility" id="TrainingPartnerPermanentDistrictError">* error</label></li>
                    </ul>
                  </div>
                 <cf:select path="TrainingPartnerPermanentDistrict" class="form-control" onchange="getCity(this.value);">
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
                      <li class="style-li"><strong>Closest City:</strong></li>
                      <li class="style-li error-red"><label class="error visibility" id="TrainingPartnerPermanentCityError">* error</label></li>
                    </ul>
                  </div>
                  <cf:select path="TrainingPartnerPermanentCity" class="form-control">
                  <cf:option value="0" label="Select City" />
					</cf:select>
                </div>
                
              
              
               
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>PIN Code:</strong></li>
                      <li class="style-li error-red"><cf:errors path="TrainingPartnerPermanentPincode" cssClass="error" /></li>
                    </ul>
                  </div>
                   <cf:input path="TrainingPartnerPermanentPincode" class="form-control"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" maxlength="6" placeholder="Pincode"/>
                </div>
                
                 <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Email:</strong></li>
                      <li class="style-li error-red"><cf:errors path="TrainingPartnerPermanentEmail" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="TrainingPartnerPermanentEmail" class="form-control"  placeholder="Email"/>
                </div>
                 <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Mobile:</strong></li>
                      <li class="style-li error-red"><cf:errors path="TrainingPartnerPermanentMobile" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="TrainingPartnerPermanentMobile" class="form-control"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" maxlength="10"  placeholder="Mobile"/>
                </div>
              <!-- right side ends -->
            </fieldset>
          </div>
          <!-- contact details ends -->          
          <div class="row" style="height: 20px;"></div>          
          <!-- Training center Details  -->          
          <div class="personel-info">
            <fieldset>
              <legend>Training Center Details</legend>              
              <!-- left side -->
              <div class="col-md-6 col-xs-12">
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Seating capacity Per session?</strong></li>
                      <li class="style-li error-red"> <cf:errors path="SeatCapacityPerSession" cssClass="error" /></li>
                    </ul>
                  </div>
                 <cf:input path="SeatCapacityPerSession"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" maxlength="2" class="form-control"  placeholder="No of seats"/>
                </div>
                <div class="form-group">
                  <label>Availability of TV/ Projector in training center ?</label>
                  <br>
                  <label class="radio-inline">
<cf:radiobutton path="AvailabiltyOfTVProjector" value="Y" checked="true" />Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <cf:radiobutton path="AvailabiltyOfTVProjector" value="N" />No
</label>
                </div>
                <div class="form-group">
                  <label>Availability of in-house trainers in food safety ?</label>
                  <br>
<label class="radio-inline">
<cf:radiobutton path="AvailabiltyOfInHouseTrainersInFoodSafety" value="Y" checked="true" />Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <cf:radiobutton path="AvailabiltyOfInHouseTrainersInFoodSafety" value="N" />No
</label>
                </div>
              </div>
              <!-- left side ends --> 
              <!-- right side -->
              <div class="col-md-6 col-xs-12">
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Number of in-house trainers ?</strong></li>
                      <li class="style-li error-red"> <cf:errors path="NoOfInHouseTrainers" cssClass="error" /></li>
                    </ul>
                  </div>
                   <cf:input path="NoOfInHouseTrainers"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" maxlength="2" class="form-control"  placeholder="No Of In House Trainers" />
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>Numbe of years in Business of training ?</strong></li>
                      <li class="style-li error-red"><cf:errors path="NoOfYearsInBusinessOfTraining" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="NoOfYearsInBusinessOfTraining"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" maxlength="2" class="form-control"  placeholder="Years In Business Of Training" />
                </div>
                <div class="form-group">
                  <div>
                    <ul class="lab-no">
                      <li class="style-li"><strong>How many training (4hrs) sessions wish to conduct in a month ?</strong></li>
                      <li class="style-li error-red"><cf:errors path="NoOfTrainingSessionWishToConductInAMonth" cssClass="error" /></li>
                    </ul>
                  </div>
                  <cf:input path="NoOfTrainingSessionWishToConductInAMonth"  onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" maxlength="2" class="form-control"  placeholder="Training Session Wish To Conduct In A Month" />
                </div>
              </div>
              <!-- right side ends -->
            </fieldset>
          </div>
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

 				<cf:input path="BasicCourse1" value="" type="hidden"/>
				</div>
              </div>
              <!-- right -->
              <div class="col-md-6 col-xs-12">
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
 				<cf:input path="AdvanceCourse1" value=""  type="hidden"/>
				</div>
              </div>
              <!-- right -->
              <div class="col-md-6 col-xs-12">
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
				<cf:input path="SpecialCourse1" value=""  type="hidden"/>
				</div>
              </div>              
              <!-- right -->
              <div class="col-md-6 col-xs-12"> </div>
            </fieldset>
          </div>
          <!-- special course -->           
          <!-- captcha -->
          
          
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
<a href="#" class="terms-font-size"> I have read and understood the Terms & Conditions and the Privacy Policy of FSSAI. </a>
</div>
</div>

     
          <!-- buttons -->
          <div class="col-md-4 hidden-xs"></div>
          <div class="col-md-4 col-xs-12" id="register"> 
            <input type="submit" class="form-control login-btn" value="Register">
           </div>
          <div class="col-md-4 hidden-xs"></div>          
          <!-- training center details ends -->
        </form>
      </div>
      <div class="col-md-2 hidden-xs"></div>
    </div>
  </div>
</section>
</cf:form>