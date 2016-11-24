<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>

<script type='text/javascript'>
function validateFields() {
	$('.displayNone').css('display', 'block');
	if(document.getElementById("regionName").value=="") {
	document.getElementById("regionName").style.borderColor = "red";
	document.getElementById("regionNameError").style.display = 'block';
	document.getElementById("regionName").focus();
	return false;
	}else{
	    document.getElementById('regionName').style.borderColor = "#ccc";
	    document.getElementById("regionNameError").style.display = 'none';
	    }
	return( true );
}

</script>
<cf:form action="regionMasterSave.fssai" name="myForm" method="POST" commandName="regionMappingMaster" onsubmit="return validateFields();"> 

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
                                <ul class="nav navbar-nav" style="padding-left:70px;">
                                    <li></li>
                                    <li class="hori"><a href="index.html">Home</a></li>
                                    <li> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Management<span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="trainee-user-management.html" class="clr">Trainee</a></li>
                                            <li><a href="trainer-user-management.html" class="clr">Trainer</a></li>
                                            <li><a href="training-center--user-management.html" class="clr">Training Center</a></li>
                                            <li><a href="assessor-user-management.html" class="clr">Assessor</a></li>
                                            <li><a href="admin--user-management.html" class="clr">Admin</a></li>
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
                                    <li><a href="manage-training-partner.html">Manage Training Partner</a></li>
                                    <li><a href="manage-assessment-agency.html">Manage Assessment Agency</a></li>
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
                        <li><a href="manage-course-content.html">Manage Course Content</a></li>
                        <li> <a href="training-calendar.html">Training Calendar</a> </li>
                        <li> <a href="assessment-schedule.html">Assessment Schedule</a> </li>
                        <li> <a href="manage-assessment-questions.html">Assessment Questions</a> </li>
                        <li> <a href="update-trainer-assessment.html">Update Assessment</a> </li>
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
                                    <h1>Region Mapping</h1>
                                    <div class="row">
                                        <div class="col-xs-12">

                                            <!-- left side -->
                                            <div class="col-xs-6">
                                                <div class="form-group">
                                                    <div>
                                                        <ul class="lab-no">
                                                            <li class="style-li"><strong>Region Name:</strong></li>
                                                            <li class="style-li error-red"><label class="error visibility" id="regionNameError">* error</label></li>
                                                        </ul>
                                                    </div>
    <cf:input path="regionName"   placeholder="Region Name" class="form-control"   />
        
</div>
                                                
                                                
                                            </div> <!-- left side ends -->

                                            <!-- right side -->
                                            <div class="col-xs-6">
                                                
                                                <div class="form-group">
                                                    <div>
                                                        <ul class="lab-no">
                                                            <li class="style-li"><strong>District:</strong></li>
                                                            <li class="style-li error-red">*Error</li>
                                                        </ul>
                                                    </div>
<cf:select path="districtId" class="form-control">
<cf:options items="${districtList}" itemValue="districtId" itemLabel="districtName"/>
</cf:select>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <button class="btn login-btn">Create/ Update</button>
                                                    
                                                       <a href="#testt" onclick="validateFields();" class="pull-right">Search</a>
                                                </div>
                                            </div> <!-- rigth side ends -->
                                            
                                            <!-- button -->
                                            
                                          
                                        </div>

                                       
                                    </div>
                                </div>

                                <!-- search Results -->
                                <div class="col-xs-12 displayNone" id="show-result" aria-expanded="false" style="height: 0px; display:none;">
                                    
                                    <!-- table -->
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <fieldset>
                                                <legend>Search Result</legend>
                                                
                                                <table class="table table-bordered table-responsive">
                                                <thead>
                                                    <tr class="background-open-vacancies">
                                                        <th> </th>
                                                        <th>S.No.</th>                                                        
                                                        <th>Region Name</th>
                                                        <th>District</th>
                                                        
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-center"><input type="checkbox"></td>
                                                        <td>1</td>
                                                        <td>North</td>
                                                        <td>North Delhi</td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center"><input type="checkbox"></td>
                                                        <td>2</td>
                                                        <td>North</td>
                                                        <td>North Delhi</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center"><input type="checkbox"></td>
                                                        <td>3</td>
                                                        <td>North</td>
                                                        <td>North Delhi</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                                
                                                <!-- + - buttons -->
                                                <div class="row">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div style="width: 95px;">
                                                            <ul class="pager">
                                                                <li class="previous"><a href="#"><i class="fa fa-plus"></i></a></li>
                                                                <li class="next"><a href="#"><i class="fa fa-minus"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="col-md-6 col-xs-12">
                                                        <button class="btn login-btn pull-right" style="margin-top: 20px;">Save</button>
                                                    </div>
                                                </div>
                                                
                                               
                                                
                                            </fieldset>
                                            
                                        </div>
                                    </div>
                                </div> <!-- search div ends -->

                            </div> <!-- row ends -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    </cf:form>