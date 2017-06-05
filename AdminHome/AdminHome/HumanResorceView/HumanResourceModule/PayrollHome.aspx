<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="PayrollHome.aspx.cs" Inherits="AdminHome.HumanResorceView.HumanResourceModule.PayrollHome" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
    <div class="container">
        <div class="col-md-4">
              <div class="student-btn">
   <a href="../SalarysetDetails.aspx" class="button"><span>SalarySetDetails</span></a></div></div>
       <div class="col-md-4">
              <div class="student-btn1">
         <a href="../SalaryAllowance.aspx" class="button"><span>SalaryAllowanceType</span></a></div></div>
       <div class="col-md-4">
              <div class="student-btn2">
         <a href="../Searchsalary.aspx" class="button"><span>ViewSalaryDetailsInfo</span></a></div></div>
     
 </div>   
    <%--</form>--%>
</body>
</html>
</asp:Content>