<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomeTable.aspx.cs" Inherits="AdminHome.AdminControlPanel.AdminHomeTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <%--<link href="bootstrap.3.3.7/content/Content/mybootstrap.css" rel="stylesheet" />--%>
    <link href="../bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../bootstrap.3.3.7/MycssTableHover.css" rel="stylesheet" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../bootstrap.3.3.7/MyjavaScriptTableHover.js"></script>
    <link href="../bootstrap.3.3.7/myChatboxcss.css" rel="stylesheet" />  
    <script  type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--<link href="bootstrap.3.3.7/DigitalClock/css/main.css" rel="stylesheet" />--%>
    <link media="screen" href="../bootstrap.3.3.7/DigitalClock/css/main.css"  rel="stylesheet" />         
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="NavHeader.aspx"/>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
    $(function () {
        $("#NavHeader").load("NavHeader.html");
        $("#footer").load("footer.html");
    });
</script> 
<style type="text/css">   
    .center {
    margin: auto;
    width: 60%;
    /*//border: 3px solid #73AD21;*/
    padding: 10px;
}            
</style>
</head>
<body>
    <form id="form1" runat="server">
        <%--   <div class="row"  style="margin:5px;height:100%;">
                        <img src="../ImageIcones/AdminHeaderImage.jpg" class="img-responsive" style="width:100%;max-height:120px;" />
           </div>--%>

        <%-- Contenet Div Start --%>
        <div class="container">
            <div class="row" style="text-align:center">
                <a style="color:white;font-size:large" href="../Dems/index.aspx"><span class="glyphicon glyphicon-backward"> GO TO DEMS Website</span> </a>
            </div>
            <div class="center" style="margin-bottom:1px;">
            <div class="round hollow" style="float:left;margin-left:8%;"><asp:LinkButton runat="server" ID="lnkprofile" OnClick="lnkprofile_Click"><span class="glyphicon glyphicon-user" style="font-size:medium"> Admin </span></asp:LinkButton></div>
            <div class="round hollow" style="float:left;margin-left:8%;"><asp:LinkButton runat="server" ID="lnkAdd" OnClick="lnkAdd_Click"><span class="glyphicon glyphicon-cog" style="font-size:medium"> Setting </span></asp:LinkButton></div>
            <div class="round hollow" style="float:right;margin-right:8%;"><a href="#" id="addClass"><span class="glyphicon glyphicon-comment" style="font-size:medium"> ChatBox </span></a></div>
            <div class="round hollow" style="float:right;margin-right:5%"><asp:LinkButton runat="server" OnClick="a1_Click" id="a1"><span class="glyphicon glyphicon-log-out" style="font-size:medium">  SignOut</span></asp:LinkButton></div>
        </div>  
        </div>
