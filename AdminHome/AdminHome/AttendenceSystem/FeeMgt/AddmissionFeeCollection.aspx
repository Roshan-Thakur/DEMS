<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AddmissionFeeCollection.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.AddmissionFeeCollection" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
    <div class="container" style="background-color:whitesmoke">
    <div class="row">
        <div class="col-md-12">
            
          
	
                        <div class="panel-heading" style="background-color:skyblue">Admission Fees Collection Panel</div>
                       <div style="margin-top:20px;margin-left:150px">Admission No.
            <div style="margin-left:100px;margin-top:-30px">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="15%">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                
            </asp:DropDownList></div></div>
		  <div style="margin-top:-30px;margin-left:400px">Class Name
            <div style="margin-left:100px;margin-top:-25px">
	<asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="20%">
        <asp:ListItem>...Select...</asp:ListItem>
	</asp:DropDownList></div></div>
            <div style="margin-top:-30px;margin-left:650px">Fees Category 
            <div style="margin-left:100px;margin-top:-25px">
	<asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Width="30%">
        <asp:ListItem>...Select...</asp:ListItem>
	</asp:DropDownList></div></div>
            <div style="margin-left:880px;margin-top:-33px">
                <asp:Button runat="server" Text="Search" ID="btnSearch" CssClass="btn btn-primary" />
            </div>                                              
         </div>
            </div>          
                <div class="panel-heading" style="background-color:skyblue;margin-top:10px">Admission Particular Category List</div>               
               
    </div>
        </div>
            </div>
    </form>
</body>
</html>
</asp:Content>