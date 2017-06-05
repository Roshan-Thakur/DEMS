<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="HomeStudentAccademic.aspx.cs" Inherits="AdminHome.AccademicManagement.HomeStudentAccademic" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <link href="../bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
     <link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="container">
        <div class="col-md-4">
              <div class="student-btn">
                    <a href="PermotedStudentList.aspx" class="button"><span>Old Student Entry</span></a>
                    <a href="AdmissionForm.aspx" class="button"><span>Student Admission Form</span></a></div></div>
      <div class="col-md-4">
              <div class="student-btn">
                    <a href="AdmissionDetails1.aspx" class="button"><span>Admission Details </span></a>
                    <a href="StudentPermotion.aspx" class="button"><span>New Students Batch Assign </span></a></div></div>
      <div class="col-md-4">
              <div class="student-btn">
                    <a href="#" class="button"><span>Current StudentInfo </span></a>
                    <a href="StudentPermotion.aspx" class="button"><span>Student Promotion</span></a></div></div>
        </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>