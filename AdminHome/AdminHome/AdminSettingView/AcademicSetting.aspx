<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AcademicSetting.aspx.cs" Inherits="AdminHome.AdminSettingView.AcademicSetting" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
        <div class="container">
        <div class="col-md-4">
              <div class="student-btn">
            <a href="AddClass.aspx" class="button"><span>Add Class</span></a>
            <a href="AddSectionform.aspx" class="button"><span>Add Section</span></a>
            <a href="AddGroupfrm.aspx" class="button"><span>Add Group</span></a></div></div>
           <div class="col-md-4">
              <div class="student-btn">
            <a href="AddClassSectionList.aspx" class="button"><span>Add Class Section</span></a>
            <a href="AddBatchlistfrm.aspx" class="button"><span>Add Batch</span></a>
            <a href="AddClassGroupList.aspx" class="button"><span>Add Class Group</span></a></div></div>
           <div class="col-md-4">
              <div class="student-btn">
            <a href="SessionAdd.aspx" class="button"><span>Add Session</span></a>
            <a href="AddBloodReligionDeprtfrm.aspx" class="button"><span>Add Blood,Religion & Department</span></a>
            </div></div>
 </div> 
    <%--</form>--%>
</body>
</html>
    </asp:Content>