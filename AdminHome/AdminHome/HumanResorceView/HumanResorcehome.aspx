<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="HumanResorcehome.aspx.cs" Inherits="AdminHome.HumanResorceView.HumanResorcehome" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
     <div class="container">
          <div class="col-md-6">
       <div class="student-btn">
   <a href="employeediv.aspx" class="button"><span>Employee</span></a></div></div>
   
          <div class="col-md-6">
       <div class="student-btn">
         <a href="HumanResourceModule/PayrollHome.aspx" class="button"><span>Payroll</span></a></div></div>
 </div>   
 
    <%--</form>--%>
</body>
</html>
</asp:Content>