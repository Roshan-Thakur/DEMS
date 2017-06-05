<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StaffAttandanceReportDiv.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.StaffAttandanceReportDiv" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"> <link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="container">
         <div class="col-md-6">
              <div class="student-btn">
                <a href="Attandancedetails.aspx" class="button"><span>Attendence Details</span></a>
         </div></div>
      
         <div class="col-md-6">
              <div class="student-btn1">
               <a href="StaffCurrentAttandanceStatus.aspx" class="button"><span>Today's Absent/Present Employees</span></a></div></div>    
         </div>
    <%--</form>--%>
</body>
</html></asp:Content>
