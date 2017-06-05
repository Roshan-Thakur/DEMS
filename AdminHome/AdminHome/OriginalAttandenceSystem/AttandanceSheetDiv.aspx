<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AttandanceSheetDiv.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.AttandanceSheetDiv" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="container">
          <div class="col-md-4">
       <div class="student-btn">
   <a href="StudenceIndividualAttandanceImport.aspx" class="button"><span>StudentAttendenceImport </span></a></div></div>        
          <div class="col-md-4">
       <div class="student-btn">
           <a href="StudentAttandancedetails.aspx" class="button"><span>AttendenceDetails</span></a></div></div>        
          <div class="col-md-4">
       <div class="student-btn">
           <a href="#" class="button"><span>leaveReport</span></a></div></div>
   </div>
    
    <%--</form>--%>
</body>
</html>
</asp:Content>