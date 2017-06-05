<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="HomeReportStaff.aspx.cs" Inherits="AdminHome.HumanResorceView.HomeReportStaff" %>
<asp:Content runat="server" ContentPlaceHolderID="head"> <link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="container">
        <div class="row" style="text-align:center;font-weight:bold">
            <h4>Staff Profile Reports </h4>
        </div>
        <div class="col-md-4">
              <div class="student-btn">
          <a href="../TeacherDesboard/EmpDetailsReport.aspx" class="button"><span>Staff/FacultyList</span></a></div></div>
     
        <div class="col-md-4">
              <div class="student-btn">
          <a href="../TeacherDesboard/EmpDetailsReport.aspx" class="button"><span>DepartmentWiseList</span></a></div></div>
             
        <div class="col-md-4">
              <div class="student-btn">
          <a href="../TeacherDesboard/EmpDetailsReport.aspx" class="button"><span>BloodGroupWiseList</span></a></div></div></div>
    <%--</form>--%>
</body>
</html></asp:Content>
