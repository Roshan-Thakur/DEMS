<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="ReportHome.aspx.cs" Inherits="AdminHome.ExaminationModules.ReportHome" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="container">
        <div class="col-md-4">
              <div class="student-btn">
                   <a href="GenerateMarksheet.aspx" class="button"><span>Dependency Convert Mark</span></a>
                   <a href="DetailsSubjextPattern.aspx" class="button"><span>Details Subject Pattern</span></a>
                </div></div>
        <div class="col-md-4">
              <div class="student-btn1">
              
               <a href="MarksheetViewer.aspx" class="button"><span>Dependency Marks Result</span></a>
               <a href="StudentSubjectList.aspx" class="button"><span>Student Subject List</span></a></div></div>
        <div class="col-md-4">
              <div class="student-btn2">
                <a href="#" class="button"><span>Student Group Subject List</span></a>
                
                <a href="TranferCertificate.aspx" class="button"><span>Transfer Cetificate</span></a></div></div>
  </div>
    <%--</form>--%>
</body>
</html></asp:Content>
