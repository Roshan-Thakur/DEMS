<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="viewformemp.aspx.cs" Inherits="AdminHome.FormUserRagistration.viewformemp" %>
<asp:Content runat="server" ID="emphd" ContentPlaceHolderID="head" ></asp:Content>
<asp:Content runat="server" ID="empfor" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <%--<form id="form1" runat="server">--%>
        <div class="container" style="margin-top:10px; margin-bottom:10px;">
            <div class="col-5" aria-readonly="true"><asp:Label runat="server" ID="lblmsg" ForeColor="Red" CssClass="form-control" Text="hello"></asp:Label></div>
            <div class="col-4"><asp:Table runat="server"><asp:TableRow><asp:TableCell>Type:</asp:TableCell>
            <asp:TableCell>
            <asp:DropDownList ID="ddltype" CssClass="form-control" runat="server"><asp:ListItem Text="--Select--"></asp:ListItem><asp:ListItem Text="Employee"></asp:ListItem><asp:ListItem Text="Staff"></asp:ListItem></asp:DropDownList>
            </asp:TableCell></asp:TableRow></asp:Table>
            </div>
        </div>
        <div class="container">
            <div class="col-lg-5">
               <asp:Table ID="Table1" runat="server" CssClass="table">
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Card/Index Number:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtnumber" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Name*:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is Requires" ControlToValidate="txtname" ID="rqdname" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Father's Name*:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtfname" runat="server" CssClass="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="S/o is Requires" ControlToValidate="txtfname" ID="rqdfname" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Address*:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <textarea runat="server" style="resize:none" id="txtxaddres" class="form-control" cols="20" rows="2"></textarea>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="Address is Requires" ControlToValidate="txtxaddres" ID="rqdaddres" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Department:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList ID="ddldept" DataTextField="department" runat="server" CssClass="form-control"></asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Phone:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txttell" runat="server" CssClass="form-control"></asp:TextBox>
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
                          <asp:DropDownList runat="server" DataTextField="religion" ID="ddlreligion" CssClass="form-control"></asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Status:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlstatus" CssClass="form-control">
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
                           <asp:DropDownList runat="server" ID="ddlshift" CssClass="form-control">
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem Text="Morning"></asp:ListItem>
                               <asp:ListItem Text="Evening"></asp:ListItem>
                               <asp:ListItem Text="Both"></asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Email:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Email is Requires" ControlToValidate="txtemail" ID="rqdemail" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
               </asp:Table>
              </div>
            <div class="col-lg-5">
               <asp:Table ID="Table2" runat="server" CssClass="table">
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Joining Date:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txt" runat="server" CssClass="form-control txt" />
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Gender*:</span>
                       </asp:TableCell><asp:TableCell>
                          <asp:DropDownList runat="server" ID="ddlgender" CssClass="form-control">
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
                           <asp:TextBox ID="txtmotname" runat="server" CssClass="form-control"></asp:TextBox>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Marital Status*:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="Merital is Requires" ControlToValidate="TextBox1" ID="rqdmerrt" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Blood Group:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlblood" DataTextField="bloodgrp" CssClass="form-control"></asp:DropDownList>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Designation:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddldesig" CssClass="form-control"></asp:DropDownList>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Date Of Birth*:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:TextBox ID="txtdob" runat="server" CssClass="form-control txtdob" ></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" ErrorMessage="DOB is Requires" ControlToValidate="txtdob" ID="rqddob" Text="*"></asp:RequiredFieldValidator>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Last Degree:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList ID="ddldegree" DataTextField="ClassType" CssClass="form-control" runat="server"></asp:DropDownList>
                       </asp:TableCell></asp:TableRow><asp:TableRow>
                       <asp:TableCell>
                           <span>Nationalities:</span>
                       </asp:TableCell><asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlnation" CssClass="form-control">
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem Text="Indian"></asp:ListItem>
                               <asp:ListItem Text="Foreigner"></asp:ListItem>
                           </asp:DropDownList>
                   </asp:TableCell></asp:TableRow></asp:Table>
                   <asp:Label runat ="server" ID="Label1" ForeColor="Red"></asp:Label></div><div class="col-lg-2">
                   <asp:Image ID="impPrev" CssClass="impPrev" Width="100px" Height="120px" runat="server" BorderStyle="Solid" />
                   <input runat="server" type="file" name="ImageUpload" id="ImageUpload" onchange="ShowPreview(this)"/>
                   <asp:RequiredFieldValidator runat="server" ErrorMessage="Image is Requires" ControlToValidate="ImageUpload" ID="rqdimg" Text="*"></asp:RequiredFieldValidator>
                   <asp:Label ID="lblpic" ForeColor="Red" runat="server"></asp:Label><br /><br />
                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="true" EnableClientScript="true" DisplayMode="BulletList" HeaderText="You should be fill following fields!" />
                   <asp:Button runat="server" ID="btnupdate" OnClick="btnupdate_Click" CssClass="btn btn-primary" Text="Update" />
                   </div>
        </div>
    <%--</form>--%>
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
</body>
</html>

</asp:Content>
