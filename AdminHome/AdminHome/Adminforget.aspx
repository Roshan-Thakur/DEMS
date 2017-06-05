<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminforget.aspx.cs" Inherits="AdminHome.Adminforget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap.3.3.7/content/Content/mybootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2 style="text-align:center; margin-top:60px;"> Recover Password and User_Name</h2>
       
        <div class="mycontainer" style="height:400px;">
            <img src="bootstrap.3.3.7/images/face.jpg" class="img-circle" />
            <div style="width:400px; margin:0 auto;">
            <div class="input-group">
                <span class="input-group-addon" style="color:white;">User_Name&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</></span>
                <asp:TextBox ID="username" CssClass="form-control" runat="server" placeholder="Enter Your Email id"></asp:TextBox>
            </div>
                <div class="input-group">
                <span class="input-group-addon" style="color:white;">Email_Id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</></span>
                <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Enter Your Email id" ></asp:TextBox>
            </div>
            <div class="input-group">
                <span class="input-group-addon"  style="color:white;">New Password&nbsp; &nbsp; &nbsp;</span>
                <asp:TextBox ID="NewPassword" TextMode="password" runat="server" class="form-control" placeholder="Enter New Password" ></asp:TextBox>
            </div>
                <div class="input-group">
                <span class="input-group-addon"  style="color:white;">Confirm Password</span>
                 <asp:TextBox runat="server" ID="conpassword" TextMode="password" class="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
            </div>
            <div id="Div1" class="input-group" >
                <asp:CheckBox ID="CheckBox1" runat="server" /><span style="color:white;"> Show Password</span><br /><br />
                <asp:Button ID="ResetPassword" runat="server" CssClass="btn btn-primary btn-md" Text="Reset" OnClick="ResetPassword_Click" />
                <asp:Button ID="cancel" runat="server" CssClass="btn btn-primary btn-md" Text="Cancel" PostBackUrl="~/AdminLogIn.aspx" />
                <asp:Label runat="server" Font-Bold="true" ForeColor="White" ID="lblmsg"></asp:Label>
            </div>
              </div>
        </div>
    </form>
</body>
</html>
