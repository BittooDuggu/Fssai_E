<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

<head>
<base href="<%=basePath%>">
    
    <title>Fostac E-Learning System</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FOSTAC - Food Safety Training and Certification</title>
<!-- core CSS -->
<link href="website/css/bootstrap.min.css" rel="stylesheet">
<link href="website/css/font-awesome.min.css" rel="stylesheet">
<link href="website/css/animate.min.css" rel="stylesheet">
<link href="website/css/main.css" rel="stylesheet">
<link href="website/css/responsive.css" rel="stylesheet">
<link href="website/css/monthly.css" rel="stylesheet" />
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<!--/head-->

<body class="homepage">

<header id="header">
  <div class="top-bar">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-xs-4">
          <div class="top-logo"><a href="index.html"><img class="img-responsive" src="website/images/fostac-logo.png" alt="Food Safety Training and Certification" title="Food Safety Training and Certification"></a> </div>
        </div>
        <div class="col-sm-6 col-xs-8">
          <div class="social">
            <div class="social-share"><a href="http://www.fssai.gov.in/" target="_blank"><img class="img-responsive" src="website/images/fssai-logo.jpg"></a></div>
          </div>
        </div>
      </div>
    </div>
    <!--/.container--> 
  </div>
  <!--/.top-bar-->
  
  <nav class="navbar navbar-inverse" role="banner">
    <div class="container">
      <div class="navbar-header">
        <button style="background:#000070;" type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="collapse navbar-collapse navbar-left text-center">
        <ul class="nav navbar-nav">
          <li class="active"><a href="fostac.fssai">HOME</a></li>
          <li><a href="about.fssai" >ABOUT</a></li>
          <li class="dropdown"> <a href="courses.html" class="dropdown-toggle" data-toggle="dropdown">COURSES <i class="fa fa-angle-down"></i></a>
            <ul class="dropdown-menu">
              <li><a href="basic-level.fssai">BASIC LEVEL</a></li>
              <li><a href="advance-level.fssai">ADVANCE LEVEL</a></li>
              <li><a href="special-level.fssai">SPECIAL LEVEL</a></li>
            </ul>
          </li>
          <li><a href="#">FAQ</a></li>
           <li><a href="contact.fssai">CONTACT</a></li>
          <li><a href="login.fssai">LOGIN</a></li>
        </ul>
        <div class="search">
          <form role="form" class="searchbar">
            <input type="text" class="search-form" autocomplete="off" placeholder="Search...">
            <i style="color:#71b44b;" class="fa fa-search"></i>
          </form>
        </div>
      </div>
    </div>
    <!--/.container--> 
  </nav>
  <!--/nav--> 
  
</header>
<!--/header-->
 
<section id="main-slider" class="no-margin">
  <div class="carousel slide">
    <div class="carousel-inner">
      <div class="item active header-bg" style="background-image: url(website/images/slider/bg1.jpg)">
        <div class="container">
          <div class="row slide-margin">
            <div class="col-sm-12">
              <div class="carousel-content">
                <h1 class="animation animated-item-1">Food Safety Training and Certification</h1>
                <h3 class="animation animated-item-3">WE ARE LOOKING FOR YOU!</h3>
                <h2 class="animation animated-item-2">REGISTER HERE</h2>
              </div>
            </div>
            <div class="col-sm-6 hidden-xs animation animated-item-4">
              <div class="slider-img"> </div>
            </div>
            <div class="circle-wrap center-block">
              <ul>
                <li><a href="trainee.fssai"><img src="website/images/trainee.png"></a>
                <li><a href="trainer.fssai"><img src="website/images/trainer.png"></a></li>
                <li><a href="trainingPartner.fssai"><img src="website/images/training-partner.png"></a></li>
                <li><a href="assessor.fssai"><img src="website/images/assessor.png"></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!--/.item--> 
      
      <!--/.item--> 
      
      <!--/.item--> 
    </div>
    <!--/.carousel-inner--> 
  </div>
  <!--/.carousel--> 
</section>
<!--/#main-slider-->

