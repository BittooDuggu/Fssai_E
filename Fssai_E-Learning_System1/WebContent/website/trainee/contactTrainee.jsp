<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>
<script type='text/javascript'>
function validateFields() {
	if(document.getElementById("emailId").value=="") {
	document.getElementById("emailId").style.borderColor = "red";
	document.getElementById("emailIdError").style.display = 'block';
	document.getElementById("emailId").focus();
	return false;
	}else{
	    document.getElementById('emailId').style.borderColor = "#ccc";
	    document.getElementById("emailIdError").style.display = 'none';
	    }
	if(document.getElementById("message").value=="") {
		document.getElementById("message").style.borderColor = "red";
		document.getElementById("messageError").style.display = 'block';
		document.getElementById("message").focus();
		return false;
		}else{
		    document.getElementById('message').style.borderColor = "#ccc";
		    document.getElementById("messageError").style.display = 'none';
		    }
	return( true );
}

</script>
<cf:form action="contactTrainee1.fssai" name="myForm" method="POST" commandName="contactTrainee" onsubmit="return validateFields();">
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
                    <li class="hori"><a href="index.html">First login Home</a></li>
                    <li class="hori"><a href="second-time-login.html">Second Time Login Home Page</a></li>
                    <li class="hori"><a href="update-information.html">Update Information</a></li>
                    <li class="active hori"><a href="contact.html">Contact Us</a></li>
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

          <!-- Sidebar menu -->
              <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                  <li class="dropdown active"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Course Enrollment <span class="caret"></span></a>
                <ul class="dropdown-menu">
                      <li><a href="basic.html" class="clr">Basic Course</a></li>
                      <li><a href="advance.html" class="clr">Advanced Course</a></li>
                      <li><a href="special.html" class="clr">Special Course</a></li>
                    </ul>
              </li>
                  <li> <a href="generate-admit-card.html">Generate Admit Card</a> </li>
                  <li> <a href="course-training.html">Training</a> </li>
                  <li> <a href="assessment-instructions.html">Assessment</a> </li>
                  <li> <a href="feedback-form.html">Feedback</a> </li>
                  <li> <a href="generate-certificate.html">Certification</a> </li>
                </ul>
          </div>
           <!-- Sidebar menu -->
          <!-- /#sidebar-wrapper --> 
          <!-- Page Content -->
          <div id="page-content-wrapper">
            <div class="container-fluid"> 

              <!-- vertical button -->
              <div class="row">
                <div class="col-lg-12"> <a href="#menu-toggle" class="vertical-menu-position-btn" id="menu-toggle"> <i class="fa fa-bars"></i>
                 <span class="orange-font"> Welcome Mr.  ${loginUser.loginId}</span> </a> </div>
              </div>

              <!-- add the content here for main body --> 
              <!-- feedback form  -->

              <div class="container-fluid">
                <div class="row">              
                  <div class="col-xs-12 contact-margin-top">
                  <fieldset>
                  <legend><h3>Let Us Help You!</h3></legend><br>
                  <form>
                      <div class="form-group">
                        <label>Your Email Address:</label>
                        <label class="error visibility" id="emailIdError">* error</label>
                         <cf:input path="emailId"   placeholder="Email" class="form-control"   />
                                    
                      </div>
                      <div class="form-group">
                        <label>Message Details</label>
                        <label class="error visibility" id="messageError">* error</label>
                        <cf:textarea path="message"   placeholder="Message" class="form-control" maxlength="250"  />
                      </div>
                      <input style="margin-top:20px; width:100px;"  type="submit" class="form-control login-btn btn" value="Submit" />
                    </form>
                  </fieldset>


                  </div>
                  <div class="col-md-2 hidden-xs"> </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    </cf:form>