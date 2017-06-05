<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="EmpDetailsReport.aspx.cs" Inherits="AdminHome.TeacherDesboard.EmpDetailsReport" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <div class="row" style="margin-bottom:10px;">
            <div class="row" style="text-align:center;font-weight:bold;margin-bottom:10px;">
                <h4>Report Employee/Teacher Details</h4>
            </div>
            <div class="row">
             <div class="col-lg-4">
                <h1>Search Details By Blood Group</h1><br />
                <asp:DropDownList runat="server" ID="ddlbld" CssClass="form-control" Width="130px"></asp:DropDownList><br />
                <asp:Button runat="server" ID="btnsearch" CssClass="btn btn-primary" Text="Search Blood" OnClick="btnsearch_Click" />
            </div>
            <div class="col-lg-4">
                <h1>Search Details By Type of Staff</h1><br />
                <asp:DropDownList runat="server" ID="ddlstaff" CssClass="form-control" Width="130px">
                 <asp:ListItem Text="--Select--"></asp:ListItem><asp:ListItem Text="Employee"></asp:ListItem><asp:ListItem Text="Staff"></asp:ListItem>
                </asp:DropDownList><br />
                <asp:Button runat="server" ID="btnstaff" CssClass="btn btn-primary"  Text="Search Staff/Emp" OnClick="btnstaff_Click" />
            </div>
            <div class="col-lg-4">
                <h1>Search Details By Type of Department</h1><br />
                <asp:DropDownList runat="server" ID="ddldept" CssClass="form-control" Width="130px"></asp:DropDownList><br />
                <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary"  Text="Search Deparment" OnClick="Button1_Click" />
            </div>
            </div>
            
        </div>
             <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="EId"
              PageSize="15" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="EId" />
                   <asp:BoundField HeaderText="CardNo" DataField="cardno" />
                   <asp:BoundField HeaderText="Name" DataField="name" />
                   <asp:BoundField HeaderText="DOB" DataField="dob" />
                   <asp:BoundField HeaderText="Email" DataField="email" />
                   <asp:BoundField HeaderText="Department" DataField="department" />
                   <asp:TemplateField HeaderText="Edit">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("EId") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" >
                           <span class="glyphicon glyphicon-eye-open">ProfileDetails</span>
                           </asp:LinkButton>
                   </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
    </div>
    <%--</form>--%>
     <script type="text/javascript">
         $(function () {
             $('[id*=gvTerritories]').footable();
         });
    </script>
</body>
</html>
</asp:Content>