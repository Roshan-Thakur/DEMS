<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AddSubject.aspx.cs" Inherits="AdminHome.ExaminationModules.AddSubject" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
         <div class="col-4" style="width:250px;margin-bottom:20px;">

             <asp:Table runat="server" ID="tb3" CssClass="table">
                 <asp:TableRow>
                 <asp:TableCell>Subject:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtsub" CssClass="form-control"></asp:TextBox> </asp:TableCell>
                 </asp:TableRow>
            <asp:TableRow> <asp:TableCell><asp:Button runat="server" ID="btnsubadd" CssClass="btn btn-primary" Text="Search" OnClick="btnsubadd_Click"  /></asp:TableCell></asp:TableRow>
        </asp:Table>
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Bold="true"></asp:Label>
        </div>
       <div class="col-8">
            <asp:Label runat="server" ID="lblno" CssClass="label" Font-Size="Medium"></asp:Label>
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" PageSize="5" AllowPaging="true"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="StudentID" DataField="Id" />
                   <asp:BoundField HeaderText="Subject." DataField="subject"/>
                   <asp:TemplateField HeaderText="Delete">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnldelete" ForeColor="Red" CommandArgument='<%# Eval("Id") %>' CommandName="ViewDetails" OnCommand="lnldelete_Command">
                               <span class="glyphicon glyphicon-trash">Delete</span>
                           </asp:LinkButton>
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView></div>
       
    </div>
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