<div class="container">                   
<div class="acadeic"> 
<div class="row">               
<ul class="pricing_table">
    <div class="col-md-3">
        <li class="price_block">
            <h3>Academic</h3>
            <div class="price">
                <div class="price_figure">
                 <span class="price_number">All Academic Task Processing Modules</span>
                </div></div>            
            <ul class="features">
                <li><a href="../AccademicManagement/HomeStudentAccademic.aspx"></a>
                    <a href="../AccademicManagement/HomeStudentAccademic.aspx">Student</a></li>                                                                             
                <li><a href="url_name"></a>                                                           
                    <a href="../OriginalAttandenceSystem/AttandanceHome.aspx">Attendence </a> </li>                   
                <li><a href="url_name"></a>
                    <a href="../ExaminationModules/HomeExamination.aspx">Examination</a> </li>                                              
                <li><a href="url_name"></a>
                    <a href="#"> Routine</a></li>                                             
                <li><a href="url_name"></a>
                    <a href="../GuidTeacherManagement/HomeGuidTeacher.aspx">Guide Teacher</a> </li> </ul>                                                                                  
          </li></div>
    <div class="col-md-3">
        <li class="price_block">
            <h3>Administration</h3>
            <div class="price">
                <div class="price_figure">
                    <span class="price_number">All Adminstration Task Processing </span>
                    <span class="price_tenure">Modules</span> </div></div>               
            <ul class="features">
                <li><a href="url_name"></a>
                    <a href="#">Finance</a></li>                                           
                <li><a href="url_name"></a>
                    <a href="../HumanResorceView/HumanResorcehome.aspx">Human Resouuce</a></li>                                                  
                <li><a href="url_name"></a>
                    <a href="../ControlPanelDiv/HomeControl.aspx"> Control panel</a></li>                                           
                <li><a href="url_name"></a>  <a href="../AdminSettingView/SettingHome.aspx">Setting</a></li>                                                         
                <li><a href="url_name"></a>  <a href="../WebsiteControl/WebsiteMaintanance.aspx">Website</a></li></ul>                                                        
           
           <!--     <a href="#" class="action_button">Buy Now</a>-->
            </li></div>
    <div class="col-md-3">
        <li class="price_block">
            <h3>Report</h3>
            <div class="price">
                <div class="price_figure">
                    <span class="price_number">All Report Processing</span>
                    <span class="price_tenure"> Modules</span>
                </div></div>
            <ul class="features">
                <li><a href="url_name"></a><a href="../AccademicManagement/HomeStudentInfoReport.aspx">Students Info</a></li>
                <li><a href="url_name"></a><a href="../HumanResorceView/HomeReportStaff.aspx">Staff or Faculty</a></li>
                <li><a href="url_name"></a><a href="#">Routine</a></li>
                <li><a href="url_name"></a><a href="../OriginalAttandenceSystem/AttandanceReportDiv.aspx">Attendence</a></li>
                <li><a href="url_name"></a><a href="../ExaminationModules/ReportHome.aspx">Examination</a></li></ul>
            
            <%--    <a href="#" class="action_button">Buy Now</a>--%>
           </li></div>
    <div class="col-md-3">
        <li class="price_block">
            <h3>Notification</h3>
            <div class="price">
                <div class="price_figure">
                    <span class="price_number">SMS,Email,Notices Processing </span>
                    <span class="price_tenure"> Modules</span></div></div>
            <ul class="features">
                <li><a href="url_name"></a>
                    <a href="../Notifications/Notificationform.aspx" onclick="return myFunction();">Today's Absent Students</a></li>
                <li><a href="../Notifications/Notificationform.aspx"></a><a href="../Notifications/Notificationform.aspx" onclick="return myFunction();">Fail Students List </a></li>
                <li><a href="../Notifications/Notificationform.aspx"></a><a href="../Notifications/Notificationform.aspx" onclick="return myFunction();">Notice</a></li>
                <li><a href="../Notifications/Notificationform.aspx"></a><a href="../Notifications/Notificationform.aspx" onclick="return myFunction();">Greeting</a></li>
                <li><a href="../Notifications/Notificationform.aspx"></a> <div class="dropdown"> <a href="../Notifications/Notificationform.aspx" onclick="return myFunction();">Template</a>                    
            </div></li>
            </ul></li></div></ul>  
            </div> </div></div>
        <%-- Contenet Div End --%>  
        <div class="center">
            <div class="social" style="margin-left:40%;min-width:180px;">
                <ul style="list-style-type:none;" >
                    <li style="float:left;"><a href="https://twitter.com/troshan23"> <i class="fa fa-twitter-square fa-3x fa-spin" style="color:white;"></i></a></li>                                                                     
                    <li style="float:left;"><a href="https://www.facebook.com/anuradha.saini.735"><i class="fa fa-facebook-official fa-3x fa-spin" style="color:white"></i></a></li>     
                    <li style="float:left;"><a href="https://plus.google.com/u/0/113827218998868881254"><i class="fa fa-google-plus-square fa-3x fa-spin" style="color:white"></i></a></li> 
                    <li style="float:left;"><a href="https://www.linkedin.com/in/roshan-thakur-32a72a120/"><i class="fa fa-linkedin-square fa-3x fa-spin" style="color:white"></i></a></li>
                     <li style="float:left;"><a href="https://mail.google.com/mail/u/0/#inbox"><i class="fa fa-envelope-square fa-3x fa-spin" style="color:white"></i></a></li>  
                </ul>
            </div>   
            
        </div>  
         
        <%-- Chat Box Start --%>
                <div class="container text-center">
	<div class="row">	
       </div></div>
            <div class="popup-box chat-popup" id="qnimate" >
    		  <div class="popup-head" >
				<div class="popup-head-left pull-left" >
                    <img src="../ImageIcones/Admin-icon.png" alt="AnuSaini" /> Anuradha Saini</div>
					  <div class="popup-head-right pull-right">
						<div class="btn-group">
    								  <button class="chat-header-button"  type="button" >
									   <i class="glyphicon glyphicon-cog"></i> </button>
									   <ul  class="dropdown-menu pull-right">
										<li><a href="#">Media</a></li>
										<li><a href="#">Block</a></li>
										<li><a href="#">Clear Chat</a></li>
										<li><a href="#">Email Chat</a></li>		</ul></div>						
						<button  id="removeClass" class="chat-header-button pull-right" type="button">
                            <i class="glyphicon glyphicon-off"></i></button>
                      </div></div>
			<div class="popup-messages">    											
			<div class="direct-chat-messages">                    					
					<div class="chat-box-single-line">
								<abbr class="timestamp">Apirl 5 2017</abbr>
					</div>										
					<!-- Message. Default to the left -->
                    <div class="direct-chat-msg doted-border">
                      <div class="direct-chat-info clearfix">
                        <span class="direct-chat-name pull-left">Anuradha</span>
                      </div>
                      <!-- /.direct-chat-info -->
 <img alt="message user image" src="../ImageIcones/TeachersImages.jpg" class="direct-chat-img"/><!-- /.direct-chat-img -->
                      <div class="direct-chat-text">
                        Hey, how’s everything going ?
                      </div>
					  <div class="direct-chat-info clearfix">
                        <span class="direct-chat-timestamp pull-right">3.36 PM</span>
                      </div>
						<div class="direct-chat-info clearfix">
						<span class="direct-chat-img-reply-small pull-left">
							
						</span>
						<span class="direct-chat-reply-name">Roshan</span>
						</div>
                      <!-- /.direct-chat-text -->
                    </div>
                    <!-- /.direct-chat-msg -->										
					<div class="chat-box-single-line">
						<abbr class="timestamp">April 9th, 2017</abbr>
					</div>													
					<!-- Message. Default to the left -->
                 <div class="direct-chat-msg doted-border">
                      <div class="direct-chat-info clearfix">
                        <span class="direct-chat-name pull-left">Anuradha</span>
                      </div>
                      <!-- /.direct-chat-info -->
 <img alt="message user image" src="../ImageIcones/Admin-icon.png" class="direct-chat-img"/><!-- /.direct-chat-img -->
                      <div class="direct-chat-text">
                        Hey, how’s everything going ?
                      </div>
					  <div class="direct-chat-info clearfix">
                        <span class="direct-chat-timestamp pull-right">3.36 PM</span>
                      </div>
						<div class="direct-chat-info clearfix">
						<span class="direct-chat-img-reply-small pull-left">
							
						</span>
						<span class="direct-chat-reply-name">Roshan</span>
						</div>
                      <!-- /.direct-chat-text -->
                    </div>                  
                    <!-- /.direct-chat-msg -->	 </div>																											
			</div>
			<div class="popup-messages-footer">
			<textarea id="status_message"  rows="10" cols="40" name="message"></textarea>
			<div class="btn-footer">
			<button class="bg_none"><i class="glyphicon glyphicon-film"></i> </button>
			<button class="bg_none"><i class="glyphicon glyphicon-camera"></i> </button>
            <button class="bg_none"><i class="glyphicon glyphicon-paperclip"></i> </button>
			<button class="bg_none pull-right"><i class="glyphicon glyphicon-thumbs-up"></i> </button>
			</div>
			</div>
	  </div>     
        <%--ChAT bOX eND  --%>     
    </form>
     <%-- Footer Div --%>   
  <div class="footer">
  <div class="container">
  <div class="col-md-4">
  <div class="date"><p id="demo"></p>
  <h2 style="color: #fff;"><strong></strong></h2>
  </div>
  </div>  
  <div class="col-md-4">
  <div class="time">
 <h2 style="color: #fff;">
     <body onload="startTime()">
<div id="txt"></div></h2>
  </div>
  </div>  
  <div class="col-md-4">
  <div class="titel_name">
  <h2 style="color: #fff;"><strong>RD Engineering Collage</strong></h2>
  </div>
  </div>
  </div>
  </div>
     
</body>
     <script type="text/javascript">
         function startTime() {
             var today = new Date();
             var h = today.getHours();
             var m = today.getMinutes();
             var s = today.getSeconds();
             m = checkTime(m);
             s = checkTime(s);
             document.getElementById('txt').innerHTML =
             h + ":" + m + ":" + s;
             var t = setTimeout(startTime, 500);
         }
         function checkTime(i) {
             if (i < 10) { i = "0" + i };  // add zero in front of numbers < 10
             return i;
         }
</script>
    <script type="text/javascript">
        var d = new Date();
        document.getElementById("demo").innerHTML = d.toDateString();
</script>   
</html>
