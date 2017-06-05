<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="WebsiteMaintanance.aspx.cs" Inherits="AdminHome.WebsiteControl.WebsiteMaintanance" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <div class="row" style="text-align:center">
            <asp:Label runat="server" ID="lblmsg" Font-Bold="true" ForeColor="Red"></asp:Label>
            <a style="color:red;" href="../Dems/index.aspx"><span class="glyphicon glyphicon-backward"> GO TO DEMS Website</span> </a>
        </div>
        <div class="row" style="margin-bottom:30px;">
                <fieldset><legend style="font-weight:bold;color:red;margin-left:10px;margin-bottom:30px;">Change SocialLink</legend></fieldset>
            <div class="col-lg-6">
                <input runat="server" id="txttwet" class="form-control" placeholder="Edit Twitter profile URL" />
                <input runat="server" id="txtfb" class="form-control" placeholder="Edit Facebook profile URL" />
                <input runat="server" id="txtemail" class="form-control" placeholder="Edit Linkedln profile URL" />
            </div>
            <div class="col-lg-3">
                <asp:Button runat="server" ID="btnsocial" CssClass="btn btn-primary" Text="Post On Website" OnClick="btnsocial_Click" />
            </div>
        </div>
        <div class="row" id="divevents" style="margin-bottom:30px;">
            <fieldset><legend style="font-weight:bold;color:red;margin-left:10px;margin-bottom:30px;">Event Change</legend></fieldset>
            <div class="col-lg-6">
                <textarea id="txtevent" runat="server" placeholder="Events Type Here..." class="form-control" style="resize:none;height:120px;"></textarea>
            </div>
            <div class="col-lg-3">
                <asp:Button runat="server" ID="btnevent" CssClass="btn btn-primary" Text="Post On Website" OnClick="btnevent_Click" />
            </div>
        </div>
         <div class="row">
            <fieldset><legend  style="font-weight:bold;color:red;margin-left:10px;margin-bottom:30px;">News Change</legend></fieldset>
            <div class="col-lg-6">
                <textarea id="txtNews" runat="server" placeholder="News Type Here..." class="form-control" style="resize:none;height:120px;"></textarea>
            </div>
            <div class="col-lg-3">
                <asp:Button ID="btnnews" runat="server" CssClass="btn btn-primary" Text="Post On Website" OnClick="btnnews_Click" />
            </div>
        </div>
    </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>