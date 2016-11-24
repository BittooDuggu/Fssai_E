<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.error {
    color: red;
}
</style>
<script language="javascript" type="text/javascript">
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
   
   if(response == 'OK')	
   {
	   document.getElementById("register1").style.display = 'none';
    return false;	
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
	alert("hiiiiiiiii"+val);
	$.ajax({
	      type: 'post',
	      url: 'loadDistrict.jspp?'+ val,
	      success: function (response) {
	      alert(response);	      
	      var mainData1 = jQuery.parseJSON(response);
	      $('#district option').remove();
	      $('#district').append('<option value="0" label="Select State" />');
	      $('#city option').remove();
	      $('#city').append('<option value="0" label="Select City" />');
	  	  $.each(mainData1 , function(i , obj)
	  		{
	  		
	  				$('#district').append('<option value='+obj.districtId+' label='+obj.districtName+' />');		
	  		});
	      }
	      });     
}

function getCity(val)
{
	alert("hiiiiiiiii"+val);
	$.ajax({
	      type: 'post',
	      url: 'loadCity.jspp?'+ val,
	      success: function (response) {
	      alert(response);	      
	      var mainData1 = jQuery.parseJSON(response);
	      $('#city option').remove();
	      $('#city').append('<option value="0" label="Select City" />');
	  	  $.each(mainData1 , function(i , obj)
	  		{
	  		
	  				$('#city').append('<option value='+obj.cityId+' label='+obj.cityName+' />');		
	  		});
	      }
	      });     
}
</script> 
<script type="text/javascript" language="javascript">
    function fnValidatePAN(Obj) {
        if (Obj == null) Obj = window.event.srcElement;
        if (Obj.value != "") {
            ObjVal = Obj.value;
            var panPat = /^([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})$/;
            var code = /([C,P,H,F,A,T,B,L,J,G])/;
            var code_chk = ObjVal.substring(3,4);
            if (ObjVal.search(panPat) == -1) {
                alert("Invalid Pan No");
                Obj.focus();
                return false;
            }
            if (code.test(code_chk) == false) {
                alert("Invaild PAN Card No.");
                return false;
            }
        }
   }
</script>
<cf:form action="manageTrainingPartnerSave.fssai" name="myForm" method="POST" commandName="manageTrainingPartnerForm" onsubmit="return validateFields();"> 

    <section>
        <div class="container-fluid">
            <nav class="navbar navbar-default navbar-fixed-top horizontal-nav-top horizontal-top-nav-border">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                            </div>
                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li></li>
                                    <li class="hori"><a href="adminHomepage.fssai">Home</a></li>
                                    <li> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Management<span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="traineeUserManagementForm.fssai" class="clr">Trainee</a></li>
                                            <li><a href="trainerUserManagementForm.fssai" class="clr">Trainer</a></li>
                                            <li><a href="trainingCenterUserManagementForm.fssai" class="clr">Training Center</a></li>
                                            <li><a href="assessorUserManagementForm.fssai" class="clr">Assessor</a></li>
                                            <li><a href="adminUserManagementForm.fssai" class="clr">Admin</a></li>
                                        </ul>
                                    </li>
                                    <li> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Data<span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="stateMaster.fssai" class="clr">State</a></li>
                                            <li><a href="districtMaster.fssai" class="clr">District</a></li>
                                            <li><a href="cityMaster.fssai" class="clr">City</a></li>
                                            <li><a href="regionMappingMaster.fssai" class="clr">Region Mapping</a></li>
                                        </ul>
                                    </li>
                                    <li class="active"><a href="manageTrainingPartnerForm.fssai">Manage Training Partner</a></li>
                                    <li><a href="manageAssessmentAgencyForm.fssai">Manage Assessment Agency</a></li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="dropdown active"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog fa-spin"></i> <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="changePassword.fssai">Change Password</a></li>
                                            <li><a href="logout.fssai">Logout</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!--/.nav-collapse -->
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </section>
    <!-- main body -->
    <section class="main-section-margin-top">
        <div class="container-fluid">
            <div id="wrapper">
                <!-- Sidebar -->
                <div id="sidebar-wrapper">
                    <ul class="sidebar-nav">
                        <!-- <li class="sidebar-brand"></li> -->
                        <li><a href="manageCourse.fssai">Manage Course</a></li>
                        <li><a href="manageCourseContent.fssai">Manage Course Content</a></li>
                        <li> <a href="trainingCalendarForm.fssai">Training Calendar</a> </li>
                        <li> <a href="assessmentSchedule.fssai">Update Assessor</a> </li>
                        <li> <a href="manageAssessmentQuestions.fssai">Assessment Questions</a> </li>
                        <li> <a href="updateTrainerAssessment.fssai">TOT Assessment</a> </li><li> <a href="feedback-master.html">Feedback Master</a> </li>
                    </ul>
                </div>
                <!-- /#sidebar-wrapper -->
                <!-- Page Content -->
                <div id="page-content-wrapper">
                    <div class="container-fluid">
                        <!-- vertical button -->
                        <div class="row">
                            <div class="col-lg-12">
                                <a href="#menu-toggle" class="vertical-menu-position-btn" id="menu-toggle"> <i class="fa fa-bars"></i> <span class="orange-font">Welcome Trainee Mr. Lorem </span> </a>
                            </div>
                        </div>
                        <!-- add the content here for main body -->
                        <!-- timeline  -->
                        <div class="row">
                            <div class="col-xs-12">
                                <h1>Manage Training Partner</h1>
                                
                                     <fieldset>
                                        <legend>Head Office Details</legend>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <!-- left side -->
                                        <div class="col-md-6 col-xs-12">
                                            
                                             <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong><cs:message code="lbl.Trainee.UserId" /></strong></li>
                                                        <li class="style-li error-red"><span id="name_status"> </span>
                                                        <cf:errors path="userId" cssClass="error" />
                                                        </li>
                                                    </ul>
                                                </div>
 <cf:input path="userId"  placeholder="UserId" class="form-control" onblur  ="checkname();" />
                                            </div>
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Training Partner Name:</strong></li>
                                                        <li class="style-li error-red">
                                                         <cf:errors path="trainingPartnerName" cssClass="error" />
                                                        </li>
                                                    </ul>
                                                </div>
 <cf:input path="trainingPartnerName"  placeholder="Training Partner Name" class="form-control" />
                                            </div>
                                            
                                              <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Website URL:</strong></li>
                                                        <li class="style-li error-red">
                                                         <cf:errors path="websiteUrl" cssClass="error" />
                                                        </li>
                                                    </ul>
                                                </div>
 <cf:input path="websiteUrl"  placeholder="Website URL" class="form-control" />
                                            </div>
                                            
                                           
                                           
                                        </div>
                                        <!-- left side ends -->
                                        <!-- right side -->
                                        <div class="col-md-6 col-xs-12">
                                            
                                           
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>PAN:</strong></li>
                                                        <li class="style-li error-red">
                                                        <span id="name_status"> </span>
                                                        <cf:errors path="PAN" cssClass="error" />
                                                        </li>
                                                    </ul>
                                                </div>
 <cf:input path="PAN"  placeholder="PAN" class="form-control" onKeyUP="this.value = this.value.toUpperCase();" onblur="fnValidatePAN(this);" />
                                            </div>
                                            
                                             <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Status:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="status" class="form-control">
