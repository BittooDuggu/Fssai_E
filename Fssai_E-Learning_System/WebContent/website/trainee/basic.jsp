<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
function getDistrict(val)
{
	$.ajax({
	      type: 'post',
	      url: 'loadDistrict.jspp?'+ val,
	      success: function (response) {      
	      var mainData1 = jQuery.parseJSON(response);
	      $('#trainingCenterCity option').remove();
	      $('#trainingCenterCity').append('<option value="0" label="Select District" />');
	  	  $.each(mainData1 , function(i , obj)
	  		{
	  		
	  				$('#trainingCenterCity').append('<option value='+obj.districtId+' label='+obj.districtName+' />');		
	  		});
	      }
	      });     
}

</script>
<cf:form action="basicSave.fssai" name="myForm" method="POST" commandName="basicTrainee" >

    <section>
      <div class="container-fluid">
        <nav class="navbar navbar-default navbar-fixed-top horizontal-nav-top horizontal-top-nav-border">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="hori"><a href="index.fssai">First login Home</a></li>
                <li class="hori"><a href="second-time-login.fssai">Second Time Login Home Page</a></li>
                <li class="hori"><a href="update-information.fssai">Update Information</a></li>
                <li class="hori"><a href="contactTrainee.fssai">Contact Us</a></li>
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
        </nav>
      </div>
    </section>

    <!-- main body -->
    <section class="main-section-margin-top">
      <div class="container-fluid">
        <div id="wrapper"> 

          <!-- Sidebar menu -->
          <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
              <li class="dropdown active"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Course Enrollment <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="basic.fssai" class="clr">Basic Course</a></li>
                  <li><a href="advance.fssai" class="clr">Advanced Course</a></li>
                  <li><a href="special.fssai" class="clr">Special Course</a></li>
                </ul>
              </li>
              <li> <a href="generateAdmitCard.fssai">Generate Admit Card</a> </li>
              <li> <a href="courseTraining.fssai">Training</a> </li>
              <li> <a href="assessmentInstructions.fssai">Assessment</a> </li>
              <li> <a href="feedbackForm.fssai">Feedback</a> </li>
              <li> <a href="generateCertificate.fssai">Certification</a> </li>
            </ul>
          </div>
          <!-- Sidebar menu --> 
          <!-- /#sidebar-wrapper --> 
          <!-- Page Content -->
          <div id="page-content-wrapper">
            <div class="container-fluid"> 
              <!-- vertical button -->         

              <!-- add the content here for main body --> 

              <!-- timeline  -->
              <section class="section-form-margin-top">
                <div class="personel-info">
                <div class="container-fluid">

                <!-- login form -->
                <div class="row">
                <div class="col-xs-12">
                  <fieldset >
                    <legend><h3>Course Enrollment: Basic Course</h3></legend>              
                    <div class="row"></div>
                    <form>
                      <!-- left side -->
                      <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                          <label>Course Name</label>
<cf:select path="courseName" class="form-control">
<cf:option value="0" label="Select Course" />
<cf:options items="${courseNameList}" itemValue="coursenameid" itemLabel="coursename" />
</cf:select>
                        </div>
                        <div class="form-group">
                          <label>Training Partner</label>
<cf:select path="trainingPartner" class="form-control">
<cf:option value="0" label="Select Training Partner" />
<cf:options items="${trainingPartnerList}" itemValue="tpId" itemLabel="tpName" />
</cf:select>
                        </div>
                        <div class="form-group">
                          <label>Training Centre: State</label>
<cf:select path="trainingCenterState" class="form-control" onchange="getDistrict(this.value);">
<cf:option value="0" label="Select State" />
<cf:options items="${trainingCenterStateList}" itemValue="stateId" itemLabel="stateName" />
</cf:select>
                        </div>

                        <!-- residential address --> 

                      </div>

                      <!-- right side -->
                      <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                          <label>Mode of Training</label>
<cf:select path="modeOfTraining" class="form-control">
<cf:option value="Online" label="Online" />
<cf:option value="Classroom" label="Classroom" />
</cf:select>
                        </div>
                        <div class="form-group">
                          <label>Training Date</label>
                          <input type="text" class="form-control" placeholder="Training Date" required>
                        </div>
                        <div class="form-group">
                          <label>Training Centre: District</label>
<cf:select path="trainingCenterCity" class="form-control">
<cf:option value="0" label="Select District" />
</cf:select>
                        </div>
                        <!-- business address --> 
                      </div>
                      <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                          <input style="width:150px;"  type="button" class="form-control login-btn btn" value="Show Details" />
                        </div>

                        <!-- residential address --> 

                      </div>
                    </form>
                    <div class="col-md-2 hidden-xs"></div>
                  </fieldset>
                </div>
              </section>
              <section class="section-form-margin-top">
                <div class="container-fluid"> 

                  <!-- login form -->              
                  <div class="row">
                    <div class="col-xs-12">
                    <fieldset>
                    <legend><h4 class="text-capitalize heading-3-padding">GHP-GMP* Certification Course</h4></legend>
                    <table class="table-bordered table table-responsive table-striped table-hover">
                        <thead>
                          <tr class="background-open-vacancies">
                            <td>Select</td>
                            <td>Training Center Name & Address</td>
                            <td>Training Schedule</td>
                            <td>Center Contact Person Name, Mobile & Email Id</td>
                            <td>Seating Capacity</td>
                            <td>Seats available</td>
                          </tr>
                        </thead>
                        <tr>
                          <td><label>
                              <input name="abc" type="radio" value="">
                            </label></td>
                          <td>FDA Bhvan, New Delhi</td>
                          <td>Date: 09/09/2016 Time: 12:32 PM</td>
                          <td>Rahul, 9871223345 / abc@gmail.com</td>
                          <td>12</td>
                          <td>3</td>
                        </tr>
                        <tr>
                          <td><label>
                              <input name="abc" type="radio" value="">
                            </label></td>
                          <td>FSSAI, New Delhi</td>
                          <td>Date: 10/10/2016 Time: 10:30 AM</td>
                          <td>Sita Sharma, 9871223345 / abc@gmail.com</td>
                          <td>30</td>
                          <td>10</td>
                        </tr>
                      </table>
                       <div class="col-xs-12 pull-right">
                        <input style="margin-top:20px; width:100px;"  type="button" class="form-control login-btn btn" value="Enroll" />
                      </div>
                    </fieldset>                  

                    </div>
                    <div class="col-md-2 hidden-xs"></div>
                  </div>
                </div>
              </section>
</div></div></div></div></section></cf:form>