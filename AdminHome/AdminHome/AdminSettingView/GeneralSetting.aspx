<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="GeneralSetting.aspx.cs" Inherits="AdminHome.AdminSettingView.GeneralSetting" %>
<asp:Content runat="server" ContentPlaceHolderID="head"> <link href="../bootstrap.3.3.7/ButtonCssDiv.css" rel="stylesheet" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>



        <div class="container">
            <div>
             <div class="col-md-4">
              <div class="student-btn">
                     <a href="AddSchoolCollegeSetupfrm.aspx" class="button"><span>  AddSchool/CollegeSetUp  </span></a>
                     
              </div></div>
           
        <div class="col-md-4">
              <div class="student-btn1">
                    <a href="AddManagementShift.aspx" class="button"><span>  ShiftConfigration  </span></a>

              </div></div>
            <div class="col-md-4">
              <div class="student-btn1">
                     <a href="AddBoard.aspx" class="button"><span>  AddBoard   </span></a>

              </div></div>
        </div>
   </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>