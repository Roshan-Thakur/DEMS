<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AttandanceHome.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.AttandanceHome" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
 <%--<form id="form1" runat="server" style="background-color:gray">--%>
   <div class="row">
   <div class="col-md-6">
   <div class="student-btn">
        <a href="AttandanceSheetDiv.aspx" class="button"><span>Student Attendence</span></a></div></div>
    <div class="col-md-6">
       <div class="student-btn1">
   <a href="HomeStaffAttandance.aspx" class="button"><span>Staff/Faculty Attendence</span></a>       
        </div></div>

   </div>
     <%--<div class="col-lg-2"></div>--%>
        <img style="margin-left:12%" src="../bootstrap.3.3.7/images/AttendanceHome.jpg" /> 
    <%--</form>--%>
</body>
</html>
    </asp:Content>