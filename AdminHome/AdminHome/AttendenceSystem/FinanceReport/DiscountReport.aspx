﻿<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="DiscountReport.aspx.cs" Inherits="AdminHome.AttendenceSystem.FinanceReport.DiscountReport" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
   <div class="container" style="background-color:whitesmoke">
          <div class="panel-heading" style="background-color:skyblue">Discount List</div>
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
                                                            <asp:Button ID="Button1" runat="server" Text="print & preview" CssClass="btn btn-primary" />

                                                       </div>
       
        <div class="panel-heading" style="background-color:skyblue;margin-top:10px">Discount Summary</div>
     <div style="margin-left:300px;margin-top:10px">Shift
                             <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control">
                                 <asp:ListItem>..Select...</asp:ListItem>
                                 <asp:ListItem>Morning</asp:ListItem>
                                 <asp:ListItem>Day</asp:ListItem>
                                  <asp:ListItem>Evening</asp:ListItem> 
                             </asp:DropDownList>
                         </div>
                         <div style="margin-left:300px;margin-top:10px">Batch
                             <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control">
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
                                                          <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" >
                                                          <asp:ListItem>..Select...</asp:ListItem>
                                                          </asp:DropDownList></div>
                                                      
                                                      <div class="a3" style="margin-left:300px;margin-top:10px"> Category
                                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                                                            <asp:ListItem>All</asp:ListItem></asp:DropDownList></div>
     <div class="a3" style="margin-left:300px;margin-top:10px"> From Date
         <asp:TextBox runat="server" ID="datefrom" CssClass="form-control"></asp:TextBox>
         </div>
    <div class="a3" style="margin-left:300px;margin-top:10px"> To Date
         <asp:TextBox runat="server" ID="dateto" CssClass="form-control"></asp:TextBox>
         </div>
                                                       
                                                       <div class="btncat" style="margin-left:370px;margin-top:10px">
                                                            <asp:Button ID="Button2" runat="server" Text="print & preview" CssClass="btn btn-primary" />

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
      <script>
          $(document).ready(function () {
              $("#datefrom").datepicker();
              $("#dateto").datepicker();
          });
  </script>
</body>
</html></asp:Content>
