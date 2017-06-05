<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AddExamType.aspx.cs" Inherits="AdminHome.ExaminationModules.AddExamType" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
   
    <div class="container">
        <div class="col-4" style="width:250px; margin-bottom:30px;">
            <asp:Table runat="server" ID="tb1" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>Exam Name:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtexamtype" CssClass="form-control"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" ID="btnsubmit" Text="Submit" OnClick="btnsubmit_Click" CssClass="btn btn-primary" />
            <asp:HiddenField runat="server" ID="hdn" />
            <asp:Button runat="server" ID="btnupdate" Text="Update" OnClick="btnupdate_Click" CssClass="btn btn-primary" />
            <asp:Label runat="server" ID="lblinfo" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:Label>
        </div>
        <div class="col-8">
           
           <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="Id" />
                   <asp:BoundField HeaderText="Exam Name" DataField="examname"/>
                   <asp:TemplateField HeaderText="Update">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnkupdate" CommandName="ViewDetails" OnCommand="lnkupdate_Command" CommandArgument='<%# Eval("Id")+","+Eval("examname") %>' >
                               <span class="glyphicon glyphicon-pencil">Edit</span></asp:LinkButton>
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
        </div>
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