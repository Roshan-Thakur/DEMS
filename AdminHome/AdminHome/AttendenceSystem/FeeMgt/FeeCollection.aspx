<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="FeeCollection.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.FeeCollection" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
     <div class="container" style="background-color:whitesmoke;margin-top:50px;">
     <div class="row">
        <div class="col-md-12">          	
                        <div class="panel-heading" style="background-color:skyblue">Fees Collection Panel</div>
                       <div style="margin-top:20px;margin-left:150px">Batch
            <div style="margin-left:50px;margin-top:-20px">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="20%">
                <asp:ListItem>Six2015</asp:ListItem>
                <asp:ListItem>Nine2016</asp:ListItem>
                <asp:ListItem>HSC2016</asp:ListItem>
                <asp:ListItem>Ten2016</asp:ListItem>
                <asp:ListItem>Degree2017</asp:ListItem>
                <asp:ListItem>Degree2016</asp:ListItem>
                <asp:ListItem>Honurs2016</asp:ListItem>
            </asp:DropDownList></div></div>
		  <div style="margin-top:-30px;margin-left:400px">Fees Category 
            <div style="margin-left:100px;margin-top:-25px">
	<asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="20%">
        <asp:ListItem>...Select...</asp:ListItem>
	</asp:DropDownList></div></div>
            <div style="margin-left:650px;margin-top:-33px">
                <asp:Button runat="server" Text="Search" ID="btnSearch" CssClass="btn btn-primary" />
            </div>                                              
         </div>
            </div>           
                <div class="panel-heading" style="background-color:skyblue;margin-top:10px">Searching Result</div>
                 <div style="margin-top:20px;margin-left:150px">Shift
            <div style="margin-left:50px;margin-top:-20px">
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Width="15%">
                <asp:ListItem>Six2015</asp:ListItem>
                <asp:ListItem>Nine2016</asp:ListItem>
                <asp:ListItem>HSC2016</asp:ListItem>
                <asp:ListItem>Ten2016</asp:ListItem>
                <asp:ListItem>Degree2017</asp:ListItem>
                <asp:ListItem>Degree2016</asp:ListItem>
                <asp:ListItem>Honurs2016</asp:ListItem>
            </asp:DropDownList></div></div>
		  <div style="margin-top:-30px;margin-left:400px">Group
            <div style="margin-left:100px;margin-top:-25px">
	<asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Width="20%">
        <asp:ListItem>...Select...</asp:ListItem>
	</asp:DropDownList></div></div>
            <div style="margin-top:-30px;margin-left:650px">Section
            <div style="margin-left:100px;margin-top:-25px">
	<asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" Width="30%">
        <asp:ListItem>...Select...</asp:ListItem>
	</asp:DropDownList></div></div>
             <div style="margin-top:20px; margin-left:100px">Roll
            <div style="margin-left:100px;margin-top:-25px">
	<asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control" Width="15%">
        <asp:ListItem>...Select...</asp:ListItem>
	</asp:DropDownList></div></div>
            <div style="margin-left:450px;margin-top:-30px">
                <asp:Button runat="server" Text="Search" ID="Button1" CssClass="btn btn-primary" />
            </div>
             <div style="margin-left:550px;margin-top:-33px">
                <asp:Button runat="server" Text="Play Now" ID="Button2" CssClass="btn btn-primary" />
            </div>                                                                                          
</div>                       
    </form>
</body>
</html>
</asp:Content>