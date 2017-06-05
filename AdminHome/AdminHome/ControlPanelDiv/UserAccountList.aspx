<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="UserAccountList.aspx.cs" Inherits="AdminHome.ControlPanelDiv.UserAccountList" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body style="background-color:whitesmoke;">
    <%--<form id="form1" runat="server">--%>
    <div class="row">
    <%--<div class="container" style="margin-top:50px; height:50px; margin-bottom:50px; background-color:skyblue;"><span> Student Account List...</span></div>--%>
    <div class="container" >
        
        <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
        <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="EId"
              PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Name" DataField="name" />
                   <asp:BoundField HeaderText="User name" DataField="username" />
                   <asp:BoundField HeaderText="Password" DataField="password" />
                   <asp:BoundField HeaderText="Created On" DataField="createddate" />
                   <asp:BoundField HeaderText="Status" DataField="activestatus" />
                   <asp:TemplateField HeaderText="Edit">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" OnCommand="lnkbtnupdate_Command" CommandName="ViewDetails" CommandArgument='<%# Eval("username")+"__"+Eval("password")+"_"+Eval("EId") %>' >
                           <span class="glyphicon glyphicon-pencil">Edit</span>
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
    </div></div>
    <%--</form>--%>
</body>
</html>
</asp:Content>