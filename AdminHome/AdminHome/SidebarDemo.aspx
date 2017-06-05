﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SidebarDemo.aspx.cs" Inherits="AdminHome.SidebarDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.3.3.7/SidebarBootstrap.css" rel="stylesheet" />
    
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
      <div id="wrapper">
 <!-- Sidebar -->
 
 
 <div id="sidebar-wrapper">
 <br /> 
 <ul class="sidebar-nav">
 <div style="text-align: center; background-image:url(Images/bg.jpg);height:170px;">
 
 <br />
 
 <asp:Image runat="server" ImageUrl="~/Images/hitesh.png"
 ID="profileimg" />
 </div>
 <li class="sidebar-brand"><a href="#">Start Bootstrap </a></li>
 <br /> 
 
 <li><a href="Music.aspx"><span class="glyphicon glyphicon-music"></span>&nbsp;&nbsp;Music</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Search</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Contacts</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;Delete it!</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-cloud"></span>&nbsp;&nbsp;Cloud</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-refresh"></span>&nbsp;&nbsp;Refresh</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;Printing</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;Logout !!!!</a>
 </li>
 </ul>
 </div>
 <!-- /#sidebar-wrapper -->
 <!-- Page Content -->
 <div id="page-content-wrapper">
 <div class="container-fluid">
 <div class="row">
 <div class="col-lg-12">
 <h1>
 Simple Sidebar</h1>
 <p>
 This template has a responsive menu toggling system. The menu will appear collapsed
 on smaller screens, and will appear non-collapsed on larger screens. When toggled
 using the button below, the menu will appear/disappear. On small screens, the page
 content will be pushed off canvas.
 <%--This is a modified Page by Parallelcodes.com. To view the original style-sheet and original post please visit : 
SOURCE http://startbootstrap.com/template-overviews/simple-sidebar
GITHUB URL https://github.com/IronSummitMedia/startbootstrap-simple-sidebar
 --%>
 </p>
 <p>
 Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
 <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
 <br />
 </div>
 </div>
 </div>
 </div>
 <!-- /#page-content-wrapper -->
 </div>
 <!-- /#wrapper -->
 <!-- jQuery -->

 <script src="js/jquery.js"></script>

 <!-- Bootstrap Core JavaScript -->

 <script src="js/bootstrap.min.js"></script>

 <!-- Menu Toggle Script -->

 <script>
     $("#menu-toggle").click(function (e) {
         e.preventDefault();
         $("#wrapper").toggleClass("toggled");
     });
 </script>
<div id="Div1">
 <!-- Sidebar -->
 
 
 <div id="Div2">
 <br /> 
 <ul class="sidebar-nav">
 <div style="text-align: center; background-image:url(Images/bg.jpg);height:170px;">
 
 <br />
 
 <asp:Image runat="server" ImageUrl="~/Images/hitesh.png"
 ID="Image1" />
 </div>
 <li class="sidebar-brand"><a href="#">Start Bootstrap </a></li>
 <br /> 
 
 <li><a href="Music.aspx"><span class="glyphicon glyphicon-music"></span>&nbsp;&nbsp;Music</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Search</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Contacts</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;Delete it!</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-cloud"></span>&nbsp;&nbsp;Cloud</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-refresh"></span>&nbsp;&nbsp;Refresh</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;Printing</a>
 </li>
 <li><a href="#"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;Logout !!!!</a>
 </li>
 </ul>
 </div>
 <!-- /#sidebar-wrapper -->
 <!-- Page Content -->
 <div id="Div3">
 <div class="container-fluid">
 <div class="row">
 <div class="col-lg-12">
 <h1>
 Simple Sidebar</h1>
 <p>
 This template has a responsive menu toggling system. The menu will appear collapsed
 on smaller screens, and will appear non-collapsed on larger screens. When toggled
 using the button below, the menu will appear/disappear. On small screens, the page
 content will be pushed off canvas.
 <%--This is a modified Page by Parallelcodes.com. To view the original style-sheet and original post please visit : 
SOURCE http://startbootstrap.com/template-overviews/simple-sidebar
GITHUB URL https://github.com/IronSummitMedia/startbootstrap-simple-sidebar
 --%>
 </p>
 <p>
 Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
 <a href="#menu-toggle" class="btn btn-default" id="A1">Toggle Menu</a>
 <br />
 </div>
 </div>
 </div>
 </div>
 <!-- /#page-content-wrapper -->
 </div>
 <!-- /#wrapper -->
 <!-- jQuery -->

 <script src="js/jquery.js"></script>

 <!-- Bootstrap Core JavaScript -->

 <script src="js/bootstrap.min.js"></script>

 <!-- Menu Toggle Script -->

 <script>
     $("#menu-toggle").click(function (e) {
         e.preventDefault();
         $("#wrapper").toggleClass("toggled");
     });
 </script>

    </form>
</body>
</html>
