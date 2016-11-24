<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
function OnStart(){
	//alert('on');
	onLoadDistrict();
}
window.onload = OnStart;
</script>
<script type="text/javascript">
  function onLoadDistrict(){
	  //alert('aa');
		var result="";
		$.ajax({
		type: 'post',
		url: 'onLoadDistrict.jspp?',
		async: false, 
		success: function (data){
		$('#newTable').show();
		//alert('ff');
		var mainData1 = jQuery.parseJSON(data);
		//alert(mainData1);
		var j=1;
		$('#newTable tr').remove();
		$('#newTable').append('<tr  class="background-open-vacancies"><th>S.No.</th><th>State Name</th><th>District Name</th><th>Status</th><th>Edit</th><th>Change Status</th></tr>')
		$.each(mainData1 , function(i , obj)
		{
			$('#newTable').append('<tr id="tableRow"><td>'+j++ +'</td><td>'+obj[0]+'</td><td>'+obj[1]+'</td><td>'+obj[2]+'</td><td><input type="hidden" id="idCity" value="'+obj[3]+'" /><a href="" onClick="editDistrict();">edit</a></td><td><a href="#" onClick="changeStatus();">Active / In-Active</a></td></tr>');
			
		});
		}
		});
	return result;
}
</script>
<script type='text/javascript'>
function validateFields() {
	$('.displayNone').css('display', 'block');
	if(document.getElementById("stateId").value=="0") {
	document.getElementById("stateId").style.borderColor = "red";
	document.getElementById("stateIdError").style.display = 'block';
	document.getElementById("stateId").focus();
	return false;
	}else{
	    document.getElementById('stateId').style.borderColor = "#ccc";
	    document.getElementById("stateIdError").style.display = 'none';
	    }
	if(document.getElementById("DistrictName").value=="") {
		document.getElementById("DistrictName").style.borderColor = "red";
		document.getElementById("DistrictNameError").style.display = 'block';
		document.getElementById("DistrictName").focus();
		return false;
		}else{
		    document.getElementById('DistrictName').style.borderColor = "#ccc";
		    document.getElementById("DistrictNameError").style.display = 'none';
		    }
	if(document.getElementById("status").value=="0") {
		document.getElementById("status").style.borderColor = "red";
		document.getElementById("statusError").style.display = 'block';
		document.getElementById("status").focus();
		return false;
		}else{
		    document.getElementById('status').style.borderColor = "#ccc";
		    document.getElementById("statusError").style.display = 'none';
		    }
	return( true );
}
</script>


<script type="text/javascript">
function searchDistrict(){
	alert('ff');
	$('.displayNone').css('display', 'block');
	//$('#created').css('display', 'none');
	var stateId =  $("#stateId").val();
	var disName =  $("#DistrictName").val();
	var status =  $("#status").val();
	alert('ddd');
		var result="";
		var total = "stateId="+stateId "&disName="+disName"&status="+status;
		$.ajax({
		type: 'post',
		url: 'searchDistrict.jspp?'+ total,
		async: false, 
		success: function (data){
		$('#newTable').show();
		var mainData1 = jQuery.parseJSON(data);
		alert(mainData1);
		var j=1;
		$('#newTable tr').remove();
		$('#newTable').append('<tr  class="background-open-vacancies" style="background-color:#000077;"><th>S.No.</th><th>State Name</th><th>District Name</th><th>Status</th><th>Edit</th><th>Change Status</th></tr>')
		$.each(mainData1 , function(i , obj)
		{
			$('#newTable').append('<tr id="tableRow"><td>'+j++ +'</td><td><input type="hidden" id="stateLabel" value="'+obj[0]+'">'+obj[1]+'</td><td>'+obj[2]+'</td></tr>');	
		});
		}
		});
	return result;
}
</script>
  
   <cf:form action="districtMasterSave.fssai" name="myForm" method="POST" commandName="districtMaster" onsubmit="return validateFields();"> 
   
   
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
                                <ul class="nav navbar-nav" style="padding-left: 70px;">
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
                                    <li class="active"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Data<span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="stateMaster.fssai" class="clr">State</a></li>
                                            <li><a href="districtMaster.fssai" class="clr">District</a></li>
                                            <li><a href="cityMaster.fssai" class="clr">City</a></li>                                            
                                            <li><a href="regionMappingMaster.fssai" class="clr">Region Mapping</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="manageTrainingPartnerForm.fssai">Manage Training Partner</a></li>
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
                        <li> <a href="assessmentSchedule.fssai">Assessment Schedule</a> </li>
                        <li> <a href="manageAssessmentQuestions.fssai">Assessment Questions</a> </li>
                        <li> <a href="updateTrainerAssessment.fssai">Update Assessment</a> </li>
                    </ul>
                </div>
                <!-- /#sidebar-wrapper -->
                <!-- Page Content -->
                <div id="page-content-wrapper">
                    <div class="container-fluid">
                        <!-- vertical button -->
                        <div class="row">
                            <div class="col-lg-12">
                                <a href="#menu-toggle" class="vertical-menu-position-btn" id="menu-toggle"> <i class="fa fa-bars"></i> <span class="orange-font">Welcome Mr. Lorem </span> </a>
                            </div>
                        </div>
                        <!-- add the content here for main body -->
                        <!-- timeline  -->
                        <div class="row">

                                <div class="col-xs-12">
                                    <h1>District Master</h1>
                                    <div class="row">
                                        <div class="col-xs-12">

                                            <!-- left side -->
                                            <div class="col-xs-6">
                                                  <div class="form-group">
                                                    <div>
                                                        <ul class="lab-no">
                                                            <li class="style-li"><strong>State Name:</strong></li>
                                                            <li class="style-li error-red">
                                                            <label id="created" class="error">${created }</label>
                                                            <label class="error visibility" id="stateIdError">* error</label>
                                                                  </li>
                                                        </ul>
                                                    </div>
