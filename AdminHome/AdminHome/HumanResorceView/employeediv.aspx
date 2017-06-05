<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="employeediv.aspx.cs" Inherits="AdminHome.HumanResorceView.employeediv" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
     <div class="container">
         <div class="col-md-6">
              <div class="student-btn">
   <a href="../FormUserRagistration/EmpRegiForm.aspx" class="button"><span>EmployeeRagistration</span></a></div></div>
       <div class="col-md-6">
              <div class="student-btn1">
         <a href="StaffEmpdetails.aspx" class="button"><span>EmployeeRecordeUpdate</span></a></div></div>
     
 </div>   
 
    <%--</form>--%>
</body>
</html>
    </asp:Content>