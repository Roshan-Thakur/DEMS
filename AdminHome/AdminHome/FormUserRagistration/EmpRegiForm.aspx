<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="EmpRegiForm.aspx.cs" Inherits="AdminHome.FormUserRagistration.EmpRegiForm" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
     <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="../bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
   <script type="text/javascript">
       $(function () {
           $(".txt").datepicker();
           $(".txtdob").datepicker();
       });
</script>
<style type="text/css">
.ui-datepicker { font-size:8pt !important}
</style>
  <script type="text/javascript">
      function ShowPreview(input) {
          if (input.files && input.files[0]) {
              var ImageDir = new FileReader();
              ImageDir.onload = function (e) {
                  $('.impPrev').attr('src', e.target.result);
              }
              ImageDir.readAsDataURL(input.files[0]);
          }
      }
    </script>
    <%--<form id="form1" runat="server">--%>
        <div class="row">
            <div class="row">
                <div class="col-lg-3" style="text-align:center"></div>
                <div class="col-lg-4" style="text-align:center;font-weight:bold;margin-bottom:10px;">
                <span>Type:</span><asp:Label runat="server" ID="lblmsg"></asp:Label>
                </div>
               
            </div>
           
            <div class="col-lg-4">
               <asp:Table ID="Table1" runat="server" CssClass="table">
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Card/Index Number:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtnumber"  runat="server" ReadOnly="true" CssClass="form-control" Width="150px"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Name*:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Width="150px" ></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is Requires" ControlToValidate="txtname" ID="rqdname" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Father's Name*:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" Width="150px" ></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="S/o is Requires" ControlToValidate="txtfname" ID="rqdfname" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Address*:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <textarea runat="server" id="txtxaddres" style="resize:none" CssClass="form-control" Width="150px"  cols="20" rows="2"></textarea>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="Address is Requires" ControlToValidate="txtxaddres" ID="rqdaddres" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Department:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList ID="ddldept" CssClass="form-control" Width="150px" DataTextField="department" runat="server"></asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Phone:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txttell" runat="server" CssClass="form-control" Width="150px" ></asp:TextBox>
                           <asp:RegularExpressionValidator ID="rglphone" runat="server" 
                             ErrorMessage="Mobile number should be 10 digit!" Text="*" ControlToValidate="txttell"
                             ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Religion:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                          <asp:DropDownList runat="server" CssClass="form-control" Width="150px" DataTextField="religion" ID="ddlreligion"></asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Status:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlstatus" CssClass="form-control" Width="150px" >
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem Text="Parmanent"></asp:ListItem>
                               <asp:ListItem Text="Temporary"></asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Shift:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlshift" CssClass="form-control" Width="150px" >
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem Text="Morning"></asp:ListItem>
                               <asp:ListItem Text="Evening"></asp:ListItem>
                               <asp:ListItem Text="Both"></asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                  
               </asp:Table>
              </div>
            <div class="col-lg-4">
               <asp:Table ID="Table2" runat="server" CssClass="table">
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Email:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Width="150px" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Email is Requires" ControlToValidate="txtemail" ID="rqdemail" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Joining Date:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txt" runat="server" CssClass="form-control txt" Width="150px" />
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Gender*:</span>
                       </asp:TableCell><asp:TableCell>
                          <asp:DropDownList runat="server" ID="ddlgender" CssClass="form-control" Width="150px" >
                              <asp:ListItem Text="--Select--"></asp:ListItem>
                              <asp:ListItem Text="Male"></asp:ListItem>
                              <asp:ListItem Text="Female"></asp:ListItem>
                              <asp:ListItem Text="Other"></asp:ListItem>
                          </asp:DropDownList>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="Gender is Requires" ControlToValidate="ddlgender" ID="rqdgender" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Mother's Name</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:TextBox ID="txtmotname" runat="server" CssClass="form-control" Width="150px" ></asp:TextBox>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Marital Status*:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="150px" ></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="Merital is Requires" ControlToValidate="TextBox1" ID="rqdmerrt" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Blood Group:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlblood" DataTextField="bloodgrp" CssClass="form-control" Width="150px" ></asp:DropDownList>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Designation:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddldesig" CssClass="form-control" Width="150px"></asp:DropDownList>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Date Of Birth*:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:TextBox ID="txtdob" runat="server" CssClass="form-control txt" Width="150px" ></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="DOB is Requires" ControlToValidate="txtdob" ID="rqddob" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Last Degree:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList ID="ddldegree" runat="server" CssClass="form-control" Width="150px"></asp:DropDownList>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Nationalities:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlnation" CssClass="form-control" Width="150px" >
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem Text="Indian"></asp:ListItem>
                               <asp:ListItem Text="Foreigner"></asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell></asp:TableRow>
               </asp:Table>
                  </div>
            <div class="col-lg-2">
                 <asp:RadioButtonList ID="rdchange" runat="server"  CssClass="btn-group-vertical" AutoPostBack="true" OnSelectedIndexChanged="rdchange_SelectedIndexChanged">
                 <asp:ListItem ID="employee" runat="server" Value="Employee" Selected="True" Text=" Employee" />
                 <asp:ListItem ID="staff" runat="server" Value="Staff" Text=" Staff" />
                 </asp:RadioButtonList>
                  <asp:RequiredFieldValidator runat ="server" ID="rqdtype" ControlToValidate="rdchange" ErrorMessage="Required Type" Text="*" ></asp:RequiredFieldValidator>
               
                <asp:Image ID="impPrev" CssClass="impPrev" Width="100px" Height="120px" runat="server" BorderStyle="Solid" />
                   <input runat="server" type="file" name="ImageUpload" id="ImageUpload" onchange="ShowPreview(this)" />
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Image is Requires" ControlToValidate="ImageUpload" ID="rqdimg" Text="*"></asp:RequiredFieldValidator>
                   <asp:Label ID="lblpic" ForeColor="Red" runat="server"></asp:Label><br /><br />
                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="true" EnableClientScript="true" DisplayMode="BulletList" HeaderText="You should be fill following fields!" />
                   <asp:Button runat="server" CssClass="btn btn-primary" ID="btnsave" Text="Registration" OnClick="btnsave_Click"/> <br />
                   <br />
                   <asp:Button runat="server" CssClass="btn btn-primary" Text="Clear" ID="btnclr"/>
                   <asp:Label runat ="server" ID="Label1" ForeColor="Red"></asp:Label>
          </div>
        </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>