<section id="feature" >
  <div class="container">
    <div class="row">
      <div class="features">
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap"> <a href="freeFoodSafetyCertification.fssai"><img class="img-responsive center-block" src="website/images/fssai-certification-logo.jpg" width="132" height="87"></a>
            <h3><a href="freeFoodSafetyCertification.fassi">Free Training on<br>
              Food Safety</a></h3>
          </div>
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap feature-wrapbasic"> <a href="basic-level.fssai"><img class="img-responsive center-block" src="website/images/fssai-certification-logo.jpg" width="132" height="87"></a>
            <h3><a href="basic-level.fssai">Basic Food Safety <br>
              Certification</a></h3>
          </div>
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap feature-wrapadvance"> <a href="advance-level.fssai"><img class="img-responsive center-block" src="website/images/fssai-certification-logo.jpg" width="132" height="87"></a>
            <h3><a href="advance-level.fssai">Advance Food Safety <br>
              Certification</a></h3>
          </div>
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap"> <a href="special-level.fssai"><img class="img-responsive center-block" src="website/images/fssai-certification-logo.jpg" width="132" height="87"></a>
            <h3><a href="special-level.fssai">Special Food Safety <br>
              Certification</a></h3>
          </div>
        </div>
        <!--/.col-md-4-->         
      </div>
      <!--/.services--> 
    </div>
    <!--/.row--> 
  </div>
  <!--/.container--> 
</section>
<!--/#feature-->
<section id="feature" >
  <div class="container">
    <div class="row">
      <div class="course-heading">Courses</div>
      <div class="course-arrow"><img src="website/images/course-down-arroe.png" width="8" height="25"></div>
    </div>
    <div class="row">
      <div class="features">
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap course-bg"> <img class="img-responsive center-block" src="website/images/catering-sector.png" width="94" height="94">
            <h3 class="industry-heading">Catering</h3>
            <ul>
              <li><a href="basic-level.fssai">Basic Level</a></li>
              <li><a href="advance-level.fssai">Advance Level</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap course-bg"> <img class="img-responsive center-block" src="website/images/manufacturing-sector.png" width="94" height="94">
            <h3 class="industry-heading">Manufacturing</h3>
            <ul>
              <li><a href="basic-level.fssai">Basic Level</a></li>
              <li><a href="advance-level.fssai">Advance Level</a></li>
              <li><a href="special-level.fssai">Special Level</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-4-->        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap course-bg"> <img class="img-responsive center-block" src="website/images/transport-sector.png" width="94" height="94">
            <h3 class="industry-heading">Transport & Storage</h3>
            <ul>
              <li><a href="basic-level.fssai">Basic Level</a></li>
              <li><a href="advance-level.fssai">Advance Level</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap course-bg"> <img class="img-responsive center-block" src="website/images/retail-sector.png" width="94" height="94">
            <h3 class="industry-heading">Retail</h3>
            <ul>
              <li><a href="basic-level.fssai">Basic Level</a></li>
              <li><a href="advance-level.fssai">Advance Level</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-4-->         
      </div>
      <!--/.services--> 
    </div>
    <!--/.row--> 
  </div>
  <!--/.container--> 
</section>
<section id="feature" >
  <div class="container">
    <div class="row">
      <div class="features">
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="feature-wrap training-box center-block">
            <h3 class="box-heading">Find your Nearest Training Centre</h3>
            <div style="margin:10px 0px 0px 0px;"><img src="website/images/google-map.png" width="224" height="124"></div>
          </div>
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
         <a href="knowYourTrainingPartner.fssai"><div class="feature-wrap partner-box center-block">
            <h3 class="box-heading">Know our training partner</h3>
            <p>On the basis of your training need you can choose your training provider.</p>
          </div></a>
        </div>
        <!--/.col-md-4-->
        <!-- calendar -->
    
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">          
           <!--  <img src="website/images/calendar.png" width="224" height="124"> -->            
                 	<h4 class="text-capitalize">Training Calendar</h4>
                        
                            <div class="page">
                                <div style="width:100%; max-width:600px; display:inline-block;">
                                    <div class="monthly" id="mycalendar"></div>
                                </div>
                            </div>
                        
                
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-3 col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
         <a href="certificationProcess.fssai"><div class="feature-wrap assessor-box center-block">
            <h3 class="box-heading">certification Process</h3>
            <p>Fostac has FSSAI recognized assessor's to access & provide FSSAI validated certificate.</p>
          </div></a> 
        </div>
        <!--/.col-md-4--> 
        
      </div>
      <!--/.services--> 
    </div>
    <!--/.row--> 
  </div>
  <!--/.container--> 
