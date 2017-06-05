<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AddSchoolCollegeSetupfrm.aspx.cs" Inherits="AdminHome.AdminSettingView.AddSchoolCollegeSetupfrm" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <script type="text/javascript">
        function ShowPreview(input) {
            if (input.files && input.files[0]) {
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    $('.impPrev').attr('src', e.target.result);
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
    </script> 
    <%--<form id="form1" runat="server">--%>
          <div style="text-align:center;font-weight:bold"><h3>College SetUp Profile</h3></div>
           <div class="container" style="margin-top:30px;">
               <div class="col-lg-4">
               <asp:Table runat="server" CssClass="table">
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Institute Name:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Country:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtcountry" runat="server" CssClass="form-control"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Address</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <textarea runat="server" id="txtxaddres" class="form-control" cols="20" rows="2"></textarea>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Fax:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtxfax" runat="server" CssClass="form-control"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Telephone:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txttell" runat="server" CssClass="form-control"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Registration:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtxreg" runat="server" CssClass="form-control"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Email:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
               </asp:Table>
                   <asp:Button runat="server" CssClass="btn btn-primary"  Text="Update" ID="btnsav" OnClick="btnsav_Click" />
                   <asp:Label runat ="server" ID="lblmsg" ForeColor="Red"></asp:Label>
              </div>
               <div class="col-lg-3" style="margin-left:50px;">
                   <asp:Image ID="impPrev" CssClass="impPrev" Width="100px" Height="120px" runat="server" BorderStyle="Solid" />
                   <input runat="server" type="file" name="ImageUpload" id="ImageUpload" onchange="ShowPreview(this)" /> 
                    <asp:Label ID="lblpic" ForeColor="Red" runat="server"></asp:Label>
                  <br /><br />
               </div>
           </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>