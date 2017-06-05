<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AdminHome.Dems.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Digital Education Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" href="img/fav-icon.png">
 <!-- fonts -->
        <!-- fontawesome -->
		<link rel="stylesheet" href="css/font-awesome.css" />
		
        <!-- bootstrap -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
        
        <!-- rev slider -->
        <link rel="stylesheet" href="css/rev-slider/settings.css" />     
        
        <!-- Theme -->
        <link rel="stylesheet" href="css/reset.css">
        
        <!-- custom css -->
		<link rel="stylesheet" href="css/style.css" />
        <!-- responsive -->
		<link rel="stylesheet" href="css/responsive.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->       
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body id="home_one">

<header class="header_area">  
  <div class="main_header_area">
  	
    <div class="container">      
      <div class="mainmenu">
        <div id="nav">
          <nav class="navbar navbar-default">           
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
              <div class="site_logo fix"> <a id="brand" class="clearfix navbar-brand border-right-whitesmoke" href="../AdminLogIn.aspx">
             
                   <img src="img/logo-img.png"  class="img-responsive"/>
                 
              </div>
            </div>           
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav"> 
                <li><a href="index.aspx">Home</a></li>
                <li><a href="about-us.aspx">About DEMS</a></li>
                <li><a href="event.aspx">Events</a></li>  
                <li><a href="news.aspx">News</a></li>            
                <li><a href="#contact-name">Contact Us</a></li>
              </ul>
            </div>            
          </nav>
        </div>
      </div>     
    </div>
  </div>  
</header>
<!-- end header --> 

<!-- start main slider -->
<div class="main_slider_area">
  <div class="main_slider" id="slider_rev">    
    <div class="fullwidthbanner-container" >
      <div class="fullwidth_home_banner">
        <ul>
          <li data-transition="random" data-slotamount="7" data-masterspeed="1000"> <img src="img/rev-slider/banner.jpg" class="img-responsive" alt="slide" >
            <div class="tp-caption large_black sfr slide-caption" data-x="105" data-y="197" data-speed="1200" data-start="1100" data-easing="easeInOutBack">
            	
                <h1>Digital Education For Colleges and Schools</h1>
                <p>Digital Education Helps to do the work smartly</p>
                
            </div>
          </li>
          <li data-transition="random" data-slotamount="7" data-masterspeed="1000"> <img src="img/rev-slider/banner1.jpg" class="img-responsive" alt="slide" >
            <div class="tp-caption large_black sfr slide-caption" data-x="105" data-y="197" data-speed="1200" data-start="1100" data-easing="easeInOutBack">
            	<h1>Digital Technology is in Whole World</h1>
                <p>MOstly in all feild Digital Technology is used</p>
                
            </div>
          </li>
          <li data-transition="random" data-slotamount="7" data-masterspeed="1000"> <img src="img/rev-slider/banner3.jpg" class="img-responsive" alt="slide" >
            <div class="tp-caption large_black sfr slide-caption" data-x="105" data-y="197" data-speed="1200" data-start="1100" data-easing="easeInOutBack">
            	<h1>Impact of Digital Technolopy on Higher  Education </h1>
                <p>It also impact in higher Education Institutions</p>
                
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- end main slider --> 


<!-- start welcome section -->
<section class="welcome_area">
  <div class="container">
    <div class="welcome">
      <div class="section_title nice_title content-center">
        <h3>Events of Digital Education</h3>
      </div>
      
      <div class="row srvic-home text-center">
      	<div class="col-md-4 col-sm-4 col-xs-12">
        	<img src="img/s1.jpg" class="img-responsive services-box" alt="">
            <h4>Class Websites</h4>
			<p> Teachers are able to use class websites or apps like Class Dojo to keep parents updated about school

