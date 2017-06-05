
<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="AdminHome.AdminProfile" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>

    <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=Image1.ClientID %>');
            var file = document.querySelector('#<%=ImageUpload.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>

   
    <form id="form1" runat="server">
        <div class="container-fluid">
        <%--<div class="col-lg-2" style="height:1000px;float:left; border-bottom:inset 4px 2px 2px #fff; background-color:whitesmoke;">
            <h2>SideBar</h2>
        </div>--%>
        <div class="col-lg-12" style="height:100px;background-color:whitesmoke; border:double; border-color:green;">
            <h2>Title Bar</h2>
            <asp:Label runat="server" ID="visitor" Text="0"></asp:Label>
        </div>
        <div class="col-lg-12" style="height:900px;background-color:whitesmoke; float:right; border:double; border-color:green;">
        <div class="row">
            <div class="col-lg-5">
                
                <asp:Panel runat="server" CssClass="panel-default">
                    <div class="panel-heading">Create Admin Profile</div><br />
                            <fieldset id="Fieldset1" runat="server"><legend>Set ProfileImage</legend>
                            <div class="col-lg-3">   
                            <asp:Image ID="Image1" Width="100px" Height="120px" runat="server" BorderStyle="Solid"/>
                            <input runat="server" type="file" name="ImageUpload" id="ImageUpload" onchange="previewFile()" />  
                            </div>
                            <div class="col-lg-6">
                                <asp:FileUpload ID="uploadimage" runat="server"/>
                                <asp:Button ID="btnupload" Text="Upload" OnClick="upload" runat="server"/><br />
                                <asp:Label runat="server" ID="lblimage" ForeColor="Red"></asp:Label>
                            </div>
                            </fieldset><br />
                    <fieldset runat="server"><legend>About_User</legend>
                    <asp:TextBox ID="first" runat="server" CssClass="form-control" placeholder="Name" ></asp:TextBox>
                    <asp:TextBox ID="last" runat="server" CssClass="form-control" placeholder="Last_Name" ></asp:TextBox>
                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email_ID" ></asp:TextBox>
                    <asp:TextBox ID="mobile" runat="server" CssClass="form-control" placeholder="Mobile_No" ></asp:TextBox>
                    <asp:TextBox ID="uid" runat="server" CssClass="form-control" placeholder="UID_Number" ></asp:TextBox>
                    <asp:TextBox ID="txtpaswd" runat="server" CssClass="form-control" placeholder="Enter Password" ></asp:TextBox>
                    </fieldset><br />
                    <fieldset runat="server"><legend> Date Of Month</legend>
                    <asp:DropDownList runat="server" ID="day" AutoPostBack="true" ForeColor="Black"><asp:ListItem>-Date-</asp:ListItem></asp:DropDownList>
                    <asp:DropDownList runat="server" ID="mont" AutoPostBack="true" ForeColor="Black" ><asp:ListItem>-Month-</asp:ListItem></asp:DropDownList>
                    <asp:DropDownList runat="server" ID="lyear" AutoPostBack="true" ForeColor="Black"><asp:ListItem>-Year-</asp:ListItem></asp:DropDownList>
                    </fieldset><br />
                    <fieldset runat="server">
                        <legend> Date Of Joining</legend>
                        <asp:Label ID="current" runat="server" ForeColor="Black" BorderStyle="Solid"></asp:Label>
                    </fieldset>
                    <br />
                    <fieldset runat="server">
                        <legend>Gender</legend>
                        <asp:DropDownList runat="server" ID="gender1" ForeColor="Black">
                        <asp:ListItem>
                            ---Select---
                        </asp:ListItem>
                        <asp:ListItem>
                            Male
                        </asp:ListItem>
                        <asp:ListItem>
                            Female
                        </asp:ListItem>
                    </asp:DropDownList>
                    </fieldset>
                    <br /><br />
                    <asp:Button ID="submit" CssClass="btn btn-primary btn-md" Text="Submit" runat="server" OnClick="submit_Click" />
                    <asp:Button ID="clear" CssClass="btn btn-primary btn-md" Text="Clear" runat="server" />
                    <asp:Button ID="update" CssClass="btn btn-primary btn-md" Text="update" runat="server" />
                    <asp:Label runat="server" ID="success"></asp:Label>
                </asp:Panel>
                
            </div>
            <div class="col-lg-7">Update Admin Profile...
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Update Profile</a></li>
                <li><a data-toggle="tab" href="#menu1">Notificaton</a></li>
                <li><a data-toggle="tab" href="#menu2">Message</a></li>
                <li><a data-toggle="tab" href="#menu3">Gallary</a></li>
             </ul>
                <div class="tab-content">
                     <div id="home" class="tab-pane fade in active">
                         <h3>Update Profile</h3>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Notificaton</h3>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Message</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                        </div>
                    <div id="menu3" class="tab-pane fade">
                        <h3>Gallary</h3>
                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                        <fieldset runat="server">
                            <legend>Profile Image</legend>
                            <asp:Repeater runat="server" ID="RepeterImage">
                                <ItemTemplate>
                                    <asp:Image ID="img" Width="100px" Height="100px" BorderColor="YellowGreen" runat="server" ImageUrl='<%# Container.DataItem %>'/>
                                </ItemTemplate>
                            </asp:Repeater>
                        </fieldset>
                        <fieldset runat="server">
                            <legend>Uploaded Image</legend>
                            <asp:Repeater runat="server" ID="RepeaterUpload">
                                <ItemTemplate>
                                    <asp:Image ID="img" Width="100px" Height="100px" BorderColor="YellowGreen" runat="server" />
                                </ItemTemplate>
                            </asp:Repeater>
                        </fieldset>
                    </div>
               </div>
            </div>
        </div>
    </div>
           
       <%--<div class="col-lg-12" style="background-color:orangered; height:200px;">
           <h2>Footer Page</h2>
       </div>--%>
        
  </div>
        
    </form>
</body>
</html></asp:Content>
