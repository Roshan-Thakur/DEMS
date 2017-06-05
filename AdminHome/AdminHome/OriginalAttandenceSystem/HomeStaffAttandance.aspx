<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="HomeStaffAttandance.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.HomeStaffAttandance" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
     <link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="conainter">
        <div class="col-md-4">
              <div class="student-btn">
                   <a href="#" class="button"><span>Leave Report</span></a>
                   <a href="StaffAndFacultyAttandance.aspx" class="button"><span>Attendence Import Machine</span></a></div></div>
 
       <div class="col-md-4">
              <div class="student-btn">
                     <a href="Attandancedetails.aspx" class="button"><span>Attendence Report</span></a></div></div>
          
       <div class="col-md-4">
              <div class="student-btn">
                     <a href="DetailsAbsentEmp.aspx" class="button"><span>Absent Details</span></a></div></div>
      </div>
    <%--</form>--%>
</body>
</html>
    </asp:Content>