<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFinance.aspx.cs" Inherits="AdminHome.AdminFinance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="col-lg-8">
            <div class="col-lg-3" style="">
                <fieldset runat="server">
                    <legend> Fee Management</legend>
                    <asp:HyperLink runat="server">
                        <asp:Button  runat="server" Text="Fee Management"/>
                    </asp:HyperLink>
                </fieldset>
            </div>
        <div class="col-lg-3">
                <fieldset id="Fieldset1" runat="server">
                    <legend>Fine Management</legend>
                    <asp:HyperLink ID="HyperLink1" runat="server">
                        <asp:Button ID="Button1"  runat="server" Text="Fine Management"/>
                    </asp:HyperLink>
                </fieldset>
       </div>
        <div class="col-lg-3">
                <fieldset id="Fieldset2" runat="server">
                    <legend>Finance Report</legend>
                    <asp:HyperLink ID="HyperLink2" runat="server">
                        <asp:Button ID="Button2"  runat="server" Text="Finaance Report"/>
                    </asp:HyperLink>
                </fieldset>
        </div>
    </div>
    </form>
</body>
</html>