<cf:select path="stateId" class="form-control">
<cf:options items="${stateList}" itemValue="stateId" itemLabel="stateName"/>
<cf:option value="0" label="Select State" />
</cf:select>
                                                </div>
                                                
                                                
  <div class="form-group">
                                                    <div>
                                                        <ul class="lab-no">
                                                            <li class="style-li"><strong>Status:</strong></li>
                                                    <li class="style-li error-red">
                                                            <label class="error visibility" id="statusError">* error</label>
                                                                  </li>
                                                        </ul>
                                                    </div>
<cf:select path="status" class="form-control">
<cf:option value="0" label="Select Status" />
<cf:option value="A" label="Active" />
<cf:option value="I" label="In-Active" />
</cf:select>
                                                </div>                                                
                                           
                                            </div> <!-- left side ends -->

                                            <!-- right side -->
                                            <div class="col-xs-6">
                                                
                                                   <div class="form-group">
                                                    <div>
                                                        <ul class="lab-no">
                                                            <li class="style-li"><strong>District Name:</strong></li>
                                                            <li class="style-li error-red">
                                                             <label class="error visibility" id="DistrictNameError">* error</label>
                                                     
                                                            </li>
                                                        </ul>
                                                    </div>
  <cf:input path="DistrictName"   placeholder="District Name" class="form-control"   />
                                            
                                                </div>
                                                
                                              
                                            </div> <!-- rigth side ends -->
                                            
                                            <!-- button -->
                                            
                                            <div class="row">
                                                <div class="col-md-6 hidden-xs"></div>
                                                <!-- create button -->
                                                <div class="col-md-3 col-xs-12">
                                                    <input type="submit" class="btn login-btn" value="Create" />
                                               <a href="#testt" class="pull-right" onclick="searchDistrict();">Search</a>
                                                </div>
                                                <!-- show details -->

    
                                                
                                            </div> <!-- button row ends -->
                                        </div>

                                       
                                    </div>
                                </div>

                                <!-- search Results -->
                                <div class="col-xs-12 displayNone"   id="show-result" aria-expanded="false" style="height: 0px;">
                                    
                                    <!-- table -->
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <fieldset>
                                                <legend>Search Result</legend>
                                                
                                                <table id="newTable" class="table table-bordered table-responsive">
                                                <thead>
                                                    <tr class="background-open-vacancies">
                                                        <th>S.No.</th>
                                                        <th>State Name</th>
                                                        <th>District Name</th>
                                                        <th>Status</th>
                                                        <th>Option</th>
                                                    </tr>
                                                </thead>
  <tbody>                                            
<%-- <ct:forEach var="listValue" items="${districtShowList}" varStatus="loop"><tr>
<td>${loop.count} </td>
<td>loop[0] </td>
<td>
<label>${listValue }</label>
<input type="hidden"   id="labelStateName" value="${listValue }" /></td>

<td>
<label>${listValue }</label>
<input type="hidden"  id="labelStatus" value="${listValue}" /></td>

<td><a href="#" onclick="deleteState();">delete</a>
&nbsp;&nbsp;&nbsp;
<a href="#" onclick="editState();">
<input type="hidden" name="districtIdd" id="stateIdd"  value="${listValue}"/>edit</a>
</td>
</tr>
 </ct:forEach> --%>

                                                
                                                </tbody>
                                            </table>
                                            </fieldset>
                                            
                                        </div>
                                    </div>
                                </div> <!-- search div ends -->

                            </div>
                        <!-- row ends -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    </cf:form>