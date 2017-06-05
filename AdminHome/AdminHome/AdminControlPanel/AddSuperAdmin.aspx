<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSuperAdmin.aspx.cs" Inherits="AdminHome.AdminControlPanel.AddSuperAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="../bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
        <script src="../Scripts/jquery-1.7.1.min.js"></script>
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            function ShowPreview(input) {
                if (input.files && input.files[0]) {
                    var ImageDir = new FileReader();
                    ImageDir.onload = function (e) {
                        $('#impPrev').attr('src', e.target.result);
                    }
                    ImageDir.readAsDataURL(input.files[0]);
                }
            }
        </script>
     <script type="text/javascript">
         $(function () {
             $("#txt").datepicker();
             $("#txtdob").datepicker();
         });
        </script>
    <style type="text/css">
        .form-control {
            min-width:100px;
            max-width:220px;
        }
       
    </style>
</head>
<body>
<form id="form1" runat="server">
<div class="row" style="height:80px;text-align:center;background-color:skyblue;font:bold;width:101%"><h2>Super Admin</h2></div>
<div class="container">
    <div style="text-align:center">
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Bold="true"></asp:Label>
    </div>
    
<div class="row">
    <div class="row"> <a href="AdminProfile.aspx"><span class="glyphicon glyphicon-backward"> Back To Admin Profile </span></a></div>
 <div class="col-lg-4" style="">
    
      <div class="row">
       <fieldset><legend>Details</legend>
            <table class="table">
                <tr><td>First Name:</td><td><input runat="server" id="txtfirstname" type="text" required="required" class="form-control"  /></td></tr>
                <tr><td>Last Name:</td><td><input runat="server" id="txtlastname" type="text" required="required" class="form-control"  /></td></tr>
                <tr><td>S/O:</td><td><input runat="server" id="txtfname" type="text" required="required" class="form-control"  /></td></tr>
                <tr><td>Age/DOB:</td><td><input runat="server" id="txtdob" type="text" required="required" class="form-control"  /></td></tr>
                <tr><td>Blood Group:</td><td><input runat="server" id="txtbld" type="text" required="required" class="form-control" /></td></tr>
                <tr><td>Designation:</td>
                    <td>
                         <asp:DropDownList runat="server" ID="dddesignation" CssClass="form-control">
                             <asp:ListItem>--Active Status--</asp:ListItem>
                             <asp:ListItem>Admin</asp:ListItem>
                             <asp:ListItem>SuperAdmin</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </fieldset>
  </div>
      <div class="row">
        <fieldset><legend >Education</legend>
             <table class="table">
                <tr><td>School:</td><td><input runat="server" id="txtschool" type="text" required="required" class="form-control"  /></td></tr>
                <tr><td>College:</td><td><input runat="server" id="txtcollege" type="text" required="required" class="form-control" placeholder="College with session" /></td></tr>
                <tr><td>Degree:</td><td><input runat="server" id="txtdegree" type="text" required="required" class="form-control" placeholder="Degree with session" /></td></tr>
            </table>
        </fieldset>
    </div>
 </div>
<div class="col-lg-4">
    <div class="row" style="">
        <fieldset><legend >Contact Me</legend>
            <table class="table">
                <tr><td>Email:</td><td><input runat="server" id="txtemail" type="text" required="required" class="form-control" /></td></tr>
                <tr><td>Phone:</td><td><input runat="server" id="txtphone" type="text" required="required" class="form-control" /></td></tr>
                <tr><td>Address:</td><td><input runat="server" id="txtaddress" type="text" required="required" class="form-control" /></td></tr>
            </table>
        </fieldset>
    </div>
     <div class="row" style="">
        <fieldset><legend >About Me</legend>
             <table class="table">
               <tr><td>Paragraph1:</td>
                   <td>
                       <textarea runat="server" id="txtarea1" class="form-control" style="resize:none;height:100px;"></textarea>
                   </td>
              </tr>
                 <tr>
                   <td>Paragraph2:</td>
                    <td>
                       <textarea runat="server" id="txtarea2" class="form-control" style="resize:none;height:100px;"></textarea>
                   </td>
                 </tr>
             </table>
        </fieldset>
    </div>
 </div>
     <div class="col-lg-3">
          <fieldset><legend >Profile</legend>
             <table class="table">
               <tr><td>ProfileImage:</td>
                   <td>
                       <asp:Image runat="server" ID="impPrev" CssClass="img-thumbnail" Width="120px" Height="140px" />
                       <asp:FileUpload runat="server" ID="imageupload" onchange="ShowPreview(this)" />
                   </td>
               </tr>
                 <tr>
                     <td><input type="text" runat="server"  placeholder="Enter UserName" class="form-control" id="txtusername" required="required" /></td>
                 </tr>
                 <tr>
                     <td><input type="password" runat="server" placeholder="Enter Password" id="txtpassword" style="font-weight:bold;font-size:large" class="form-control" required="required" /></td>
                 </tr>
                 <tr>
                     <td>
                         <asp:DropDownList runat="server" ID="ddlgender" CssClass="form-control">
                             <asp:ListItem>--Select Gender--</asp:ListItem>
                             <asp:ListItem>Male</asp:ListItem>
                             <asp:ListItem>Female</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:DropDownList runat="server" ID="ddstatus" CssClass="form-control">
                             <asp:ListItem>--Active Status--</asp:ListItem>
                             <asp:ListItem>Active</asp:ListItem>
                             <asp:ListItem>Deactivate</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
                  <tr>
                     <td><asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" /></td>
                     <td><asp:Button runat="server" ID="btnUpdate" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click" /></td>
                 </tr>
                 <tr>
             </table>
        </fieldset>
     </div>     
</div>

</div>
     
    </form>
    <div class="panel-footer" style="height:30px;background-color:black"></div>
</body>
    
</html>
