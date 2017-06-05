<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="ChangeAPIEmail.aspx.cs" Inherits="AdminHome.Notifications.ChangeAPIEmail" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        
        <div class="container" style="height:50px;background-color:skyblue; text-align:center; margin-bottom:50px;margin-top:50px;"><h4>Change API or user EMAIL</h4></div>
        
        <div class="col-6" style="min-width:250px;">
            <h4>Set User API</h4>
            <asp:Table runat="server" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox runat="server" placeholder="Type API"  CssClass="form-control" ID="txtapi"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button  ID="btnapi" runat="server" Text="Submit API" CssClass="btn btn-primary" OnClick="btnapi_Click" />
        </div>
        <div class="col-6" style="width:40%;min-width:250px;">
            <h4>Set User Email</h4>
            <asp:Table ID="Table1" runat="server" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox runat="server" placeholder="Type Email" CssClass="form-control" ID="txtsetemail"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox runat="server" placeholder="Type Password" CssClass="form-control" ID="txtpass"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button  ID="btnemail" runat="server" Text="Submit Email" CssClass="btn btn-primary" OnClick="btnemail_Click" />
        </div>
    </div>
     <div class="col-12" style="margin-top:200px;font-family:Arial;text-align:center;min-width:250px;">
     <asp:LinkButton runat="server" Font-Size="Medium" PostBackUrl="~/Notifications/Notificationform.aspx" Text="Back to Notification WebPage!" ForeColor="BlueViolet"></asp:LinkButton>
     <br /><asp:Label runat="server" ID="lblinfo" ForeColor="Red" Font-Bold="true"></asp:Label>
     <h4 style="color:blue;">Notification: Please API Key use As: "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=troshan34@gmail.com:123fdsa&senderID=TEST"</h4>
    </div>
    <%--</form>--%>
    
</body>
</html>
</asp:Content>