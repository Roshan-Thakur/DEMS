<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="UserOldPassSet.aspx.cs" Inherits="AdminHome.ControlPanelDiv.UserOldPassSet" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
     <div class="container">
     <%--<div class="row" style="height:50px; background-color:skyblue; margin-bottom:30px;margin-top:50px;">Add Student Account</div>--%>
        
         <div class="col-lg-3"></div><div class="col-lg-5">
           <asp:Table ID="Table1" runat="server" CssClass="table">
               <asp:TableRow><asp:TableCell>User Name:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtusename" CssClass="form-control" ReadOnly="true"></asp:TextBox></asp:TableCell></asp:TableRow>
               <asp:TableRow><asp:TableCell>Old Password:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtoldpass" CssClass="form-control" ReadOnly="true"></asp:TextBox>
               <asp:RequiredFieldValidator ID="rqdold" runat="server" ControlToValidate="txtoldpass" Text="Required Field"></asp:RequiredFieldValidator></asp:TableCell></asp:TableRow>
               <asp:TableRow><asp:TableCell>New Password:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtnewpass" CssClass="form-control"></asp:TextBox>
               <asp:RequiredFieldValidator ID="rqd1" runat="server" ControlToValidate="txtnewpass" Text="Required Field"></asp:RequiredFieldValidator></asp:TableCell></asp:TableRow>
               <asp:TableRow><asp:TableCell>Confirm Password:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcnpass" CssClass="form-control"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtnewpass" ControlToCompare="txtcnpass" Type="String" Operator="Equal"  Text="Passwords don't match!"></asp:CompareValidator></asp:TableCell></asp:TableRow>
               <asp:TableRow><asp:TableCell>Status:</asp:TableCell><asp:TableCell><asp:CheckBox ID="chkactive" runat="server" />Active</asp:TableCell></asp:TableRow>
           </asp:Table>
           <asp:Button runat="server" ID="btn" CssClass="btn btn-primary" Text="Change Password" OnClick="btn_Click" />
           <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
       </div><div class="col-lg-3"></div> 
    </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>