!</p>
		<!--	<a href="#" class="read-more-btn-prctc">Read More</a>-->
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
        	<img src="img/s2.jpg" class="img-responsive services-box" alt="">
            <h4>Notification</h4>
			<p> Students are able to get Notification about their performance or any other activities!</p>
			<!--<a href="#" class="read-more-btn-prctc">Read More</a>-->
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
        	<img src="img/s3.jpg" class="img-responsive services-box" alt="">
            <h4>Educational websites</h4>
			<p> Get homework help or locate answers to difficult questions by Googling or seeking educational websites!</p>
			<!--<a href="#" class="read-more-btn-prctc">Read More</a>-->
        </div>
      </div>
      
      <div class="row srvic-home text-center">
      	<div class="col-md-4 col-sm-4 col-xs-12">
        	<img src="img/s4.jpg" class="img-responsive services-box" alt="">
            <h4>Pay Online</h4>
			<p>   Busy parents are able to pay Fees online. You can conveniently pay the Students Fees online!</p>
		<!--	<a href="#" class="read-more-btn-prctc">Read More</a>-->
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
        	<img src="img/s5.jpg" class="img-responsive services-box" alt="">
            <h4>Online Attendence</h4>
			<p>Students are able to attendence online from where they are!</p>
			<!--<a href="#" class="read-more-btn-prctc">Read More</a>-->
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
        	<img src="img/s6.jpg" class="img-responsive services-box" alt="">
            <h4>Online Examination</h4>
			<p>Students are able to give online Exam from where they are!</p>
		<!--<a href="#" class="read-more-btn-prctc">Read More</a>-->
        </div>
      </div>
    </div>
  </div>
</section>
<!-- end welcome section -->

<!-- start footer -->

<footer id="contact-name" class="footer_area">
  <div class="container footer-top">
  	<div class="row">
    	<div class="col-md-6">
        <div class="footer-txt">
        <h3>About DEMS</h3>
            <p>It is a dynamic system, which will completely digitize the traditional education system.
            Digital learning is an umbrella term that is often used to encompass a few other commonly used terms and concepts within our industry</p>
        </div>
        </div>
        
        <div class="col-md-6">
        <div class="open-hours">
        	<h3>Contact Us</h3>
            <ul>
            	<li><span>Address:</span>Noida (Reg. Office): G-76, Sector 63, Noida, U.P</li>
                <li><span>Phone:</span> +91 9870213748, 0120 4168755</li>
                <li><span>Email:</span>info@polyinfosoft.com</li>
            </ul>
        </div></div>
            </div>    
  </div>
  <div class="container-fluid">
  	<div class="row">
      <div class="footer_copyright content-center">
        <p>© 2016 Poly infotech Pvt. Ltd | All Rights Reserved</p>
        <!--go-top icons starts-->

<a id="back-to-top" href="#" title="" 
data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a>

<!--go-top icons ends-->
      </div>
    </div>

  </div>
</footer>

<!--social-icons starts-->
<aside id="sticky-social">
    <ul>
        <li><a runat="server" id="linkfacebook" href="#" class="entypo-facebook" target="_blank"><span>Facebook</span></a></li>
        <li><a runat="server" id="linkTwitter" href="#" class="entypo-twitter" target="_blank"><span>Twitter</span></a></li>
        <li><a runat="server" href="http://www.polyinfosoft.com/contact-us.php" class="entypo-gplus" target="_blank"><span>Google+</span></a></li>
        <li><a runat="server" id="linkLinkedIn" href="#" class="entypo-linkedin" target="_blank"><span>LinkedIn</span></a></li>

    </ul>
</aside>
    
<!--social-icons ends-->


<!-- jquery library --> 
<script src="js/vendor/jquery-1.11.2.min.js"></script> 
<!-- bootstrap --> 
<script src="js/bootstrap.min.js"></script> 
<!-- rev slider --> 
<script src="js/rev-slider/rs-plugin/jquery.themepunch.plugins.min.js"></script> 
<script src="js/rev-slider/rs-plugin/jquery.themepunch.revolution.js"></script> 
<script src="js/rev-slider/rs.home.js"></script> 
<!-- uikit --> 

<!-- end footer -->

    
</body>
</html>
