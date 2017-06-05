<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="AdminHome.Dems._event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Law Firm | About Us</title>
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
    
<!-- start header -->

<header class="header_area">
  <div class="main_header_area">
    <div class="container">
      <div class="mainmenu">
        <div id="nav">
          <nav class="navbar navbar-default">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
              <div class="site_logo fix"> <a id="brand" class="clearfix navbar-brand border-right-whitesmoke" href="index.aspx">
                  <img src="img/logo-img.png" alt="Trips"></a> </div>
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

<!-- Start Inner Banner Top -->
<section class="inner-top-banner">
  <div class="container-fluid-1"> <img src="img/event-banner.jpg" class="img-responsive" alt="">
    <div class="row">
      <div class="col-md-9 col-md-offset-3 col-sm-6 col-sm-offset-5">
        <div class="inner-banner-caption">
          <h1>Digital Events</h1>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- end Inner Banner Top --> 

<!-- start description section -->
<section class="about-descrptn-section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
          <li class="breadcrumb-item active">Events</li>
        </ol>
      </div>
    </div>
    <div class="about-description">
      <div class="col-md-4 col-sm-4 col-xs-12"> <img src="img/s1.jpg" class="img-responsive" alt=""> </div>
      <div class="col-md-8 col-sm-8 col-xs-12 text-justify">
        <h1>Class Websites</h1>
        <p> Teachers are able to use class websites or apps like Class Dojo to keep parents updated about school.Parents can see the performance of their children and also about the study material of their courses.At Class Websites all the Information about the Class are available.So there will be no need to go to the school or colleges to know about their children information.
</p>
      </div>
      
      <div class="col-md-8 col-sm-8 col-xs-12 text-justify">
        <h1>Notification</h1>
        <p runat="server" id="divEvents"> </p>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12"> <img src="img/s2.jpg" class="img-responsive" alt=""> </div>
      </div>
      
      <div class="about-description">
      <div class="col-md-4 col-sm-4 col-xs-12"> <img src="img/s3.jpg" class="img-responsive" alt=""> </div>
      <div class="col-md-8 col-sm-8 col-xs-12 text-justify">
        <h1>Educational Websites</h1>
        <p>In the field of educational technology, some apps might be getting too smart.
More and more apps are delivering on-demand homework help to students, who can easily re-purpose the learning tools to obtain not just assistance, but also answers.While the software has inspired teachers to create real-world homework problems that can't be automatically solved, that strategy doesn't hold up to other apps that tap into real-life brains for solutions.</p>
      </div>
      
      <div class="col-md-8 col-sm-8 col-xs-12 text-justify">
        <h1>Pay Online</h1>
        <p>Pay your fees on Paytm and experience a convenient & secure fees payment process! We aim at providing easy and quick solution to millions of students and their parents in India. Now you’re not required to wait in long queues or stand for hours to deposit your school or college fees, instead you can PaytmKaro from the comfort of your home. Pay on Paytm using your preferred payment mode - ATM/Debit Card, Credit Card, Net banking & Paytm Wallet. </p>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12"> <img src="img/s4.jpg" class="img-responsive" alt=""> </div>
      </div>
      
      
      <div class="about-description">
      <div class="col-md-4 col-sm-4 col-xs-12"> <img src="img/s5.jpg" class="img-responsive" alt=""> </div>
      <div class="col-md-8 col-sm-8 col-xs-12 text-justify">
        <h1>Online Attendence</h1>
        <p>Despite the fact that teachers are not able to see your student sitting in a real-time classroom, they still need to verify that he or she is present within the virtual classroom. Physical existence is measured by logged contacts with the school. For instance, each time the student communicates with the school, the conversation is documented and logged in the system. The school also looks at the time between the present day and the most recent synchronous contact, such as a phone call, that they’ve had with the student. This is one of the only methods of attendance monitoring that can be initiated at the school. </p>
      </div>
      
      <div class="col-md-8 col-sm-8 col-xs-12 text-justify">
        <h1>Online Examination</h1>
        <p runat="server" id="p1Events"> System is a web application that establishes a network between the institutes and
                                        the students. Institutes enter on the site the questions they want in the exam. These questions are
                                        displayed as a test to the eligible students. The answers enter by the students are then evaluated
                                        and their score is calculated and saved. This score then can be accessed by the institutes to
                                        determine the passes students or to evaluate their performance. 

        </p>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12"> <img src="img/s6.jpg" class="img-responsive" alt=""> </div>
      </div>
     
    
  </div>
</section>
<!-- end descriptio section --> 

<!-- start footer -->

<footer  id="contact-name" class="footer_area">
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
        <li><a href="#" class="entypo-facebook" target="_blank"><span>Facebook</span></a></li>
        <li><a href="#" class="entypo-twitter" target="_blank"><span>Twitter</span></a></li>
        <li><a href="#" class="entypo-gplus" target="_blank"><span>Google+</span></a></li>
        <li><a href="#" class="entypo-linkedin" target="_blank"><span>LinkedIn</span></a></li>

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

</body>
</html>
