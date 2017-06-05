<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="HomeStudentInfoReport.aspx.cs" Inherits="AdminHome.AccademicManagement.HomeStudentInfoReport" %>
<asp:Content runat="server" ContentPlaceHolderID="head"> 
     <link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
   <div class="container">
       <div class="col-md-4">
         <div class="student-btn">
            <a href="StudentReport.aspx" class="button"><span>Student Contact List</span></a>
            <a href="StudentReport.aspx" class="button"><span>Gurdian Information</span></a></div></div>
       <div class="col-md-4">
              <div class="student-btn">
            <a href="StudentReport.aspx" class="button"><span>Parents Information List</span></a>
           <a href="StudentReport.aspx" class="button"><span>Admit Id Card</span></a></div></div>
        <div class="col-md-4">
              <div class="student-btn">
            <a href="StudentReport.aspx" class="button"><span>Gurdian Contact List</span></a>
            </div></div>
         </div>     
    
 
    
  
    <%--</form>--%>
</body>
</html>
    </asp:Content>