<cf:option value="A" label="Active" />
<cf:option value="i" label="In-Active" />
</cf:select>
                                            </div>
                                            
                                        </div>
                                        <!-- rigth side ends -->
                                    </div>
                                </div>
</fieldset>
                            </div>
 <div style="height:50px;"></div>                          
                <div class="row">
                                <!-- head office data -->
                                <div class="col-xs-12">
                                    <fieldset>
                                        <legend>Head Office Data</legend>
                                        <!-- left side -->
                                        <div class="col-md-6 col-xs-12">
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Address 1:</strong></li>
                                                        <li class="style-li error-red">
                                                        <cf:errors path="headOfficeDataAddress1" cssClass="error" />
                                                        </li>
                                                    </ul>
                                                </div>
 <cf:input path="headOfficeDataAddress1"  placeholder="Address" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Address 2:</strong></li>
                                                        <li class="style-li error-red">
                                                        <cf:errors path="headOfficeDataAddress2" cssClass="error" />
                                                        </li>
                                                    </ul>
                                                </div>
 <cf:input path="headOfficeDataAddress2"  placeholder="Address" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>PIN:</strong></li>
                                                        <li class="style-li error-red">
                                                        <cf:errors path="pin" cssClass="error" />
                                                        </li>
                                                    </ul>
                                                </div>
<cf:input path="pin"   placeholder="PIN" class="form-control" />
                                            </div>
                                        </div>
                                        <!-- right side -->
                                        <div class="col-md-6 col-xs-12">
                                         <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>State:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="state" class="form-control" onchange="getDistrict(this.value)">
<cf:option value="0" label="Select State" />
<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName" />
</cf:select>
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>District:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="district" class="form-control" onchange="getCity(this.value)">
<cf:option value="0" label="Select District"/>
</cf:select>
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>City:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="city" class="form-control">
<cf:option value="0" label="Select City" />
</cf:select> 
                                            </div>
                                        </div>
                                    </fieldset>
                                </div></div>
                                <!-- button -->
                                <div class="row" id="register1">
                                    <div class="col-md-6 col-xs-12"></div>
                                    <div class="col-md-6 col-xs-12" style="margin-top: 26px;">
                                        <input type="submit" id="register" class="btn login-btn" value="Create/Update" />
                                        <button type="submit" class="btn btn-default pull-right show-details-vacancy collapsed" data-toggle="collapse" data-target="#show-result" aria-expanded="false" style="margin-right: 15px  ">Search</button>
                                    </div>
                                </div>
                          
                            <!-- search Results -->
                            <div class="col-xs-12 collapse" id="show-result" aria-expanded="false" style="height: 0px;">
                                <!-- table -->
                                <div class="row">
                                    <div class="col-xs-12">
                                        <fieldset>
                                            <legend>Search Result</legend>
                                            <table class="table table-bordered table-responsive">
                                                <thead>
                                                    <tr class="background-open-vacancies">
                                                        <th>S.No.</th>
                                                        <th>Training Partner ID</th>
                                                        <th>Training Partner Name</th>
                                                        <th>Training Partner PAN</th>
                                                        <th>Website Link</th>
                                                        <th>Head Office Address</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                            </table>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                            <!-- search div ends -->
                    
                        <!-- row ends -->
                    </div>
             
        </div>
    </section>
    <div class="container">
    <div class="row">
      <div class="col-sm-12 text-center">Design and Developed by &nbsp;<a href="http://www.zentechinfo.com/" target="_blank" style="color:#1c1b1b; text-decoration:underline;">Zentech Info Solutions Pvt. Ltd.</a> &copy; FSSAI 2016- All Right Reserved.</div>    </div>
  </div>
    </cf:form>