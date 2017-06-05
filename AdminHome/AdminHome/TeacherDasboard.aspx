<%@ Page Language="C#" MasterPageFile="~/TeacherDesboard/TeacherMasterpage.Master" AutoEventWireup="true" CodeBehind="TeacherDasboard.aspx.cs" Inherits="AdminHome.TeacherDasboard" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="conntent">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
   <div class="container">
   <div class="row">
   <div class="col-2" style="min-width:180px;margin-bottom:10px;">   
       <asp:Image ID="imgprofile" CssClass="img-thumbnail" BackColor="Black" Width="110px" Height="120px" runat="server" BorderStyle="Solid"/></div>
        <div class="col-3" style="min-width:180px;font-weight:bold">
             <asp:Table ID="Table1" runat="server" CssClass="table-responsive">
                <asp:TableRow>
                    <asp:TableCell>Teacher Name:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblname" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>TeacherID:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblEid" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>Email:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblcode" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>Department:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lbldept" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>Designation:</asp:TableCell>
                    <asp:TableCell> <asp:Label ID="lbldesignation" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table> 
           <%-- <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/ImageIcones/newloggoff.png" CssClass="img-circle" Width="50px" Height="50px" />--%>
        </div>
   </div>
        <div class="row">
            <fieldset> <legend> Teacher Control Panel</legend>
                <div class="col-md-4">
                    <asp:LinkButton ID="lnlprofile" CssClass="button" href="TeacherDesboard/TeacherProfile.aspx" runat="server"><div class="col-lg-3"><span>Profile</span></div></asp:LinkButton>
                    <asp:LinkButton ID="lnkattandance" CssClass="button" href="TeacherDesboard/TdStaffAttandancedetails.aspx" runat="server"><div class="col-lg-3"><span>Attandance</span></div></asp:LinkButton>
                    
                </div>
                <div class="col-md-4">
                     <asp:LinkButton ID="lnkguidstudent" CssClass="button" href="GuidTeacherManagement/Viewtdstudentguid.aspx" runat="server"><div class="col-lg-3"><span>GuidStudents</span></div></asp:LinkButton>
                     <asp:LinkButton ID="lnkstdattandance" CssClass="button" href="" runat="server"><div class="col-lg-3"><span>MyRoutine</span></div></asp:LinkButton>
                </div>
                <div class="col-md-4">
                    <asp:LinkButton ID="lnkroutin" CssClass="button" href="OriginalAttandenceSystem/AttandanceSheet.aspx" runat="server"><div class="col-lg-3"><span>StudentsAttandance</span></div></asp:LinkButton>
                    
                </div>
            </fieldset>
        </div>
      </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>