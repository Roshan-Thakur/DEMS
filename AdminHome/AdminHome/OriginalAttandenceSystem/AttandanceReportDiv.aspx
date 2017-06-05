<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AttandanceReportDiv.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.AttandanceReportDiv" %>
<asp:Content runat="server" ContentPlaceHolderID="head"> <link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="container">
         <div class="col-md-6">
              <div class="student-btn">
                <a href="StudentAttandancedetails.aspx" class="button"><span>AttendenceDetails</span></a>
         </div></div>
      
         <div class="col-md-6">
              <div class="student-btn1">
               <a href="StudentsCurrentAttandanceStatus.aspx" class="button"><span>Today'sAbsent/PresentStudents</span></a></div></div>    
         </div>
    <%--</form>--%>
</body>
</html></asp:Content>
