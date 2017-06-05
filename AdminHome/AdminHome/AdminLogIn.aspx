<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogIn.aspx.cs" Inherits="AdminHome.AdminLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap.3.3.7/content/Content/mybootstrap.css" rel="stylesheet" />

    <title>DEMS</title> 
     <link id="Link1" runat="server" rel="shortcut-icone" href="~/ImageIcones/dems.ico" type="image/x-icone" />
     <link id="Link2" runat="server" rel="icon" href="~/ImageIcones/dems.ico" type="image/x-icone" />
    
</head>
<body>

    <form id="form1" runat="server">
            <br />
            <div style="margin:0 auto; width:230px; text-align:center" runat="server">
            <span><asp:Label ID="Label1" runat="server" Text="SIGN IN DEMS" Font-Bold="true"></asp:Label></span> <br /> 
            <asp:RadioButtonList ID="radio1" RepeatDirection="horizontal" CssClass="spaced" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="radio1_SelectedIndexChanged">
            <asp:ListItem id="rdadmin" runat="server" Value="AdminPanel" Selected="True" Text="Admin Panel" />
            <asp:ListItem id="rdstudent" runat="server" Value="StudentPanel" Text="Student Panel" />
            <asp:ListItem id="rdteacher" runat="server" Value="TeacherPanel" Text="Teacher Panel" />
            
            </asp:RadioButtonList>
                <asp:LinkButton ID="LinkButton1" runat="server" style="color:white;font-size:large" PostBackUrl="~/Dems/index.aspx" ><span class="glyphicon glyphicon-backward"> GO TO DEMSWebsite</span> </asp:LinkButton>
            </div>
        <h2 style="text-align:center; margin-top:60px;"><asp:Label ID="lblDasboard" runat="server" Text="Admin Panel"></asp:Label></h2>
        <div class="mycontainer">
            
            <img src="bootstrap.3.3.7/images/face.jpg" class="img-circle" id="img" runat="server" />
            <div style="width:300px; margin:0 auto;">
            <div class="input-group">
                <span class="input-group-addon" style="color:white;" >User_ID &nbsp;&nbsp;</></span>
                <asp:TextBox ID="username"  cssclass="form-control" runat="server" placeholder="Email_ID" ></asp:TextBox>
            </div>
            <div class="input-group">
                <span class="input-group-addon"  style="color:white;">Password</span>
                <asp:TextBox ID="Password"  cssclass="form-control"  runat="server" TextMode="Password" placeholder="Password" ></asp:TextBox>
                
            </div>
            <div class="input-group">
                    <asp:CheckBox ID="show" runat="server" /><span style="color:white;">Show_Password</span><br /><br />
            </div>
            <div class="input-group" runat="server">
                <asp:Button ID="login" runat="server" CssClass="btn btn-primary btn-md" Text="LogIn" OnClick="login_Click" />
                <asp:Button ID="cancel" runat="server" CssClass="btn btn-primary btn-md" Text="Cancel" OnClick="cancel_Click" />&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="forget" Text="Forget Password" runat="server" BackColor="Tomato" OnClick="forget_Click"></asp:LinkButton> 
            </div>
                <div>
                    <asp:Label ID="lblnotify" runat="server" Text=" "></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
