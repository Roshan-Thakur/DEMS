<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="HomeExamination.aspx.cs" Inherits="AdminHome.ExaminationModules.HomeExamination" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="formcss">--%>
   <div class="container">
         <div class="col-md-4">
           <div class="student-btn">
           <a href="AddSubject.aspx" class="button"><span>Subject Management</span></a>
           <a href="AddExamType.aspx" class="button"><span>Exam Type</span></a>
           <a href="AddQuestionPaturn.aspx" class="button"><span>Question Pattern</span></a><br /></div></div>
         <div class="col-md-4">
           <div class="student-btn">
           <a href="ClassWiseSubjectSetup.aspx" class="button"><span>Class Wise Subject Setup</span></a>
           <a href="GenerateSubjctQuestionPattern.aspx" class="button"><span>Sub. Wise Ques.Pattern</span></a>
           <a href="AddExamInfo.aspx" class="button"><span>Exam Info</span></a>
           </div></div>
          <div class="col-md-4">
           <div class="student-btn">
            <a href="AddGradeSystem.aspx" class="button"><span>Grading </span></a><br />
            <a href="markentry.aspx" class="button"><span>Marks Entry </span></a>
            <a href="UpdateMarks.aspx" class="button"><span>Marks Update </span></a>
           </div>
          </div></div>
    <%--</form>--%>
</body>
</html>
    </asp:Content>