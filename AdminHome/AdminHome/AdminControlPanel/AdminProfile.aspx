<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="AdminHome.AdminControlPanel.AdminProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <style type="text/css">
        h2{ 
                   position: absolute; 
                   top: 30px; 
                   left: 0; 
                   color:white;
                   margin-left:50px;
            }
        .sp1 { 
                   position: absolute; 
                   top: 230px; 
                   left: 0; 
                   color:white;
                   margin-left:50px;
            }
         .sp2 { 
                   position: absolute; 
                   top: 280px; 
                   left: 0; 
                   color:white;
                   margin-left:50px;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="row" style="width:100%">
            <div class="row" style="position: relative;">
                <h2>Super Admin Profile</h2>
                 <asp:LinkButton runat="server" CssClass="sp1" OnClick="lnksetting_Click1" ID="lnksetting" Font-Size="XX-Large"><span class="glyphicon glyphicon-cog">Add Super Admin</span></asp:LinkButton>
                 <asp:LinkButton runat="server" CssClass="sp2" OnClick="lnknotify_Click" ID="lnknotify" Font-Size="XX-Large"><span class="glyphicon glyphicon-envelope">  Send Notification</span></asp:LinkButton>
                     <img runat="server" src="~/ImageIcones/personal-7.jpg" style="width:100%;max-height:350px;" class="img-responsive" />
            </div>
            <div class="row">
                <asp:LinkButton runat="server" OnClick="Unnamed_Click" ForeColor="White">
                    <div class="col-lg-2" style="float:right;margin-top:-70px;">
                    <asp:Image ID="imgprofile" CssClass="img-circle" ImageUrl="~/ImageIcones/Teachers-icon.png" BackColor="Black" Width="110px" Height="120px" runat="server" BorderStyle="Solid"/>
                    <label style="margin-left:5px;">Profile Update</label>
                </div>
                </asp:LinkButton>
                
                <div class="col-lg-7" style="margin-left:40px;">
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">About Me</a></li>
                <li><a data-toggle="tab" href="#menu1">Contact Me</a></li>
                <li><a data-toggle="tab" href="#menu2">Education</a></li>
                <li><a data-toggle="tab" href="#menu3">Details</a></li>
             </ul>
                <div class="tab-content">
                     <div id="home" class="tab-pane fade in active">
                         <h3>About Us</h3>
                          <ul style="list-style-type:disc;font-size:medium;font-weight:bold">
                               <li><p runat="server" id="p1">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></li>
                               <li><p runat="server" id="p2">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></li>

                          </ul>
                          
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Contact Me</h3>
                        <ul style="font-weight:bold;margin:40px;font-size:large">
                            <li><span>Email      :</span><asp:Label ID="lblemail" runat="server" Text="troshan23@gmail.com"></asp:Label></li>
                            <li><span>Phone      :</span><asp:Label ID="lblphone" runat="server" Text="9716526132"></asp:Label></li>
                            <li><span>Address    :</span><asp:Label ID="lbladdress" runat="server" Text="1546,Arthala,Mohan Nagar Ghaziabad"></asp:Label></li>
                        </ul>
                       
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Education/Qualification</h3>
                          <ul style="font-weight:bold;margin:40px;font-size:large">
                            <li><span>School    :</span><asp:Label ID="lblschool" runat="server" Text="troshan23@gmail.com"></asp:Label></li>
                            <li><span>College   :</span><asp:Label ID="lblcollege" runat="server" Text="9716526132"></asp:Label></li>
                            <li><span>Degree    :</span><asp:Label ID="lbldegree" runat="server" Text="1546,Arthala,Mohan Nagar Ghaziabad"></asp:Label></li>
                        </ul>
                        </div>
                    <div id="menu3" class="tab-pane fade">
                        <h3>Details</h3>
                        <ul style="font-weight:bold;margin:40px;font-size:large">
                            <li><span>Name          :</span><asp:Label ID="lblname" runat="server" Text="troshan23@gmail.com"></asp:Label></li>
                            <li><span>Age/DOB       :</span><asp:Label ID="lblage" runat="server" Text="9716526132"></asp:Label></li>
                            <li><span>Father's Name :</span><asp:Label ID="lblfname" runat="server" Text="1546,Arthala,Mohan Nagar Ghaziabad"></asp:Label></li>
                            <li><span>BloodGroup    :</span><asp:Label ID="lblbld" runat="server" Text="1546,Arthala,Mohan Nagar Ghaziabad"></asp:Label></li>
                            <li><span>Designation   :</span><asp:Label ID="lbldesig" runat="server" Text="1546,Arthala,Mohan Nagar Ghaziabad"></asp:Label></li>
                        </ul>
                    </div>
               </div>
            </div>
               
            </div>
            <div class="row" style="text-align:center">
                <asp:Label runat="server" ID="lblmsg" Font-Bold="true" ForeColor="Red"></asp:Label>
            </div>
            <div class="row" id="divNotify" runat="server" visible="false">
                
            <div class="col-lg-6" style="margin-left:20px;" >
                <fieldset><legend style="font-weight:bold;color:red;margin-left:10px;margin-bottom:30px;">Notification To Teacher/Staff</legend></fieldset>
                <textarea id="txtnotification" runat="server" placeholder="Notification Type Here..." class="form-control" style="resize:none;height:100px;width:50%"></textarea>
                
           </div>
                <div class="col-lg-2" style="margin-left:5px;">
                    <asp:Button runat="server" ID="btnnotification" CssClass="btn btn-primary" Text="Post Notification" OnClick="btnnotification_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
