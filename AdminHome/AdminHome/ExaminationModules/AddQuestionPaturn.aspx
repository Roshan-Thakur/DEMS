<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AddQuestionPaturn.aspx.cs" Inherits="AdminHome.ExaminationModules.AddQuestionPaturn" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
       
    <div class="container">
        <div class="col-4" style="width:250px;margin-bottom:30px;">
             <asp:Table runat="server" ID="tb1" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>Question Pattern:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpattern" CssClass="form-control"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
            <asp:HiddenField runat="server" ID="hdn" />
            <asp:Button runat="server" ID="btnupdate" Text="Update" CssClass="btn btn-primary" OnClick="btnupdate_Click" />
        </div>
        <div class="col-8">
           <asp:Label runat="server" ID="lblinfo" CssClass="label" Font-Size="Medium"></asp:Label>
           <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No." DataField="Id" />
                   <asp:BoundField HeaderText="Pattern." DataField="patern"/>
                   <asp:TemplateField HeaderText="Update">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnlupdate" ForeColor="Red" OnCommand="lnlupdate_Command" CommandName="ViewDetails" CommandArgument='<%# Eval("Id")+","+Eval("patern") %>' >
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