<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DistrictStateManagementfrm.aspx.cs" Inherits="AdminHome.AdminSettingView.DistrictStateManagementfrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="container">
         <asp:DropDownList runat="server" ID="ddlstate" AutoPostBack="True" DataTextField="state" DataValueField="id">
             <asp:ListItem>--Select--</asp:ListItem>
         </asp:DropDownList>
         <asp:DropDownList runat="server" AutoPostBack="false" ID="ddldistrict" DataTextField="district">
         </asp:DropDownList>
         
     </div>
        <div class="container" style="height:50px; background-color:skyblue;">
            <asp:Button runat="server" ID="txtmsg" />
        </div>
    </form>
</body>
</html>
