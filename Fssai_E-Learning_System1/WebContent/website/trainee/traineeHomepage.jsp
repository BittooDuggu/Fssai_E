<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <li class="active hori"><a href="index.fssai">First login Home</a></li>
                <li class="hori"><a href="second-time-login.fssai">Second Time Login Home Page</a></li>
                <li class="hori"><a href="updateInformation.fssai">Update Information</a></li>
                <li class="hori"><a href="contactTrainee.fssai">Contact Us</a></li>
              </ul>
                  <ul class="nav navbar-nav navbar-right">
                <li class="dropdown active"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog fa-spin"></i> <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                    <li><a href="change-password.fssai">Change Password</a></li>
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
              <li> <a href="course-Training.fssai">Training</a> </li>
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
              <div class="row">
            <div class="col-lg-12"> <a href="#menu-toggle" class="vertical-menu-position-btn" id="menu-toggle"> <i class="fa fa-bars"></i>
             <span class="orange-font">
             Welcome Mr.  ${loginUser.loginDetails.loginId}</span> </a> </div>
          </div>
              
              <!-- add the content here for main body --> 
              <!-- timeline  -->
              
              <div class="container-fluid">
            <div class="row">
                  <div class="col-xs-12">
                <div class="page-header">
                      <h1 id="timeline">Certification Process</h1>
                    </div>
                <ul class="timeline">
                      <li>
                    <div class="timeline-badge success">1</div>
                    <div class="timeline-panel">
                          <div class="timeline-heading">
                        <h4 class="timeline-title">Step 1</h4>
                      </div>
                          <div class="timeline-body">
                        <p>Course Enrollment</p>
                        <p> <a href="basic.fssai">Basic</a> | <a href="advance.fssai">Advance</a> | <a href="special.fssai">Special</a></P>
                      </div>
                        </div>
                  </li>
                      <li class="timeline-inverted">
                    <div class="timeline-badge success">2</div>
                    <div class="timeline-panel">
                          <div class="timeline-heading">
                        <h4 class="timeline-title">Step-2</h4>
                      </div>
                          <div class="timeline-body">
                        <p>Get Your Admit Card</p>
                      </div>
                        </div>
                  </li>
                      <li>
                    <div class="timeline-badge success">3</div>
                    <div class="timeline-panel">
                          <div class="timeline-heading">
                        <h4 class="timeline-title">Step-3</h4>
                      </div>
                          <div class="timeline-body">
                        <p>Attend Training</p>
                        <p><a href="">Online</a> | <a href="#">Classroom</a></p>
                      </div>
                        </div>
                  </li>
                      <li class="timeline-inverted">
                    <div class="timeline-badge success">4</div>
                    <div class="timeline-panel">
                          <div class="timeline-heading">
                        <h4 class="timeline-title">Step-4</h4>
                      </div>
                          <div class="timeline-body">
                        <p>Get Your Self Assessed</p>
                        <p><a href="#">Online</a> | <a href="#">In Physical Center</a></p>
                      </div>
                        </div>
                  </li>
                      <li>
                    <div class="timeline-badge success">5</div>
                    <div class="timeline-panel">
                          <div class="timeline-heading">
                        <h4 class="timeline-title">Step-5</h4>
                      </div>
                          <div class="timeline-body">
                        <p>Give Your Feedback</p>
                      </div>
                        </div>
                  </li>
                      <li class="timeline-inverted">
                    <div class="timeline-badge success">6</div>
                    <div class="timeline-panel">
                          <div class="timeline-heading">
                        <h4 class="timeline-title">Step-6</h4>
                      </div>
                          <div class="timeline-body">
                        <p>Get Your Certificate</p>
                      </div>
                        </div>
                  </li>
                    </ul>
              </div>
                </div>
          </div>
            </div>
      </div>
        </div>
  </div>
    </section>