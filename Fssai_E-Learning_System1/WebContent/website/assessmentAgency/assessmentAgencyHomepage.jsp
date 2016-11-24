<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content=" ">
    <title>Fotest</title>
    <!-- stylesheet -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/aos.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/owl.transitions.css" rel="stylesheet" />
    <link href="css/swipebox.css" rel="stylesheet" />
    <style>
        #news .item img {
            display: block;
            width: 100%;
            height: auto;
        }
    </style>
</head>

<body>
    <!-- logos -->
    <section>
        <div class="container-fluid">
            <nav class="navbar navbar-default navbar-fixed-top top-logo-background">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-6 fostac-logo-left">
                            <a href="#"><img src="img/fostac-logo.png" class="img-responsive fostac-logo-top-padding" alt="logo" /></a>
                        </div>
                        <div class="col-xs-6 fssai-logo-right">
                            <a href="#"><img src="img/fssai-logo.png" class="img-responsive pull-right" alt="logo" /></a>
                        </div>
                    </div>
                    <!--<div>
                        <ul class="nav navbar-nav">
                            <li><a href="#"><img src="img/fostac-logo.png" class="img-responsive" alt="logo" /></a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><img src="img/fssai-logo.png" class="img-responsive" alt="logo" /></a></li>
                        </ul>
                    </div>-->
                    <!--/.nav-collapse -->
                </div>
            </nav>
        </div>
    </section>
    <!-- horizontal navigation -->
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
                                    <li><a href="training-center-management.html">Assessor User Management</a></li>
                                    <li><a href="contact.html">Contact Us</a></li>
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
                        <li><a href="view-training-calendar.html">View Calendar</a></li>
                       
                        
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
                               <fieldset>
                                    <legend>Pending Assessor ID Activation</legend> 
                                   
                                    <table class="table-bordered table table-responsive table-hover">
                                        <thead>
                                            <tr class="background-open-vacancies">
                                                <td>S. No.</td>
                                                <td>Assessment Agency Name</td>
                                                <td>Number of Assessor IDs</td>
                                            </tr>
                                        </thead>
                                        <tbody><tr>
                                            <td>1</td>
                                            <td>Aspiring Minds</td>
                                            <td>
                                                <a href="dashboard-two.html">10</a>
                                            </td>
                                        </tr>
                                    </tbody></table>
                               </fieldset>                                    
                            </div>
                            
                         
                            <div class="col-md-2 hidden-xs"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- scripts -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <!-- on scroll animation -->
    <script src="js/aos.js"></script>
    <script>
        AOS.init();
    </script>
    <!-- carousel -->
    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#news").owlCarousel({
                navigation: false, // Show next and prev buttons
                slideSpeed: 300
                , paginationSpeed: 400
                , singleItem: true
                , autoPlay: true
                    // "singleItem:true" is a shortcut for:
                    // items : 1,
                    // itemsDesktop : false,
                    // itemsDesktopSmall : false,
                    // itemsTablet: false,
                    // itemsMobile : false
            });
        });
    </script>
    <!-- gallery -->
    <script src="js/jquery.swipebox.js"></script>
    <script type="text/javascript">
        ;
        (function ($) {
            $('.swipebox').swipebox();
        })(jQuery);
    </script>
    <!-- Menu Toggle Script -->
    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>
</body>

</html>