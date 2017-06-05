<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentAccountList.aspx.cs" Inherits="AdminHome.ControlPanelDiv.StudentAccountList" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body style="background-color:whitesmoke;">
    <%--<form id="form1" runat="server">--%>
        <%-- CommandArgument='<%# Eval("username") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" --%>
    <div class="container">
   
    <div class="row">
        
        <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
        <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="FormNo"
              PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging1" >
               <Columns>
                   <asp:BoundField HeaderText="Name" DataField="StName" />
                   <asp:BoundField HeaderText="User name" DataField="username" />
                   <asp:BoundField HeaderText="Password" DataField="password" />
                   <asp:BoundField HeaderText="Created On" DataField="createddate" />
                   <asp:BoundField HeaderText="Status" DataField="activestatus" />
                   <asp:TemplateField HeaderText="Edit">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("username")+"_"+Eval("password")+"_"+Eval("FormNo") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command1"  >
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
    <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
</body>
</html>
</asp:Content>