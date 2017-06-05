<%@ Page Language="C#" MasterPageFile="~/StudentDesboard/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentDasboard.aspx.cs" Inherits="AdminHome.StudentDasboard" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="header"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
<%--<form id="form1" runat="server">--%>
   <div class="container">
   <div class="row">
       <div class="col-lg-3" style="min-width:180px;">   
           <fieldset id="Fieldset1" runat="server"><legend>Profile Image</legend>
                    <asp:Image ID="profileimg" CssClass="img-thumbnail" BackColor="Black" Width="120px" Height="130px" runat="server"/>
           </fieldset>
       </div>
       <div class="col-lg-3" style="min-width:250px;">
           <fieldset><legend>Details</legend>
               <asp:Table ID="Table1" runat="server" CssClass="table-responsive" Font-Bold="true">
                <asp:TableRow>
                    <asp:TableCell>Email:</asp:TableCell>
                    <asp:TableCell><asp:Label runat="server" ID="lblemail" Font-Bold="true"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Name:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblname" runat="server" ></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>Shift:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblshift" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>Batch:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblbatch" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>Roll_No:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblroll" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>Section:</asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblsection" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table> 
           <%-- <asp:ImageButton ID="ImageButton1" runat="server" OnClick="Unnamed_Click" ImageUrl="~/ImageIcones/newloggoff.png" CssClass="img-circle" Width="80px" Height="80px" />--%>
            
           </fieldset>
       </div></div>

        <div class="row" style="margin-bottom:10px;">
        <fieldset><legend> Student Control Panel</legend>
                    <div class="col-md-3">
                            <div class="">
                    <asp:LinkButton ID="lnlkprofile" CssClass="button" runat="server" OnClick="A3_Click"><div class="col-lg-3"><span>Profile</span></></div></asp:LinkButton></div></div>
                     <div class="col-md-3">
                            <div class="">
                    <asp:LinkButton ID="lnlattandance" CssClass="button" OnClick="lnlattandance_Click" runat="server"><div class="col-lg-3"><span>Attandance</span></div></asp:LinkButton></div></div> 
                                     <div class="col-md-3">
                            <div class="">
                                <asp:LinkButton id="lnkmark" CssClass="button" OnClick="lnkmark_Click"  runat="server"><div class="col-lg-3"><span>Result</span></div></asp:LinkButton></div></div>
                     <div class="col-md-3">
                            <div class="">
                                <asp:LinkButton ID="routin" CssClass="button" href="#" runat="server"><div class="col-lg-3"><span>Routine</span></div></asp:LinkButton></div></div>
                       </fieldset>
        </div>
  </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>