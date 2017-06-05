<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="FineReport.aspx.cs" Inherits="AdminHome.AttendenceSystem.FinanceReport.FineReport" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
    <div class="container" style="background-color:whitesmoke">
          <div class="panel-heading" style="background-color:skyblue">Fine Collection Panel</div>
          <div style="margin-left:300px;margin-top:10px">Shift
                             <asp:DropDownList runat="server" ID="displayShift" CssClass="form-control">
                                 <asp:ListItem>..Select...</asp:ListItem>
                                 <asp:ListItem>Morning</asp:ListItem>
                                 <asp:ListItem>Day</asp:ListItem>
                                  <asp:ListItem>Evening</asp:ListItem> 
                             </asp:DropDownList>
                         </div>
                         <div style="margin-left:300px;margin-top:10px">Batch
                             <asp:DropDownList runat="server" ID="displayBatch" CssClass="form-control">
                                <asp:ListItem>..Select...</asp:ListItem>
                                                   <asp:ListItem>Six2015</asp:ListItem>
                                                   <asp:ListItem>Nine2016</asp:ListItem>
                                                   <asp:ListItem>HSC2016</asp:ListItem>
                                                   <asp:ListItem>Ten2016</asp:ListItem>
                                                   <asp:ListItem>Degree2017</asp:ListItem>
                                                   <asp:ListItem>Degree2016</asp:ListItem>
                                                   <asp:ListItem>Honurs2016</asp:ListItem>
                             </asp:DropDownList>
                         </div>
                      
                         <div class="a3" style="margin-left:300px;margin-top:10px">Section
                                                          <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" >
                                                          <asp:ListItem>..Select...</asp:ListItem>
                                                          </asp:DropDownList></div>
                                                      
                                                      <div class="a3" style="margin-left:300px;margin-top:10px">Roll
                                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                                                            <asp:ListItem>All</asp:ListItem></asp:DropDownList></div>
                                                       
                                                       <div class="btncat" style="margin-left:370px;margin-top:10px">
                                                            <asp:Button ID="Button1" runat="server" Text="Fine Lists" CssClass="btn btn-primary" />

                                                       </div>
        <div class="btncat" style="margin-left:370px;margin-top:10px">
                                                            <asp:Button ID="Button2" runat="server" Text="Fine Collection Summary" CssClass="btn btn-primary" />

                                                       </div>
       </div>        
    </form>
      <style>
        .form-control {
            display: block;
            width: 37%;
            height: 34px;
            padding: 6px 12px;
            margin-left: 67px;
    margin-top: -21px;
            font-size: 14px;
        }
    </style>
</body>
</html></asp:Content>

