<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="FeeCollectionDetails.aspx.cs" Inherits="AdminHome.AttendenceSystem.FinanceReport.FeeCollectionDetails" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
    <div class="container" style="background-color:whitesmoke;height:450px">
    <div class="col-lg-12">       
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home"> Collection Details</a></li>
                <li><a data-toggle="tab" href="#menu1">Due Lists</a></li>               
             </ul>               
                    
         <div class="tab-content">
                     <div id="home" class="tab-pane fade in active">
                          <div class="panel-heading" style="background-color:skyblue;margin-top:10px">Fees Collection Details</div>
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
                        <div class="a3" style="margin-left:300px;margin-top:10px">Group
                                                         <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                                         <asp:ListItem>..Select...</asp:ListItem></asp:DropDownList></div>
                         <div class="a3" style="margin-left:300px;margin-top:10px">Section
                                                          <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" >
                                                          <asp:ListItem>..Select...</asp:ListItem>
                                                          </asp:DropDownList></div>
                                                       <div class="a3" style="margin-left:300px;margin-top:10px">From 
                                                           <asp:TextBox runat="server" ID="datepicker" CssClass="form-control"></asp:TextBox>                                                
                                                       </div>
                                                       <div class="a3" style="margin-left:300px;margin-top:10px">To
                                                           <asp:TextBox runat="server" ID="datepicker1" CssClass="form-control"></asp:TextBox></div>
                                                      <div class="a3" style="margin-left:300px;margin-top:10px">	Category
                                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                                                            <asp:ListItem>All</asp:ListItem></asp:DropDownList></div>
                                                       <div class="a3" style="margin-left:370px;margin-top:10px">
                                                            <asp:CheckBox runat="server" ID="chkbox" />Is Today Collection</div>   
                                                       <div class="btncat" style="margin-left:540px;margin-top:-20px">
                                                            <asp:Button ID="Button1" runat="server" Text="Preview & Print" CssClass="btn btn-primary" />

                                                       </div></div>
                                                              
                                             
                              
        
         <div id="menu1" class="tab-pane fade">
           <div class="panel-heading" style="background-color:skyblue;margin-top:10px">Due List</div>
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
                        <div class="a3" style="margin-left:300px;margin-top:10px">Group
                                                         <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                                                         <asp:ListItem>..Select...</asp:ListItem></asp:DropDownList></div>
                         <div class="a3" style="margin-left:300px;margin-top:10px">Section
                                                          <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control" >
                                                          <asp:ListItem>..Select...</asp:ListItem>
                                                          </asp:DropDownList></div>
                                                       
                                                       
                                                      <div class="a3" style="margin-left:300px;margin-top:10px">	Category
                                                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control">
                                                            <asp:ListItem>All</asp:ListItem></asp:DropDownList></div>
                                                       <div class="a3" style="margin-left:370px;margin-top:10px">
                                                            <asp:CheckBox runat="server" ID="CheckBox1" />Is Today Collection</div>   
                                                       <div class="btncat" style="margin-left:540px;margin-top:-20px">
                                                            <asp:Button ID="Button2" runat="server" Text="Preview & Print" CssClass="btn btn-primary" />

                                                       </div>
             </div>

</div>   </div>
                                    
    </form>
      <script>
          $(document).ready(function () {
              $("#datepicker").datepicker();
              $("#datepicker1").datepicker();
          });
  </script>
    <style>
        .form-control {
            display: block;
            width: 41%;
            margin-left: 71px;
            margin-top: -21px;
            height: 34px;
        }
       
    </style>
</body>
</html></asp:Content>
