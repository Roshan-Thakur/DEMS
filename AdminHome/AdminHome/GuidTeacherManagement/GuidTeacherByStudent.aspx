<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="GuidTeacherByStudent.aspx.cs" Inherits="AdminHome.GuidTeacherManagement.GuidTeacherByStudent" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
       
    <div class="container">
        <div class="col-3" style="width:250px;">
        <asp:Table runat="server" ID="tb1">
            <asp:TableRow>
                <asp:TableCell>Batch:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" Width="160px" ID="ddlbatch" CssClass="form-control"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>TeacherId:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" Width="160px" ID="ddlteacherid" CssClass="form-control"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Button runat="server" ID="btnfind" Text="Find" CssClass="btn btn-primary" OnClick="btnfind_Click" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Bold="true"></asp:Label>
     </div>
        <div class="col-8" style="margin-top:20px;">
            <asp:Label runat="server" ID="lblno" CssClass="label" Font-Size="Medium"></asp:Label>
            <div style="height:480px;min-width:220px; overflow:auto">
                 <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="FormNo"  ShowFooter="true"  OnRowDataBound="gvTerritories_RowDataBound" >
               <Columns>
                   <%--FormNoSection shift batch assignteacherId--%>
                   <asp:BoundField HeaderText="StudentID" DataField="FormNo" />
                   <asp:BoundField HeaderText="Section." DataField="Section"/>
                   <asp:BoundField HeaderText="Shift." DataField="Shift" />
                   <asp:BoundField HeaderText="Batch" DataField="Batch" />
                   <asp:BoundField HeaderText="TeacherID" DataField="assignteacherId" />
                   <asp:TemplateField HeaderText="Delete">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="btndelete" CommandName="ViewDetails" OnCommand="btndelete_Command" ForeColor="Red" CommandArgument='<%# Eval("FormNo") %>' ><span class="glyphicon glyphicon-trash">Delete</span></asp:LinkButton>
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