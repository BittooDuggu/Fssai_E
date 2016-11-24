<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
function getCourseName(val)
{
	$.ajax({
	      type: 'post',
	      url: 'loadCourseName.jspp?'+ val,
	      success: function (response) {      
	      var mainData1 = jQuery.parseJSON(response);
	      $('#courseName option').remove();
	      $('#courseName').append('<option value="0" label="Select Course name" />');
	  	  $.each(mainData1 , function(i , obj)
	  		{
	  		
	  				$('#courseName').append('<option value='+obj.coursenameId+' label='+obj.coursename+' />');		
	  		});
	      }
	      });     
}
function getTrainingCenter(val)
{
	alert('knhjkhkjl');
	$.ajax({
	      type: 'post',
	      url: 'loadTrainingCenter.jspp?'+ val,
	      success: function (response) {      
	      var mainData1 = jQuery.parseJSON(response);
	      $('#coursename').append('<option value="0" label="Select Training Type" />');
	      $('#courseName').append('<option value="1" label="Basic" />');
	      $('#courseName').append('<option value="2" label="Advance" />');
	      $('#courseName').append('<option value="3" label="Special" />');
	      
	      $('#trainingCenter option').remove();
	      $('#trainingCenter').append('<option value="0" label="Select Training Center" />');
	  	  $.each(mainData1 , function(i , obj)
	  		{
	  		
	  				$('#trainingCenter').append('<option value='+obj.coursenameId+' label='+obj.coursename+' />');		
	  		});
	      }
	      });     
}
</script>
<cf:form action="trainingCalenderSave.fssai" name="myForm" method="POST" commandName="trainingCalendarForm" > 


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
                                    <li class="active hori"><a href="index.html">Home</a></li>
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
                                    <li><a href="manageTrainingPartnerForm.fssai">Manage Training Partner</a></li>
                                    <li><a href="manageAssessmentAgencyForm.fssai">Manage Assessment Agency</a></li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="dropdown active"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog fa-spin"></i> <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="change-password.html">Change Password</a></li>
                                            <li><a href="#">Logout</a></li>
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
                                <a href="#menu-toggle" class="vertical-menu-position-btn" id="menu-toggle"> <i class="fa fa-bars"></i> <span class="orange-font">Welcome Mr. Anuj</span> </a>
                            </div>
                        </div>
                        <!-- add the content here for main body -->
                        <!-- timeline  -->
                        <div class="container-fluid">
                            <div class="row">
                                <!-- search and apply vacancies -->
                                <div class="col-xs-12">
                                    <fieldset>
                                        <legend>Training Calendar</legend>
                                        <!-- left side -->
                                        <div class="col-md-6 col-xs-12">
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Course Type:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="courseType" class="form-control" onchange="getCourseName(this.value);">
<cf:option value="0" label="Select Course Type"></cf:option>
<cf:options items="${courseTypeList}" itemValue="CourseTypeId" itemLabel="CourseType"/>
</cf:select>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Course Name:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="courseName" class="form-control">
<cf:option value="0" label="Select Course Name" />
</cf:select>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Training Partner:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="trainingPartner" class="form-control" onchange="getTrainingCenter(this.value);">
<cf:option value="0" label="Select Training Partner"></cf:option>
<cf:options items="${trainingPartnerList}" itemValue="manageTrainingPartnerId" itemLabel="trainingPartnerName"/>