</section>
<section id="bottom">
  <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <div class="widget center-block">
          <ul>
            <li><a href="fostac.fssai">Home</a></li>
            <li><a href="about.fssai">About</a></li>
            <li class="dropdown"> <a href="courses.html" class="dropdown-toggle" data-toggle="dropdown">Courses<i class="fa fa-angle-down"></i></a>
              <ul class="dropdown-menu">
                <li><a href="basic-level.fssai">Basic Level</a></li>
                <li><a href="advance-level.fssai">Advance Level</a></li>
                <li><a href="special-level.fssai">Special Level</a></li>
              </ul>
            </li>
            <li><a href="#">Risk & Solutions</a></li>
            <li><a href="#">Help</a></li>
            <li><a href="contact.fssai">Contact</a></li>
          </ul>
        </div>
      </div>
      <!--/.col-md-3-->      
      <div class="col-md-3 col-sm-6">
        <div class="widget center-block">
          <ul>
            <li><a href="disclaimer.fssai">Disclaimer</a></li>
            <li><a href="#">Archives</a></li>
            <li><a href="#">Useful Links</a></li>
            <li><a href="#">Faqs</a></li>
            <li><a href="feedback.fssai">Feedback</a></li>
          </ul>
        </div>
      </div>
      <!--/.col-md-3-->      
      <div class="col-md-3 col-sm-6">
        <div class="widget center-block text-center" style="border-right: none;">
          <ul>
            <li class="subscribe">Sign up for our mailing list to get latest updates and offers.
              <form action="#" id="form-subscribe">
                <div class="form-field">
                  <input type="email" placeholder="Email Address" id="email">
                  <input class="btn" type="submit" id="submit" value="Subscribe">
                </div>
              </form>
            </li>
            <li class="pd-top"> <a href="#" target="_blank"><img src="website/images/facebook.png" width="30" height="30"></a>&nbsp; <a href="#" target="_blank"><img src="website/images/twitter.png" width="30" height="30"></a>&nbsp; <a href="#" target="_blank"><img src="website/images/linkedin.png" width="30" height="30"></a> &nbsp;<a href="#" target="_blank"><img src="website/images/google-plus.png" width="32" height="32"></a></li>
          </ul>
        </div>
      </div>
      <!--/.col-md-3-->      
      <div class="col-md-3 col-sm-6">
        <div class="widget center-block text-center" style="border-right:none;">
          <ul>
            <li><a href="http://www.fssai.gov.in/" target="_blank"><img src="website/images/fssai.png" alt="FSSAI" width="151" height="86"></a></li>
          </ul>
        </div>
      </div>
      <!--/.col-md-3--> 
    </div>
  </div>
</section>
<!--/#bottom-->
<footer id="footer" class="midnight-blue">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 text-center">Design and Developed by &nbsp;<a href="http://www.zentechinfo.com/" target="_blank" style="color:#1c1b1b; text-decoration:underline;">Zentech Info Solutions Pvt. Ltd.</a> &copy; FSSAI 2016- All Right Reserved.</div>    </div>
  </div>
</footer>
<!--/#footer-->
<script src="website/js/jquery.js"></script> 
<script src="website/js/bootstrap.min.js"></script> 
<script src="website/js/jquery.isotope.min.js"></script> 
<script src="website/js/main.js"></script> 
<script src="website/js/wow.min.js"></script> 
<script src="website/js/monthly.js"></script> 
    <script type="text/javascript">
    $(window).load(function () {

        $('#mycalendar').monthly({
            mode: 'event',
            //jsonUrl: 'events.json',
            //dataType: 'json'
            xmlUrl: 'website/js/events.xml'
        });

        $('#mycalendar2').monthly({
            mode: 'picker',
            target: '#mytarget',
            setWidth: '250px',
            startHidden: true,
            showTrigger: '#mytarget',
            stylePast: true,
            disablePast: true
        });

        switch (window.location.protocol) {
            case 'http:':
            case 'https:':
                // running on a server, should be good.
                break;
            case 'file:':
                alert('Just a heads-up, events will not work when run locally.');
        }

    });
    </script>
    

</body>
</html>