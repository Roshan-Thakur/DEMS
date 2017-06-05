<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="HomeControl.aspx.cs" Inherits="AdminHome.ControlPanelDiv.HomeControl" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
            <div class="container">
         <div class="col-md-6">
              <div class="student-btn">
                    <a href="AdduserAccount.aspx" class="button"><span>Add User Account</span></a>
                     <a href="UserAccountList.aspx" class="button"><span>List Of User Account</span></a><br /></div></div>
      <div class="col-md-6">
              <div class="student-btn1">
                    <a href="AddStudentAccount.aspx" class="button"> <span>Add Student Account </span></a>
       <a href="StudentAccountList.aspx" class="button"><span>List Of Student Account</span></a></div></div>
           
</div>
    <%--</form>--%>
</body>
</html>
</asp:Content>