</cf:select>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Training Center:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="trainingCenter" class="form-control">
<cf:option value="0" label="Select Training Center" />
</cf:select>
                                            </div>
                                            
                                        </div>
                                        
                                        <!-- right side -->
                                        <div class="col-md-6 col-xs-12">
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Training Date:</strong></li>
                                                        <li class="style-li error-red">*Error</li>
                                                    </ul>
                                                </div>
                                                <input type="date" class="form-control">
                                            </div>
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Training Time</strong></li>
                                                        <li class="style-li error-red">*Error</li>
                                                    </ul>
                                                </div>
                                                <input type="time" class="form-control">
                                            </div>
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Trainer Name:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="trainerName" class="form-control">
<cf:options items="${trainingNameList}" itemValue="personalInformationTrainerId" itemLabel="FirstName"/>
</cf:select>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div>
                                                    <ul class="lab-no">
                                                        <li class="style-li"><strong>Training Type:</strong></li>
                                                        <li class="style-li error-red"></li>
                                                    </ul>
                                                </div>
<cf:select path="courseName" class="form-control">
<cf:options items="${courseTypeList}" itemValue="CourseTypeId" itemLabel="CourseType"/>
</cf:select>
                                            </div>
                                            
                                        </div>
                                        
                                        <button type="submit" class="btn btn-default pull-right show-details-vacancy collapsed" data-toggle="collapse" data-target="#show-result" aria-expanded="false">Show Details</button>
                                       
                                    </fieldset>
                                    
                                </div>
                                
                                <!-- search Results -->
                                <div class="col-xs-12 collapse" id="show-result" aria-expanded="false" style="height: 0px;">
                                    <h1>Search Results</h1>
                                    <!-- table -->
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <table class="table table-bordered table-responsive table-striped table-hover">
                                                <thead>
                                                    <tr class="background-open-vacancies">
                                                        <th>S.No.</th>
                                                        <th>Training Type</th>
                                                        <th>Course Type</th>
                                                        <th>Course Name</th>
                                                        <th>Training Partner Name</th>
                                                        <th>Training Center name</th>
                                                        <th>Training Date</th>
                                                        <th>Training Time</th>
                                                        <th>Trainer Name</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1
                                                            <input type="checkbox">
                                                        </td>
                                                        <td>Trainer</td>
                                                        <td>Basic</td>
                                                        <td>GHP-GMP</td>
                                                        <td>FSSAI</td>
                                                        <td>FDA Bhavan Delhi</td>
                                                        <td>
                                                            <input type="date" class="form-control">
                                                        </td>
                                                        <td>
                                                            <input type="time" class="form-control">
                                                        </td>
                                                        <td>
                                                            <select class="form-control">
                                                                <option>Rahul</option>
                                                                <option>Suraj</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>2
                                                            <input type="checkbox">
                                                        </td>
                                                        <td>Trainee</td>
                                                        <td>Advance</td>
                                                        <td>GHP-GMP</td>
                                                        <td>Skill India</td>
                                                        <td>Karolbagh</td>
                                                        <td>
                                                            <input type="date" class="form-control">
                                                        </td>
                                                        <td>
                                                            <input type="time" class="form-control">
                                                        </td>
                                                        <td>
                                                            <select class="form-control">
                                                                <option>Rahul</option>
                                                                <option>Suraj</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>3
                                                            <input type="checkbox">
                                                        </td>
                                                        <td>Trainee</td>
                                                        <td>Basic</td>
                                                        <td>GHP-GMP</td>
                                                        <td>Skill India</td>
                                                        <td>Hawa Mahel, Jaipur</td>
                                                        <td>
                                                            <input type="date" class="form-control">
                                                        </td>
                                                        <td>
                                                            <input type="time" class="form-control">
                                                        </td>
                                                        <td>
                                                            <select class="form-control">
                                                                <option>Rahul</option>
                                                                <option>Suraj</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    
                                                </tbody>
                                            </table>
                                            <div style="width: 95px;">
                                                <ul class="pager">
                                                    <li class="previous"><a href="#"><i class="fa fa-plus"></i></a></li>
                                                    <li class="next"><a href="#"><i class="fa fa-minus"></i></a></li>
                                                </ul>
                                            </div> 
                                            <a href="#" class="btn btn-default pull-right">Save</a> 
                                        </div> <!-- col-xs-12 -->
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </cf:form>