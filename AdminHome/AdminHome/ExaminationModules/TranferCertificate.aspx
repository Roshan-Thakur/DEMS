<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="TranferCertificate.aspx.cs" Inherits="AdminHome.ExaminationModules.TranferCertificate" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
     <div class="row">
         <div class="col-lg-6"><table><tr><td><asp:DropDownList ID="ddlroll" runat="server" Width="130px" CssClass="form-control"></asp:DropDownList></td><td> <asp:Button runat="server" ID="btnroll" CssClass="btn btn-primary" Text="Search" OnClick="btnroll_Click" /></td></tr></table></div>
     </div>
    
   <div class="row"><div class="col-lg-3"></div>
   <div class="col-lg-6" style="border:solid">
       <fieldset><legend style="text-align:center;margin-bottom:10px;font-weight:bold;color:red;">Transfer Certificate</legend>
       <img src="../ImageIcones/banners.png" style="width:70%;margin-left:12%;height:60px;margin-bottom:5px;" />
       <table class="table" style="border:dotted;font-weight:bold;font-size:small">
           <tr><td>Student Name</td><td><asp:Label ID="lblstname" runat="server" ></asp:Label></td></tr>
           <tr><td>Father Name</td><td><asp:Label runat="server" ID="lblfname"></asp:Label></td></tr>
           <tr><td>Date Of Birth</td><td><asp:Label ID="lbldob" runat="server"></asp:Label></td></tr>
           <tr><td>Batch</td><td><asp:Label ID="lblbatch" runat="server"></asp:Label></td></tr>
           <tr><td>Degree/Class</td><td><asp:Label ID="lbldegree" runat="server"></asp:Label></td></tr>
           <tr><td>Passing Year</td><td><asp:Label ID="lblpassyr" runat="server"></asp:Label></td></tr>
           <tr><td>Transfer Certificate ID</td><td><asp:Label ID="lblTCID" runat="server"></asp:Label></td></tr>
           <tr><td>Transfer Date</td><td><asp:Label ID="lblTD" runat="server"></asp:Label></td></tr>
           <tr><td>Marks Grade</td><td><asp:Label ID="lblgrade" runat="server"></asp:Label></td></tr>
           <tr><td>Address</td><td><asp:Label ID="lbladdress" runat="server"></asp:Label></td></tr>
           <tr><td>Performance Status</td><td><asp:Label ID="lblstatus" runat="server"></asp:Label></td></tr>
           <tr><td>Co-Ordinator Name/Sign</td><td><asp:Label ID="lblteacher" runat="server" ></asp:Label></td></tr>
           <tr><td>Co-Ordinator Contact</td><td><asp:Label ID="lblcontact" runat="server" ></asp:Label></td></tr>
           <tr><td>Principle Signatire/Stamp</td><td></td></tr>
       </table></fieldset>
   </div><div class="col-lg-3"></div></div>
        </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>